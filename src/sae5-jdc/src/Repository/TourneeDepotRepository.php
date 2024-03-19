<?php

namespace App\Repository;

use App\Entity\TourneeDepot;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<TourneeDepot>
 *
 * @method TourneeDepot|null find($id, $lockMode = null, $lockVersion = null)
 * @method TourneeDepot|null findOneBy(array $criteria, array $orderBy = null)
 * @method TourneeDepot[]    findAll()
 * @method TourneeDepot[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TourneeDepotRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, TourneeDepot::class);
    }

//    /**
//     * @return TourneeDepot[] Returns an array of TourneeDepot objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('t.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?TourneeDepot
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
