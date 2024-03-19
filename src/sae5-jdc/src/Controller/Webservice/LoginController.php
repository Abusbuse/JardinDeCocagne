<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LoginController extends AbstractController
{
    #[Route('/webservice/login', name: 'app_webservice_login')]
    public function index(): Response
    {
        return $this->render('webservice/login/index.html.twig', [
            'controller_name' => 'LoginController',
        ]);
    }
}
