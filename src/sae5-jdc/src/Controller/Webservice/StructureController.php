<?php

namespace App\Controller\Webservice;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class StructureController extends AbstractController
{
    #[Route('/webservice/structure', name: 'app_webservice_structure')]
    public function index(): Response
    {
        return $this->render('webservice/structure/index.html.twig', [
            'controller_name' => 'StructureController',
        ]);
    }
}
