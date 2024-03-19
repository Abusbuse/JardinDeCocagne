<?php

namespace App\Controller;

use App\Service\AdhesionService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    #[Route('/user/profil', name: 'app_user_profile')]
    public function profil(Security $security, AdhesionService $adhesionService): Response
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $user = $security->getUser();
        $adhesions = $adhesionService->findAllActiveAdhesion($user->getAdherent());

        return $this->render('user/profile.html.twig', [
            'adhesions' => $adhesions,
        ]);
    }
}
