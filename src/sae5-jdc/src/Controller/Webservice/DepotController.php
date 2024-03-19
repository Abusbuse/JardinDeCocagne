<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DepotController extends AbstractController
{
    #[Route('/webservice/depot', name: 'app_webservice_depot')]
    public function index(): Response
    {
        return $this->render('webservice/depot/index.html.twig', [
            'controller_name' => 'DepotController',
        ]);
    }
}
