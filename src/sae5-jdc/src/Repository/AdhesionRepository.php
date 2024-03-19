<?php

namespace App\Repository;

use App\Entity\Adhesion;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Adhesion>
 *
 * @method Adhesion|null find($id, $lockMode = null, $lockVersion = null)
 * @method Adhesion|null findOneBy(array $criteria, array $orderBy = null)
 * @method Adhesion[]    findAll()
 * @method Adhesion[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdhesionRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Adhesion::class);
    }

    public function findActiveAdhesion($structure, $adherent): Adhesion|null
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.structure = :structure')
            ->andWhere('a.adherent = :adherent')
            ->andWhere(':datenow BETWEEN a.dateDebut AND a.dateFin')
            ->setParameter('structure', $structure)
            ->setParameter('adherent', $adherent)
            ->setParameter('datenow', new \DateTime("now"))
            ->getQuery()
            ->getOneOrNullResult();
    }

    public function findAllActiveAdhesion($adherent): Adhesion|array|null
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.adherent = :adherent')
            ->andWhere(':datenow BETWEEN a.dateDebut AND a.dateFin')
            ->setParameter('adherent', $adherent)
            ->setParameter('datenow', new \DateTime("now"))
            ->getQuery()
            ->getResult();
    }
}
