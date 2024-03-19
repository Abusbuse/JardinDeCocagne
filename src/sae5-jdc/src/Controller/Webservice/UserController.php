<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    #[Route('/webservice/user', name: 'app_webservice_user')]
    public function index(): Response
    {
        return $this->render('webservice/user/index.html.twig', [
            'controller_name' => 'UserController',
        ]);
    }
}
