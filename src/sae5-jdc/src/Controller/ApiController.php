<?php

namespace App\Controller;

use Nyholm\Psr7\Factory\Psr17Factory;
use Symfony\Bridge\PsrHttpMessage\Factory\HttpFoundationFactory;
use Symfony\Bridge\PsrHttpMessage\Factory\PsrHttpFactory;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Tqdev\PhpCrudApi\Api;
use Tqdev\PhpCrudApi\Config\Config;

class ApiController extends AbstractController
{
    private ParameterBagInterface $params;

    public function __construct(ParameterBagInterface $params)
    {
        $this->params = $params;
    }

    #[Route('/api{params}', name: 'api_route', requirements: ['params' => '.+'])]
    public function index(Request $symfonyRequest): Response
    {
        // Convert the symfonyRequest to a psrRequest
        $psr17Factory = new Psr17Factory();
        $psrHttpFactory = new PsrHttpFactory($psr17Factory, $psr17Factory,
            $psr17Factory, $psr17Factory);
        $psrRequest = $psrHttpFactory->createRequest($symfonyRequest);

        // PHP-CRUD-API takes a psrRequest and generates a psrResponse
        $config = new Config([
            'username' => $this->params->get('db_user'),
            'password' => $this->params->get('db_password'),
            'database' => $this->params->get('db_name'),
            'basePath' => '/api',
        ]);
        $api = new Api($config);
        $psrResponse = $api->handle($psrRequest);

        // Convert the psrResponse to a symfonyResponse
        $httpFoundationFactory = new HttpFoundationFactory();
        $symfonyResponse = $httpFoundationFactory->createResponse($psrResponse);

        return $symfonyResponse;
    }
}
