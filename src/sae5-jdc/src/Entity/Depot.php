<?php

namespace App\Entity;

use App\Repository\DepotRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: DepotRepository::class)]
class Depot
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(length: 255)]
    private ?string $adresse = null;

    #[ORM\Column(length: 255)]
    private ?string $telephone = null;

    #[ORM\OneToMany(mappedBy: 'depot', targetEntity: TourneeDepot::class, orphanRemoval: true)]
    private Collection $tourneeDepots;

    #[ORM\ManyToMany(targetEntity: Calendrier::class)]
    private Collection $calendrier;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?GPSPoint $position = null;

    public function __construct()
    {
        $this->plagesLivraison = new ArrayCollection();
        $this->tourneeDepots = new ArrayCollection();
        $this->calendrier = new ArrayCollection();
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

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): static
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(string $telephone): static
    {
        $this->telephone = $telephone;

        return $this;
    }

    /**
     * @return Collection<int, TourneeDepot>
     */
    public function getTourneeDepots(): Collection
    {
        return $this->tourneeDepots;
    }

    public function addTourneeDepot(TourneeDepot $tourneeDepot): static
    {
        if (!$this->tourneeDepots->contains($tourneeDepot)) {
            $this->tourneeDepots->add($tourneeDepot);
            $tourneeDepot->setDepot($this);
        }

        return $this;
    }

    public function removeTourneeDepot(TourneeDepot $tourneeDepot): static
    {
        if ($this->tourneeDepots->removeElement($tourneeDepot)) {
            // set the owning side to null (unless already changed)
            if ($tourneeDepot->getDepot() === $this) {
                $tourneeDepot->setDepot(null);
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
        }

        return $this;
    }

    public function removeCalendrier(Calendrier $calendrier): static
    {
        $this->calendrier->removeElement($calendrier);

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
}
