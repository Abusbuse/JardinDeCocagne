<?php

namespace App\Entity;

use App\Repository\TourneeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TourneeRepository::class)]
class Tournee
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTimeInterface $date = null;

    #[ORM\ManyToOne(inversedBy: 'tournees')]
    private ?Employe $employe = null;

    #[ORM\OneToMany(mappedBy: 'tournee', targetEntity: TourneeDepot::class, orphanRemoval: true)]
    private Collection $depots;

    #[ORM\Column(type: Types::STRING, length: 255)]
    private ?string $etatLivraison = null;

    public function __construct()
    {
        $this->abonnements = new ArrayCollection();
        $this->depots = new ArrayCollection();
        $this->etatLivraison = 'En préparation';
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDate(): ?\DateTimeInterface
    {
        return $this->date;
    }

    public function setDate(\DateTimeInterface $date): static
    {
        $this->date = $date;

        return $this;
    }

    public function getEmploye(): ?Employe
    {
        return $this->employe;
    }

    public function setEmploye(?Employe $employe): static
    {
        $this->employe = $employe;

        return $this;
    }

    /**
     * @return Collection<int, TourneeDepot>
     */
    public function getDepots(): Collection
    {
        return $this->depots;
    }

    public function addDepot(TourneeDepot $depot): static
    {
        if (!$this->depots->contains($depot)) {
            $this->depots->add($depot);
            $depot->setTournee($this);
        }

        return $this;
    }

    public function removeDepot(TourneeDepot $depot): static
    {
        if ($this->depots->removeElement($depot)) {
            // set the owning side to null (unless already changed)
            if ($depot->getTournee() === $this) {
                $depot->setTournee(null);
            }
        }

        return $this;
    }

    public function getEtatLivraison(): ?string
    {
        return $this->etatLivraison;
    }

    public function setEtatLivraison(string $etatLivraison): static
    {
        $this->etatLivraison = $etatLivraison;

        return $this;
    }
}
