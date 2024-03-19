<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240116152703 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE adhesion ADD adherent_id INT NOT NULL, ADD date_fin DATETIME DEFAULT NULL');
        $this->addSql('ALTER TABLE adhesion ADD CONSTRAINT FK_C50CA65A25F06C53 FOREIGN KEY (adherent_id) REFERENCES adherent (id)');
        $this->addSql('CREATE INDEX IDX_C50CA65A25F06C53 ON adhesion (adherent_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE adhesion DROP FOREIGN KEY FK_C50CA65A25F06C53');
        $this->addSql('DROP INDEX IDX_C50CA65A25F06C53 ON adhesion');
        $this->addSql('ALTER TABLE adhesion DROP adherent_id, DROP date_fin');
    }
}
