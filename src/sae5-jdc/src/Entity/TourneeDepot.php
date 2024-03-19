<?php

namespace App\Entity;

use App\Repository\TourneeDepotRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TourneeDepotRepository::class)]
class TourneeDepot
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $ordrePassage = null;

    #[ORM\ManyToOne(inversedBy: 'depots')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Tournee $tournee = null;

    #[ORM\ManyToOne(inversedBy: 'tourneeDepots')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Depot $depot = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getOrdrePassage(): ?int
    {
        return $this->ordrePassage;
    }

    public function setOrdrePassage(int $ordrePassage): static
    {
        $this->ordrePassage = $ordrePassage;

        return $this;
    }

    public function getTournee(): ?Tournee
    {
        return $this->tournee;
    }

    public function setTournee(?Tournee $tournee): static
    {
        $this->tournee = $tournee;

        return $this;
    }

    public function getDepot(): ?Depot
    {
        return $this->depot;
    }

    public function setDepot(?Depot $depot): static
    {
        $this->depot = $depot;

        return $this;
    }
}
