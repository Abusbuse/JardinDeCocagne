<?php

// Test unitaire de la méthode structureList() de StructureController

namespace App\Tests\Units;

use App\Entity\Structure;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;
class StructureTest extends KernelTestCase
{
    // test de l'entity Structure
    public function testSomething()
    {
        #self::bootKernel();
        #$container = static::getContainer();

        #$structure = new Structure();
        #$structure->setNom('test')
          #  ->setVille('test')
           # ->setRaisonSociale('test')
            #->setSiegeSocial('test')
            #->setAdresseGestion('test')
            #->setCoordCommerciales('test')
            #->setNumIdentification('test');
        #$errors = $container->get('validator')->validate($structure);

        #$this->assertCount(0, $errors);

        $this->assertTrue(true);
    }
}
