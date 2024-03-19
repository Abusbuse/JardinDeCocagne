<?php

namespace App\Entity;

use App\Repository\EmployeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EmployeRepository::class)]
class Employe
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToMany(mappedBy: 'employe', targetEntity: Tournee::class)]
    private Collection $tournees;

    #[ORM\ManyToOne(inversedBy: 'employes')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Structure $structure = null;

    #[ORM\OneToOne(mappedBy: 'employe', cascade: ['persist', 'remove'])]
    private ?Utilisateur $utilisateur = null;

    public function __construct()
    {
        $this->tournees = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Tournee>
     */
    public function getTournees(): Collection
    {
        return $this->tournees;
    }

    public function addTournee(Tournee $tournee): static
    {
        if (!$this->tournees->contains($tournee)) {
            $this->tournees->add($tournee);
            $tournee->setEmploye($this);
        }

        return $this;
    }

    public function removeTournee(Tournee $tournee): static
    {
        if ($this->tournees->removeElement($tournee)) {
            // set the owning side to null (unless already changed)
            if ($tournee->getEmploye() === $this) {
                $tournee->setEmploye(null);
            }
        }

        return $this;
    }

    public function getStructure(): ?Structure
    {
        return $this->structure;
    }

    public function setStructure(?Structure $structure): static
    {
        $this->structure = $structure;

        return $this;
    }

    public function getUtilisateur(): ?Utilisateur
    {
        return $this->utilisateur;
    }

    public function setUtilisateur(?Utilisateur $utilisateur): static
    {
        // unset the owning side of the relation if necessary
        if ($utilisateur === null && $this->utilisateur !== null) {
            $this->utilisateur->setEmploye(null);
        }

        // set the owning side of the relation if necessary
        if ($utilisateur !== null && $utilisateur->getEmploye() !== $this) {
            $utilisateur->setEmploye($this);
        }

        $this->utilisateur = $utilisateur;

        return $this;
    }
}
