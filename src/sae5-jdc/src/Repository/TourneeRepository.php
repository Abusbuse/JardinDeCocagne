<?php

namespace App\Repository;

use App\Entity\Tournee;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Tournee>
 *
 * @method Tournee|null find($id, $lockMode = null, $lockVersion = null)
 * @method Tournee|null findOneBy(array $criteria, array $orderBy = null)
 * @method Tournee[]    findAll()
 * @method Tournee[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TourneeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Tournee::class);
    }

//    /**
//     * @return Tournee[] Returns an array of Tournee objects
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

//    public function findOneBySomeField($value): ?Tournee
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
