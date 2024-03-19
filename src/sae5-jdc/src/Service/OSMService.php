<?php

namespace App\Service;

use App\Entity\GPSPoint;
use Symfony\Component\HttpClient\HttpClient;

class OSMService
{
    public function getPositionFromAddress($address)
    {
        $address = urlencode($address);

        // URL de l'API OpenStreetMap
        $url = "https://nominatim.openstreetmap.org/search?q=$address&format=json";

        // Création de la requête
        $client = HttpClient::create();
        $response = $client->request('GET', $url);

        // Vérifier si la requête a réussi (code 200)
        if ($response->getStatusCode() === 200) {
            // Convertir la réponse JSON en tableau associatif
            $data = $response->toArray();

            // Vérifier si des résultats ont été trouvés
            if (!empty($data)) {
                return new GPSPoint("", $data[0]['lat'], $data[0]['lon']);
            } else {
                throw new \Exception("Aucun résultat trouvé pour $address");
            }
        } else {
            throw new \Exception("Erreur lors de la requête à l'API OpenStreetMap");
        }
    }
}