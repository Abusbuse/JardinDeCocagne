<?php

namespace App\DataFixtures;

use App\Entity\Abonnement;
use App\Entity\Adherent;
use App\Entity\Adhesion;
use App\Entity\Civilite;
use App\Entity\Depot;
use App\Entity\Panier;
use App\Entity\Produit;
use App\Entity\Structure;
use App\Entity\TypeAdhesion;
use App\Entity\Unite;
use App\Entity\Utilisateur;
use App\Service\OSMService;
use DateTime;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr_FR');
        $osm = new OSMService();

        $civilites = ['Monsieur', 'Madame', 'Autre'];

        $civilitesEntity = [];
        $structureEntity = [];
        $utilisateurEntity = [];
        $typeAdhesionEntity = [];
        $adherentEntity = [];
        $uniteEntity = [];
        $abonnementEntity = [];

        $adhesionNames = ['Adhésion soutien', 'Adhésion solidaire', 'Adhésion active', 'Adhésion annuelle'];
        // Durée en mois
        $duree = [1, 3, 6, 12];

        $vegetableNames = ['Carotte', 'Brocoli', 'Épinard', 'Tomate', 'Concombre', 'Poivron', 'Laitue', 'Oignon', 'Pomme de terre'];
        $fruitNames = ['Pomme', 'Banane', 'Orange', 'Poire', 'Fraise', 'Cerise', 'Raisin', 'Abricot', 'Pêche', 'Mangue'];

        $uniteTypes = ['g', 'kg', 'l', 'cl', 'ml', 'pièce'];

        $structureNames = [
            "Les jardins Déodatiens",
            "Le potager des Arches",
            "La ferme Valféricurtienne"
        ];

        $structureVille = [
            "Saint-Dié-des-Vosges",
            "Arches",
            "Valfroicourt",
        ];

        $structureAdresses = [
            "11 Rue de l'Université, 88100 Saint-Dié-des-Vosges",
            "2 Chemin du Chaufaux, 88380 Arches",
            "252 Voie des Saules, 88270 Valfroicourt"
        ];

        $depotsAdresses = [
            "3 Rue Antoine de Saint-Exupéry, 88100 Saint-Dié-des-Vosges",
            "183 Rue Ernest Charlier, 88100 Sainte-Marguerite",
            "1620 Chemin des Goutys, 88100 Nayemont-les-Fosses",

            "7 Avenue de Saint-Dié, 88000 Épinal",
            "9 Rue du Professeur Roux, 88000 Épinal",
            "3 Avenue Pierre de Coubertin, 88150 Thaon-les-Vosges",

            "270 Avenue Mal de Lattre de Tassigny, 88500 Mirecourt",
            "501 Avenue Gambetta, 88500 Mirecourt",
            "581 Rue de Mirecourt, 88500 Poussay",
        ];

        // Création des Civilites
        for ($i = 0; $i < count($civilites); $i++) {
            $civilite = new Civilite();
            $civilite->setCivilite($civilites[$i]);
            $civilitesEntity[] = $civilite;
            $manager->persist($civilite);
        }

        // Création des structures
        for ($i = 0; $i < 3; $i++) {
            $structure = new Structure();
            $structure->setNom($structureNames[$i]);
            $structure->setVille($structureVille[$i]);
            $structure->setRaisonSociale($faker->company);
            $structure->setSiegeSocial($structureAdresses[$i]);
            $structure->setAdresseGestion($structureAdresses[$i]);
            $structure->setCoordCommerciales($structureAdresses[$i]);
            $structure->setNumIdentification($faker->numberBetween($min = 100000000, $max = 999999999));

            $position = $osm->getPositionFromAddress($structure->getCoordCommerciales());
            $position->setName($structure->getNom());
            $structure->setPosition($position);

            $structureEntity[] = $structure;

            $manager->persist($structure);
        }

        // Création des utilisateurs
        for ($i = 0; $i < 100; $i++) {
            $utilisateur = new Utilisateur();
            $utilisateur->setMail($faker->email);
            // role user
            $utilisateur->setRoles(['ROLE_USER']);
            $utilisateurEntity[] = $utilisateur;

            // Récupère l'id de la civilite
            $civiliteId = $faker->numberBetween(1, 2);
            $randomCivilite = $civilitesEntity[$civiliteId];
            $utilisateur->setCivilite($randomCivilite);
            // Password puis le hash
            $utilisateur->setPassword($faker->password);
            $utilisateur->setPassword(password_hash($utilisateur->getPassword(), PASSWORD_DEFAULT));
            $utilisateur->setTelephone($faker->phoneNumber);
            $utilisateur->setNom($faker->lastName);
            $utilisateur->setPrenom($faker->firstName);
            $manager->persist($utilisateur);
        }

        // Récupère l'id de la civilite
        $civiliteId = $faker->numberBetween(1, 2);
        $randomCivilite = $civilitesEntity[$civiliteId];
        $utilisateur->setCivilite($randomCivilite);
        // Password puis le hash
        $utilisateur->setPassword($faker->password);
        $utilisateur->setPassword(password_hash($utilisateur->getPassword(), PASSWORD_DEFAULT));
        $utilisateur->setTelephone($faker->phoneNumber);
        $utilisateur->setNom($faker->lastName);
        $utilisateur->setPrenom($faker->firstName);
        $manager->persist($utilisateur);

        // Création des adhérents
        for ($i = 0; $i < 100; $i++) {
            $adherent = new Adherent();
            $adherentEntity[] = $adherent;
            $adherent->setAdresse($faker->address);
            $adherent->setCodePostal($faker->postcode);
            $adherent->setVille($faker->city);
            // ID de l'utilisateur
            $adherent->setUtilisateur($utilisateurEntity[$i]);
            $manager->persist($adherent);

            // Création des abonnements
            $abonnement = new Abonnement();
            $abonnementEntity[] = $abonnement;
            $abonnement->setDateDebut($faker->dateTime);
            $abonnement->setDateFin($faker->dateTime);
            // Associez l'abonnement à l'adhérent créé ci-dessus
            $abonnement->setAdherent($adherent);
            $manager->persist($abonnement);
        }

        // Création des types adhésions
        foreach ($structureEntity as $tempStructure) {
            for ($i = 0; $i < 4; $i++) {
                $typeAdhesion = new TypeAdhesion();

                $typeAdhesion->setLabel($adhesionNames[$i]);
                $typeAdhesion->setDuree($duree[$i]);
                $typeAdhesion->setPrix($duree[$i] * 10);
                $tempStructure->addTypeAdhesion($typeAdhesion);

                $manager->persist($typeAdhesion);
            }
        }

        // Création des adhésions
        for ($i = 0; $i < 50; $i++) {
            $adhesion = new Adhesion();

            $tempStructure = $structureEntity[$faker->numberBetween(0, 2)];

            // ID de la structure
            $adhesion->setStructure($tempStructure);

            // ID du type d'adhésion
            $adhesion->setTypeAdhesion($faker->randomElement($tempStructure->getTypeAdhesion()));
            $adhesion->setAdherent($adherentEntity[$i]);
            // date de début
            $adhesion->setDateDebut($faker->dateTime);

            $dateFin = new DateTime('now');
            $dateFin->modify("+120 years");
            $adhesion->setDateFin($dateFin);

            $manager->persist($adhesion);
        }

        // Création des unités
        for ($i = 0; $i < count($uniteTypes); $i++) {
            $unite = new Unite();
            $uniteEntity[] = $unite;
            $unite->setLabel($uniteTypes[$i]);
            $unite->setDisplay($uniteTypes[$i]);
            $manager->persist($unite);
        }

        // Création des produits
        for ($i = 0; $i < 10; $i++) {
            $produit = new Produit();
            // nom de légumes ou fruits
            $nomProduit = $faker->randomElement([...$vegetableNames, ...$fruitNames]);
            $produit->setNom($nomProduit);
            // photo du produit
            $produit->setPhoto($faker->imageUrl($width = 640, $height = 480));
            // description du produit
            $produit->setDescription($faker->text($maxNbChars = 200));
            // Récupère l'id de l'unité
            $produit->setUnite($uniteEntity[$faker->numberBetween(0, 5)]);
            $manager->persist($produit);
        }


        // Création des paniers
        for ($i = 0; $i < 10; $i++) {
            $panier = new Panier();
            // ID de l'abonnement
            $panier->setAbonnement($abonnementEntity[$i]);
            $panier->setNom($faker->randomElement(['Panier de légumes', 'Panier de fruits', 'Panier mixte']));
            $panier->setDescription($faker->text($maxNbChars = 200));
            $manager->persist($panier);
        }

        // Création des dépôts
        for ($i = 0; $i < 9; $i++) {
            $depot = new Depot();
            $depot->setNom($faker->company);
            $depot->setAdresse($depotsAdresses[$i]);
            $depot->setTelephone($faker->phoneNumber);

            $position = $osm->getPositionFromAddress($depot->getAdresse());
            $position->setName($depot->getNom());
            $depot->setPosition($position);

            $manager->persist($depot);
        }

        // Création du compte admin
        $admin = new Utilisateur();
        $admin->setMail('admin@admin.com');
        // role user
        $admin->setRoles(['ROLE_ADMIN']);

        // Récupère l'id de la civilite
        $civiliteId = $faker->numberBetween(1, 2);
        $randomCivilite = $civilitesEntity[$civiliteId];
        $admin->setCivilite($randomCivilite);
        // Password puis le hash
        $admin->setPassword('admin');
        $admin->setPassword(password_hash($admin->getPassword(), PASSWORD_DEFAULT));
        $admin->setTelephone($faker->phoneNumber);
        $admin->setNom('Admin');
        $admin->setPrenom('Admin');
        $manager->persist($admin);

        // Création des comptes test
        $this->createTestsUsers($manager, $faker, $civilitesEntity);

        $manager->flush();
    }

    private function createTestsUsers($manager, $faker, $civilites, $nbr = 3)
    {
        for ($i = 0; $i < $nbr; $i++) {
            $user = new Utilisateur();
            // role user
            $user->setRoles(['ROLE_USER']);

            // Récupère l'id de la civilite
            $civiliteId = $faker->numberBetween(1, 2);
            $randomCivilite = $civilites[$civiliteId];
            $user->setCivilite($randomCivilite);
            // Password puis le hash
            $user->setPassword('123456');
            $user->setPassword(password_hash($user->getPassword(), PASSWORD_DEFAULT));
            $user->setTelephone($faker->phoneNumber);
            $user->setNom('Name' . $i);
            $user->setPrenom('User' . $i);
            $user->setMail($user->getPrenom() . '@user.com');

            // Création de la partie "adherent"
            $adherent = new Adherent();
            $adherent->setAdresse($faker->address);
            $adherent->setCodePostal(88100);
            $adherent->setVille($faker->city);

            $user->setAdherent($adherent);

            $manager->persist($user);
        }
    }
}

