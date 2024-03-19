<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CalendrierController extends AbstractController
{
    #[Route('/webservice/calendrier', name: 'app_webservice_calendrier')]
    public function index(): Response
    {
        return $this->render('webservice/calendrier/index.html.twig', [
            'controller_name' => 'CalendrierController',
        ]);
    }
}
