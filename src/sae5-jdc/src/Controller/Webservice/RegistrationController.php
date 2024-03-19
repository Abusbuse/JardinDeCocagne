<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RegistrationController extends AbstractController
{
    #[Route('/webservice/registration', name: 'app_webservice_registration')]
    public function index(): Response
    {
        return $this->render('webservice/registration/index.html.twig', [
            'controller_name' => 'RegistrationController',
        ]);
    }
}
