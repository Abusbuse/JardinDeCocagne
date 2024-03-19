<?php

namespace App\Controller;

use App\Entity\Adhesion;
use App\Entity\Structure;
use App\Form\AdhesionType;
use App\Repository\AdhesionRepository;
use App\Service\AdhesionService;
use DateTime;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class StructureController extends AbstractController
{
    #[Route('/structure/list', name: 'app_structure_list')]
    public function structureList(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $structureRepository = $entityManager->getRepository(Structure::class);

        $structures = $structureRepository->findAll();

        $mapPoints = [];

        foreach ($structures as $structure) {
            $mapPoints[] = $structure->getPosition();
        }

        return $this->render('structure/structure_list.html.twig', [
            'structures' => $structures,
            'mapPoints' => $mapPoints,
        ]);
    }

    #[Route('/structure/informations/{structure}', name: 'app_structure_infos')]
    public function structureInformations(Security $security, AdhesionService $adhesionService, Structure $structure)
    {
        $user = $security->getUser();
        $estAdherent = false;
        if ($user) {
            $adherent = $user->getAdherent();
            $estAdherent = $adhesionService->isAdhesionActive($structure, $adherent);
        }

        return $this->render('structure/structure_informations.html.twig', [
            'structure' => $structure,
            'mapPoints' => [$structure->getPosition()],
            'estAdherent' => $estAdherent,
        ]);
    }

    #[Route('/structure/nouvelle', name: 'app_structure_add')]
    #[Route('/structure/modifier/{structure}', name: 'app_structure_edit')]
    public function structureForm(Request $request, ManagerRegistry $doctrine, Structure $structure = null): Response
    {
        $entityManager = $doctrine->getManager();

        $form = $this->createForm(\App\Form\StructureType::class, $structure, ['entity_manager' => $entityManager]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Récupère les données du formulaire
            $structure = $form->getData();

            $entityManager->persist($structure);
            $entityManager->flush();

            return $this->redirectToRoute('app_structure_infos', ['structure' => $structure->getId()]);
        }

        return $this->render('structure/structure_form.html.twig', [
            'structure' => $structure,
            'form' => $form->createView(),
        ]);
    }


    #[Route('/structure/adherer/{structure}', name: 'app_structure_adherer')]
    public function structureAdhesionForm(Security $security, Request $request, ManagerRegistry $doctrine, Structure $structure = null): Response
    {
        $entityManager = $doctrine->getManager();
        $user = $security->getUser();
        $adherent = $user->getAdherent();
        $adhesion = new Adhesion();

        $form = $this->createForm(AdhesionType::class, $adhesion, [
            'entity_manager' => $entityManager,
            'structure' => $structure,
        ]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Récupère les données du formulaire
            $adhesion = $form->getData();
            $adhesion->setAdherent($adherent);

            $dateDebut = new DateTime('now');
            $adhesion->setDateDebut($dateDebut);

            $dateFin = clone $dateDebut;
            $dateFin->modify("+120 years");
            $adhesion->setDateFin($dateFin);

            $structure->addAdhesion($adhesion);
            $adherent->addAdhesion($adhesion);

            $entityManager->persist($adhesion);
            $entityManager->flush();

            return $this->redirectToRoute('app_structure_infos', ['structure' => $structure->getId()]);
        }
        return $this->render('structure/structure_adhesion_form.html.twig', [
            'form' => $form->createView(),
            'structure' => $structure,
        ]);
    }


    #[Route('/structure/resilier/{structure}', name: 'app_structure_resilier')]
    public function structureResiliationForm(Security $security, AdhesionRepository $adhesionRepository, ManagerRegistry $doctrine, Structure $structure = null): Response
    {
        $entityManager = $doctrine->getManager();
        $user = $security->getUser();
        $adherent = $user->getAdherent();

        $adhesionActive = $adhesionRepository->findActiveAdhesion($structure, $adherent);

        if (!is_null($adhesionActive)) {
            $adhesionActive->setDateFin(new DateTime("now"));
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_structure_infos', ['structure' => $structure->getId()]);
    }


    #[Route('/structure/calendrier/{structure}', name: 'app_structure_calendrier')]
    public function structureCalendrier(Structure $structure): Response
    {
        return $this->render('structure/calendrier.html.twig', [
            'structure' => $structure,
        ]);
    }

    #[Route('/structure/abonnement/{structure}', name: 'app_abonnement_index')]
    public function structureAbonnement(Structure $structure): Response
    {
        return $this->render('structure/abonnement.html.twig', [
            'structure' => $structure,
        ]);
    }
}
