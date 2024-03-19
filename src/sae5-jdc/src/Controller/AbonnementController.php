<?php

namespace App\Controller;

use App\Entity\Abonnement;
use App\Entity\TypeAdhesion;
use App\Form\AbonnementType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AbonnementController extends AbstractController
{
    #[Route('/abonnement/ajouter', name: 'app_abonnement_add')]
    #[Route('/abonnement/modifier/{abonnement}', name: 'app_abonnement_edit')]
    public function abonnementForm(Request $request, ManagerRegistry $doctrine, Abonnement $abonnement = null): Response
    {
        $entityManager = $doctrine->getManager();

        $form = $this->createForm(AbonnementType::class, $abonnement, ['entity_manager' => $entityManager]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Retrieve form data
            $abonnement = $form->getData();

            $entityManager->persist($abonnement);
            $entityManager->flush();

            // Redirect to the appropriate route
            // Replace 'app_home' with the route you want to redirect to
            return $this->redirectToRoute('app_home');
        }

        return $this->render('abonnement/abonnement_form.html.twig', [
            'form' => $form->createView(),
            'abonnement' => $abonnement,
        ]);
    }

    // Add other actions for your AbonnementController as needed
}

