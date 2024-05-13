import 'package:flutter/material.dart';
import '../menu/drawer.widget.dart';

class ExperiencePage extends StatefulWidget {
  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  // Define a list to keep track of expansion states
  List<bool> _isExpandedList = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Expérience'),
      ),
      body: ListView(
        children: <Widget>[
          _buildExpansionTile(
            title: 'Processeur de Données',
            date: '04/2023 ՞ 07/2023 Anavid',
            description: [
              'Participé à un projet de vol axé sur la détection de vols dans de grands environnements de vente au détail.',
              "Géré la collecte, la segmentation et l'annotation des données.",
              'Créé une démonstration percutante utilisant YOLO et PyTorch pour la détection de personnes et la segmentation des couleurs afin de lutter contre le vol.'
            ],
            index: 0,
          ),
          _buildExpansionTile(
            title: "Stage de Projet de Fin d'Études",
            date: '03/2023 ՞ 05/2023 ISIMS',
            description: [
              'Solution IoT pour la gestion et le contrôle des barrages :',
              "Créé une gestion des barrages basée sur l'IoT en utilisant des capteurs pour collecter des données.",
              'Conçu un tableau de bord pour visualiser les données en temps réel pour la prise de décision éclairée.',
              "Amélioré l'efficacité et la fiabilité grâce aux schémas de conception IoT."
            ],
            index: 1,
          ),
          _buildExpansionTile(
            title: "Stage de Fin d'Études",
            date: '02/2022 ՞ 05/2022 IMSR',
            description: [
              "Développer un tableau de bord interactif pour visualiser les statistiques sur les pannes d'équipement et les interventions de maintenance :",
              "Nettoyer les données à l'aide d'algorithmes Python pour améliorer la qualité des données.",
              'Implémenter les données nettoyées dans une base de données pour un stockage et une récupération efficaces des données.',
              'Concevoir et développer un tableau de bord dynamique en utilisant la bibliothèque Dash de Python pour visualiser les données de manière interactive.',
              'Utiliser Python pour automatiser les tâches répétitives telles que le nettoyage des données et les mises à jour du tableau de bord, ce qui permet de gagner un temps précieux.'
            ],
            index: 2,
          ),
          _buildExpansionTile(
            title: 'Stage',
            date: '07/2021 ՞ 09/2021 IOvision',
            description: [
              "Développé une application mobile conçue pour l'envoi de SMS en utilisant le framework Flutter et le backend Strapi.",
              'Configuration et mise en place du backend.',
              'Envoi automatisé de SMS via une API.',
              'Affichage du nombre de SMS existants dans la base de données tout en indiquant le statut de chaque message (envoi réussi ou échec de la livraison).'
            ],
            index: 3,
          ),
          _buildExpansionTile(
            title: "Stage d'été",
            date: '06/2020 ՞ 08/2020 DSP',
            description: [
              'Travaillé sur un projet nommé "Next Generation Account" visant à numériser et automatiser les processus au sein des cabinets comptables :',
              "Mise en place d'un serveur pour le système de billetterie à l'aide d'une application open source appelée osTicket.",
              'Participé à la collecte de données et à la documentation des exigences du projet.',
              "Conduite des tests d'application.",
              'Application de la méthodologie Scrum en assistant aux réunions quotidiennes de suivi et aux réunions rétrospectives de sprint.'
            ],
            index: 4,
          ),
        ],
      ),
    );
  }

  // Function to build ExpansionTile widget
  Widget _buildExpansionTile({
    required String title,
    required String date,
    required List<String> description,
    required int index,
  }) {
    return ExpansionTile(
      title: Text(title),
      subtitle: Text(date),
      initiallyExpanded: _isExpandedList[index],
      onExpansionChanged: (isExpanded) {
        setState(() {
          _isExpandedList[index] = isExpanded;
        });
      },
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: description
                .map((point) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('• '),
                          Expanded(
                            child: Text(
                              point,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
