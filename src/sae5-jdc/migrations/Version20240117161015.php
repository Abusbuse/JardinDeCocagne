<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240117161015 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE gpspoint (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, latitude DOUBLE PRECISION NOT NULL, longitude DOUBLE PRECISION NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE depot ADD position_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE depot ADD CONSTRAINT FK_47948BBCDD842E46 FOREIGN KEY (position_id) REFERENCES gpspoint (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_47948BBCDD842E46 ON depot (position_id)');
        $this->addSql('ALTER TABLE structure ADD position_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE structure ADD CONSTRAINT FK_6F0137EADD842E46 FOREIGN KEY (position_id) REFERENCES gpspoint (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6F0137EADD842E46 ON structure (position_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE depot DROP FOREIGN KEY FK_47948BBCDD842E46');
        $this->addSql('ALTER TABLE structure DROP FOREIGN KEY FK_6F0137EADD842E46');
        $this->addSql('DROP TABLE gpspoint');
        $this->addSql('DROP INDEX UNIQ_47948BBCDD842E46 ON depot');
        $this->addSql('ALTER TABLE depot DROP position_id');
        $this->addSql('DROP INDEX UNIQ_6F0137EADD842E46 ON structure');
        $this->addSql('ALTER TABLE structure DROP position_id');
    }
}
