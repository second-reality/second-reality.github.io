Projets
=======

Voici les projets auxquels j'ai participé depuis 2009.

*Les projets n'indiquant pas un nombre de participants ont été réalisés seuls.*

Program Profiler: Juin-Décembre 2017 (travail chez INRIA)
---------------------------------------------------------

Développement d'un outil de profiling basé sur l'instrumentation de binaire via
QEMU ou DynamoRIO.

Le code est disponible sur github_, sur la branche dev.

.. _github: https://github.com/second-reality/qemu/

Voir le README_ suivant pour une explication plus complète.

.. _README: https://github.com/second-reality/qemu/tree/dev/tcg/plugins/cpp/README.rst

Un exemple de sortie de program_profiler est disponible ici_, pour le programme
suivant_.

.. _ici: ../content/projets/program_profiler/index.html
.. _suivant: ../content/projets/program_profiler/main.c

Utilisation du C++14, Python.
Travail sous Linux uniquement.

Simulation de circuits: Octobre 2016 - Janvier 2017 (travail chez Mentor Graphics)
----------------------------------------------------------------------------------

Développement d'un outil de simulation de circuits électroniques.

Équipe de 5 personnes.

Utilisation du C++14, Bash, Boost, CMake.
Travail sous Linux uniquement.

Traitement d'image: Février 2016 - Octobre 2016 (travail chez Thales Electron Devices)
--------------------------------------------------------------------------------------

Développeur (seul) sur un projet de R&D visant à porter une chaîne de traitement
d'images sur GPGPU (via CUDA/OpenCL). L'enjeu est de réduire la consommation de
l'unité de traitement. Plusieurs boards ont été évaluées (principalement à base
de processeurs ARM et de différents GPGPU (DSP, GPU)).  Une partie importante du
travail a été d'optimiser le code.

Écriture d'algorithmes de traitement d'images (portage depuis une version CPU ou
de spécifications). Portage de CUDA vers OpenCL (à performance égale sur les
plateformes offrant les deux) avec une solution technique garantissant
l'utilisation du même code (via des macros - dans le style de Boost.Compute).
Code de communication réseau pour la transmission d'images. Mise en place de
chaînes de cross compilation, d'un script de build, de déploiement, de test et
de profiling.

Autoformation CUDA/OpenCL et sur les problématiques de programmation sur GPGPU.

Utilisation du C++14, Cuda(7), OpenCL(1.2), Bash, Boost (Asio), SDL, CMake.
Travail sous Linux uniquement. Développement x86_64, arm, et arm64.

SpherNet : Août 2015 - Janvier 2016 (travail au CRD Nicolas Bourbaki)
---------------------------------------------------------------------

Développement d'une solution de communication complète pour les objets connectés
(réseau LoRa) dans une équipe de 6 personnes.

Travail d'architecture et de développement sur tous les éléments de la chaîne,
de l'antenne jusqu'au cloud. Développement orienté réseau (modèle asynchrone
monothreadé) avec la scalabilité horizontale en ligne de mire.

Utilisation du C++14, de Boost (Asio, Log, UnitTest). Travail sous Linux
uniquement.

Équipe de 6 personnes.

Arrêt soudain du projet avec la liquidation totale de la société.

Polyspace-configure : Février - Décembre 2013 (travail chez MathWorks)
----------------------------------------------------------------------

Réalisation d'un outil nommé polyspace-configure permettant de détecter depuis une chaîne de build la liste
des fichiers compilés, leurs options de compilation ainsi que le linkage de ceux-ci, le tout automatiquement.
Cet outil permet de générer un fichier de projet automatiquement pour polyspace depuis une commande telle que make.
Lors de mon départ, l'outil était capable de lancer une analyse pour n'importe quel paquet source debian (wheezy).

Cette nouvelle approche de la configuration de l'analyseur statique Polyspace a ouvert la voie à de nouveaux marchés.
Jusqu'à présent, le configuration d'un projet était longue et fastidieuse et demandait souvent une personne du support afin de converger.

Cet outil s'appuye sur des mécanismes d'injection de code (LD_PRELOAD sous Linux, DYLD_INSERT_LIBRARIES sous MacOS ainsi
que de l'IAT Patching sous windows). Il supporte les OS Linux/MacOS et WindowsXP/Vista/7/8 en version 32 et 64 bits.

L'outil fonctionne en hookant une liste prédéfinie de fonctions standard concernant l'exécution de programmes, la création de processus
et l'accès au filesystem.

J'ai également développé des heuristiques et méthodes permettant d'obtenir l'environnement de compilation exact d'un compilateur
quelconque (Visual (cl), Gcc, Clang, Icc sont supportés actuellement), sans s'appuyer sur une connaissance particulière de son fonctionnement,
ce qui permet de supporter virtuellement tous les compilateurs du marché très facilement.

Utilisation du C++11, de Boost, de la libicu, de la WinAPI (pour la partie windows).

Projet Réalisé seul dans le cadre de mon poste d'ingénieur compilation chez MathWorks.

SEA : Février - Aout 2011 (Stage de fin d'études Ensimag)
---------------------------------------------------------

Réalisation d'un outil permettant d'analyser (Structural Elf Analyser) un projet afin de représenter
les dépendances entre les parties de celui-ci. L'analyse est effectuée directement sur les binaires et non pas
sur les sources. SEA permet aux développeurs de mieux appréhender l'architecture du projet sur lequel ils travaillent ainsi
que de mieux comprendre l'impact des modifications qu'ils peuvent réaliser.

Utilisation du C, de XML (libxml2 + xslt), libelf et libdwarf.

Projet Réalisé dans le cadre de l'Ensimag (stage de fin d'études) au sein
de l'équipe compilation de STMicroelectronics à Grenoble.

Yadmake : Décembre 2010 - Janvier 2011
--------------------------------------

Réalisation d'un make distribué (Yet Another Distributed Make).

Utilisation du C++, de MPI et de pthread.

Yadmake peut fonctionner en mode séquentiel, parallèle centralisé et work-stealing.

Projet réalisé dans le cadre de L'Ensimag (cours Systèmes distribués).

2 Participants.

Bank : Octobre 2010
-------------------

Réalisation d'une application web pour la gestion d'une banque.

Utilisation de J2EE (ejb, jms, web service).

Projet réalisé dans le cadre de l'Ensimag (cours Applications réparties).

2 Participants.

QtVocal : Juin - Septembre 2010 (Stage de deuxième année Ensimag)
-----------------------------------------------------------------

Conception, implémentation et validation d'un module de reconnaissance vocale pour une application de chirurgie assistée par ordinateur.

Ce module utilise la SpeechAPI de Microsoft ainsi que le framework Qt. Il a été réalisé en C++.

L'idée est de proposer aux développeurs de l'Orthopilot (système de navigation pour les chirurgiens) un moyen simple et
rapide d'intégrer un contrôle vocal à leurs applications Qt existantes. L'interface du module s'intègre de façon
transparente dans Qt (grâce aux mécanismes de signaux/slots) et celui-ci gère tous les détails de bas niveau
concernant la reconnaissance vocale (création, erreurs, grammaire, threads, ...).

J'ai eu la chance d'assister à une opération chirurgicale de la mâchoire.

Ce projet a été réalisé dans le cadre de mon stage de deuxième année Ensimag (3 mois) au sein de l'entreprise Aesculap à Echirolles.

Accéder à des captures de l'application QtVocal_

.. _QtVocal: ../drafts/qtvocal.html

Kernel : Mai - Juin 2010
------------------------

Réalisation d'un noyau d'OS multitâche préemptif pour architecture x86.

Gestion de processus/files de message/clavier/temps/niveaux de privilèges.

Utilisation du C, asm x86 (GNU), des bibles Intel.

Projet à temps plein réalisé dans le cadre de l'Ensimag (Projet de Spécialité - 1 mois).

2 Participants.

TetraMaster : Avril 2010
------------------------

Réalisation d'un jeu de cartes (Tetra Master, tiré de Final Fantasy 9).

Modélisation Objet (UML) du jeu. Implémentation en C++.

Projet réalisé dans le cadre de l'Ensimag (cours ACVL).

4 Participants.

GestionBibliothèque : Mars 2010
-------------------------------

Réalisation d'une application web pour la gestion d'une bibliothèque.

Utilisation de PHP (Zend Framework, MVC) et MySQL.

Projet réalisé dans le cadre de l'Ensimag (cours Applis Web).

2 Participants.

Mandel : Février 2010
---------------------

Réalisation d'un explorateur de l'ensemble de Mandelbrot/Julia multithreadé (Windows/Linux).

Utilisation du C, de la SDL et de pthreads.

Projet réalisé pour mon plaisir personnel.

Accéder au dépôt du programme (sources, exec, exemples) Mandelbrot_

.. _Mandelbrot: https://github.com/second-reality/mandel

Compilateur Expresso : Janvier 2010
-----------------------------------

Réalisation d'un compilateur pour le langage Deca (mini-java)

Découverte des techniques de compilation, de validation et de gestion de projet.

Utilisation d'Ayacc, Aflex, Ada.

Projet à temps plein réalisé dans le cadre de l'Ensimag (Projet GL sur 1 mois).

4 Participants.

Accéder à la publicité Expresso_

.. _Expresso: ../drafts/expresso.html

GestionReservations : Novembre - Décembre 2009
----------------------------------------------

Réalisation d'une application java pour gérer des réservations dans un centre de vacances.

Modélisation Base de données + utilisation JDBC + utilisation swing/awt.

Projet réalisé dans le cadre de l'Ensimag (cours SGBD).

4 Participants.

GestionClients : Juillet 2009
-----------------------------

Réalisation d'une application Excel (vba) de gestion de clientèle.

Conception de l'interface + découverte du langage visual basic.

Projet réalisé dans le cadre de mon travail à Decathlon La Tronche durant mon temps libre.

Application utilisée par plusieurs rayons dans les Decathlon de La tronche et d'Echirolles.

Accéder au programme (source, manuel) GestionClients_

.. _GestionClients: ../drafts/gestionclients.html

Assembleur MIPS : Juin 2009
---------------------------

Réalisation du back-end d'un assembleur pour architecture MIPS.

Conception du back-end, découverte des mécanismes de création d'exécutables.

Utilisation du C et du format ELF.

Projet réalisé à temps plein dans le cadre de l'Ensimag (Projet C sur 10 jours).

3 Participants.

Whereis : Avril 2009
--------------------
Réalisation d'une interface graphique pour l'utilitaire WhereIs déployé à l'Ensimag qui permet de localiser une personne.

Conception de l'interface et découverte du langage Tcl. Utilisation de la bibliothèque Tk.

Projet réalisé dans le cadre de l'Ensimag (cours IUG).

2 Participants.

PhotoGlass : Février - Avril 2009
---------------------------------

Réalisation d'un mini logiciel de dessin vectoriel.

Conception de l'interface et implémentation d'algorithmes de tracés.
Utilisation d'Ada et de la SDL.

Projet réalisé dans le cadre de l'Ensimag (cours IUG).

3 Participants.

Accéder au programme (exec, manuel, exemple) PhotoGlass_

.. _PhotoGlass: ../drafts/photoglass.html

Mini-Assembleur pour projet Microprocesseur :  Mars 2009
--------------------------------------------------------

Realisation d'un mini assembleur afin d'accélerer la conception du microprocesseur.

Conception complète du programme. Utilisation d'Ada.

Projet réalisé en temps libre.

Microprocesseur 16bits : Fevrier - Avril 2009
---------------------------------------------

Realisation d'un microprocesseur 16bits sur carte FPGA (description en VHDL).

Réalisation du cahier des charges + gestion des interruptions.

Projet réalisé dans le cadre de l'Ensimag (cours Architecture2).

2 Participants.
