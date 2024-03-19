<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AbonnementController extends AbstractController
{
    #[Route('/webservice/abonnement', name: 'app_webservice_abonnement')]
    public function index(): Response
    {
        return $this->render('webservice/abonnement/index.html.twig', [
            'controller_name' => 'AbonnementController',
        ]);
    }
}
