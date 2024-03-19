<?php

namespace App\Entity;

use App\Repository\StructureRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: StructureRepository::class)]
class Structure
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(length: 255)]
    private ?string $ville = null;

    #[ORM\Column(length: 255)]
    private ?string $raisonSociale = null;

    #[ORM\Column(length: 255)]
    private ?string $siegeSocial = null;

    #[ORM\Column(length: 255)]
    private ?string $adresseGestion = null;

    #[ORM\Column(length: 255)]
    private ?string $coordCommerciales = null;

    #[ORM\Column(length: 255)]
    private ?string $numIdentification = null;

    #[ORM\OneToMany(mappedBy: 'structure', targetEntity: Employe::class)]
    private Collection $employes;

    #[ORM\OneToMany(mappedBy: 'structure', targetEntity: TypeAdhesion::class, orphanRemoval: true)]
    private Collection $typeAdhesion;

    #[ORM\OneToMany(mappedBy: 'structure', targetEntity: Adhesion::class, orphanRemoval: true)]
    private Collection $adhesions;

    #[ORM\OneToMany(mappedBy: 'structure', targetEntity: Frequence::class, orphanRemoval: true)]
    private Collection $frequencesPaniers;

    #[ORM\OneToMany(mappedBy: 'structure', targetEntity: Calendrier::class)]
    private Collection $calendrier;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?GPSPoint $position = null;

    public function __construct()
    {
        $this->calendrier = new ArrayCollection();
        $this->employes = new ArrayCollection();
        $this->typeAdhesion = new ArrayCollection();
        $this->adhesions = new ArrayCollection();
        $this->frequencesPaniers = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getVille(): ?string
    {
        return $this->ville;
    }

    public function setVille(string $ville): static
    {
        $this->ville = $ville;

        return $this;
    }

    public function getRaisonSociale(): ?string
    {
        return $this->raisonSociale;
    }

    public function setRaisonSociale(string $raisonSociale): static
    {
        $this->raisonSociale = $raisonSociale;

        return $this;
    }

    public function getSiegeSocial(): ?string
    {
        return $this->siegeSocial;
    }

    public function setSiegeSocial(string $siegeSocial): static
    {
        $this->siegeSocial = $siegeSocial;

        return $this;
    }

    public function getAdresseGestion(): ?string
    {
        return $this->adresseGestion;
    }

    public function setAdresseGestion(string $adresseGestion): static
    {
        $this->adresseGestion = $adresseGestion;

        return $this;
    }

    public function getCoordCommerciales(): ?string
    {
        return $this->coordCommerciales;
    }

    public function setCoordCommerciales(string $coordCommerciales): static
    {
        $this->coordCommerciales = $coordCommerciales;

        return $this;
    }

    public function getNumIdentification(): ?string
    {
        return $this->numIdentification;
    }

    public function setNumIdentification(string $numIdentification): static
    {
        $this->numIdentification = $numIdentification;

        return $this;
    }

    /**
     * @return Collection<int, Employe>
     */
    public function getEmployes(): Collection
    {
        return $this->employes;
    }

    public function addEmploye(Employe $employe): static
    {
        if (!$this->employes->contains($employe)) {
            $this->employes->add($employe);
            $employe->setStructure($this);
        }

        return $this;
    }

    public function removeEmploye(Employe $employe): static
    {
        if ($this->employes->removeElement($employe)) {
            // set the owning side to null (unless already changed)
            if ($employe->getStructure() === $this) {
                $employe->setStructure(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, TypeAdhesion>
     */
    public function getTypeAdhesion(): Collection
    {
        return $this->typeAdhesion;
    }

    public function addTypeAdhesion(TypeAdhesion $typeAdhesion): static
    {
        if (!$this->typeAdhesion->contains($typeAdhesion)) {
            $this->typeAdhesion->add($typeAdhesion);
            $typeAdhesion->setStructure($this);
        }

        return $this;
    }

    public function removeTypeAdhesion(TypeAdhesion $typeAdhesion): static
    {
        if ($this->typeAdhesion->removeElement($typeAdhesion)) {
            // set the owning side to null (unless already changed)
            if ($typeAdhesion->getStructure() === $this) {
                $typeAdhesion->setStructure(null);
            }
        }

        return $this;
    }

    public function addAdhesion(Adhesion $adhesion): static
    {
        if (!$this->adhesions->contains($adhesion)) {
            $this->adhesions->add($adhesion);
            $adhesion->setStructure($this);
        }

        return $this;
    }

    public function removeAdhesion(Adhesion $adhesion): static
    {
        if ($this->adhesions->removeElement($adhesion)) {
            // set the owning side to null (unless already changed)
            if ($adhesion->getStructure() === $this) {
                $adhesion->setStructure(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Frequence>
     */
    public function getFrequencesPaniers(): Collection
    {
        return $this->frequencesPaniers;
    }

    public function addFrequencespanier(Frequence $frequencespanier): static
    {
        if (!$this->frequencesPaniers->contains($frequencespanier)) {
            $this->frequencesPaniers->add($frequencespanier);
            $frequencespanier->setStructure($this);
        }

        return $this;
    }

    public function removeFrequencespanier(Frequence $frequencespanier): static
    {
        if ($this->frequencesPaniers->removeElement($frequencespanier)) {
            // set the owning side to null (unless already changed)
            if ($frequencespanier->getStructure() === $this) {
                $frequencespanier->setStructure(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Calendrier>
     */
    public function getCalendrier(): Collection
    {
        return $this->calendrier;
    }

    public function addCalendrier(Calendrier $calendrier): static
    {
        if (!$this->calendrier->contains($calendrier)) {
            $this->calendrier->add($calendrier);
            $calendrier->setStructure($this);
        }

        return $this;
    }

    public function removeCalendrier(Calendrier $calendrier): static
    {
        if ($this->calendrier->removeElement($calendrier)) {
            // set the owning side to null (unless already changed)
            if ($calendrier->getStructure() === $this) {
                $calendrier->setStructure(null);
            }
        }

        return $this;
    }

    public function getPosition(): ?GPSPoint
    {
        return $this->position;
    }

    public function setPosition(?GPSPoint $position): static
    {
        $this->position = $position;

        return $this;
    }

    public function __toString()
    {
        return $this->nom;
    }

    /**
     * @return Collection<int, Adhesion>
     */
    public function getAdhesions(): Collection
    {
        return $this->adhesions;
    }
}
