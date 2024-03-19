<?php

namespace App\Repository;

use App\Entity\GPSPoint;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<GPSPoint>
 *
 * @method GPSPoint|null find($id, $lockMode = null, $lockVersion = null)
 * @method GPSPoint|null findOneBy(array $criteria, array $orderBy = null)
 * @method GPSPoint[]    findAll()
 * @method GPSPoint[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class GPSPointRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, GPSPoint::class);
    }

//    /**
//     * @return GPSPoint[] Returns an array of GPSPoint objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('g')
//            ->andWhere('g.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('g.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?GPSPoint
//    {
//        return $this->createQueryBuilder('g')
//            ->andWhere('g.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
