<?php

namespace App\Service;

use App\Entity\Adherent;
use App\Entity\Adhesion;
use App\Entity\Structure;
use Doctrine\Persistence\ManagerRegistry;

class AdhesionService
{
    private ManagerRegistry $manager;

    public function __construct(ManagerRegistry $manager)
    {
        $this->manager = $manager;
    }

    public function isAdhesionActive(Structure $structure, Adherent|null $adherent): bool
    {
        if(is_null($adherent)) {
            return false;
        }
        $adhesionRepository = $this->manager->getRepository(Adhesion::class);

        $activeAdhesion = $adhesionRepository->findActiveAdhesion($structure, $adherent);

        if (is_null($activeAdhesion)) {
            return false;
        }
        return true;
    }

    public function findAllActiveAdhesion(Adherent|null $adherent): Adhesion|array|null
    {
        if(is_null($adherent)) {
            return [];
        }
        $adhesionRepository = $this->manager->getRepository(Adhesion::class);

        return $adhesionRepository->findAllActiveAdhesion($adherent);
    }
}