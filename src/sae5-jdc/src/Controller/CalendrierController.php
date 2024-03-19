<?php

namespace App\Controller;

use App\Entity\Calendrier;
use App\Entity\Depot;
use App\Entity\Structure;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bridge\Doctrine\Attribute\MapEntity;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CalendrierController extends AbstractController
{
    #[Route('/calendrier/structure/ajouter/{id}', name: 'app_calendrier_structure_add')]
    #[Route('/calendrier/structure/modifier/{id}/{calendrier}', name: 'app_calendrier_structure_edit')]
    public function structurePlageForm(Request   $request, ManagerRegistry $doctrine, Structure $structure,
                                       #[MapEntity(id: 'calendrier')] Calendrier $calendrier = null): Response
    {
        $entityManager = $doctrine->getManager();

        $form = $this->createForm(\App\Form\CalendrierType::class, $calendrier, ['entity_manager' => $entityManager]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Récupère les données du formulaire
            $calendrier = $form->getData();

            $calendrier->setStructure($structure);

            $entityManager->persist($calendrier);
            $entityManager->flush();

            return $this->redirectToRoute("app_structure_calendrier", ['structure' => $structure->getId()]);
        }
        return $this->render("calendrier/calendrier_form.html.twig", [
            'form' => $form,
            'structure' => $structure,
            'calendrier' => $calendrier,
        ]);
    }


    #[Route('/calendrier/depot/ajouter/{id}', name: 'app_calendrier_depot_add')]
    #[Route('/calendrier/depot/modifier/{id}/{calendrier]', name: 'app_calendrier_depot_edit')]
    public function depotPlageForm(Request $request, ManagerRegistry $doctrine, Depot $depot, Calendrier $calendrier = null): Response
    {
        $entityManager = $doctrine->getManager();

        $form = $this->createForm(\App\Form\CalendrierType::class, $calendrier, ['entity_manager' => $entityManager]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Récupère les données du formulaire
            $calendrier = $form->getData();

            $calendrier->setDepot($depot);

            $entityManager->persist($calendrier);
            $entityManager->flush();

            return $this->redirectToRoute("app_depot_calendrier", ['depot' => $depot->getId()]);
        }
        return $this->render("calendrier/calendrier_form.html.twig", [
            'form' => $form,
            'depot' => $depot,
            'calendrier' => $calendrier,
        ]);
    }
}
