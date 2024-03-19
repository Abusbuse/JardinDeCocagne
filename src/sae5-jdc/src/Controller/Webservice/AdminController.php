<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminController extends AbstractController
{
    #[Route('/webservice/admin', name: 'app_webservice_admin')]
    public function index(): Response
    {
        return $this->render('webservice/admin/index.html.twig', [
            'controller_name' => 'AdminController',
        ]);
    }
}
