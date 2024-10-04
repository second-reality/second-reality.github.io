Projets
=======

.. toctree::
   :hidden:

   ../projets/gestionclients.rst
   ../projets/photoglass.rst
   ../projets/qtvocal.rst

Voici quelques projets **marquants** auxquels j'ai participé depuis 2009.

Le but ici est de décrire plus en détails les compétences que j'ai pu
mettre en oeuvre dans ma carrière.

----------------

Please: 2020 (AllegroDVT)
--------------------------------------

Cela faisait plusieurs années que je rêvais de pouvoir implémenter au sein d'une
équipe une idée découverte en 2010 chez Mozilla: l'approche "mach".

Mach est un outil disponible avec Firefox permettant de facilement
builder/tester, ou réaliser toute tâche qu'un développeur a besoin.

Plutôt qu'un wiki complexe (et souvent peu à jour), l'idée est de fournir aux
développeurs une commande simple qui fait ce qui est nécessaire. Please
implémente cette philosophie, et la renforce en utilisant docker pour abstraire
la machine du développeur.

Exemples:

- ./please build-debug
- ./please build-address-sanitizer
- ./please format-code
- ./please generate-streams
- ...

Ainsi, toute la complexité liée aux outils est abstraite derrière un ensemble
simple de commandes. Il devient facile d'introduire un nouvel outil, car il est
n'est pas nécessaire de former toute l'équipe dessus.

Pour partager le code de l'équipe, les bénéfices sont également nombreux. Un
simple "git clone && ./please ..." suffit sans avoir besoin d'expliquer quoi que
ce soit.

J'avais formalisé cette idée sur ce `dépôt
<https://github.com/second-reality/please>`_ il y a quelques années.

Une fois l'outil écrit, implémenter une CI a été très simple et naturel, toute
l'intelligence étant déjà présente dans "please".

Développement en Bash.

Raptor: 2020-2021 (AllegroDVT)
-------------------------------------------

Design et réalisation d'un moteur de génération de vidéos afin de couvrir les
nouveaux standards (VVC, AVS3) et leurs difficultés.

Concrètement, il s'agit d'une interface (API) permettant de décrire un stream
vidéo, et son contenu, précisément, ou aléatoirement, selon le choix du
développeur.

Il succède à l'ancien moteur "Rex" implémenté via un DSL (Domain Specific
Language) présent dans la société. Pour parfaire son intégration, un transpileur
a été écrit pour passer de ce DSL à la nouvelle interface automatiquement.

Les gains sont:

- une plus grande expressivité (non contraint par un DSL)
- un mode de debug très poussé disponible sur demande ou automatiquement en cas
  d'erreur.
- une rapidité accrue (x5 à x15), importante pour les vidéos en haute
  résolution
- facilité d'étendre l'interface pour un nouveau besoin (versus un DSL figé)
- possibilité de développer des plugins pour extraire de l'information des
  streams vidéos (analyseur).

Développement en D.

Program Profiler: 2017 (INRIA)
---------------------------------------------------------

Développement d'un outil de profiling basé sur l'instrumentation de binaire via
QEMU ou DynamoRIO.

Le code est disponible sur github_, sur la branche dev.

.. _github: https://github.com/second-reality/qemu/

Voir le README_ suivant pour une explication plus complète.

.. _README: https://github.com/second-reality/qemu/tree/dev/tcg/plugins/cpp/README.rst

Un exemple de sortie de program_profiler est disponible ici_, pour le programme
suivant_.

.. _ici: /_static/projets/program_profiler/index.html
.. _suivant: /_static/projets/program_profiler/main.c

Utilisation du C++14, Python.
Travail sous Linux uniquement.

Traitement d'image: 2016 (Thales Electron Devices)
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

SpherNet : 2015 (CRD Nicolas Bourbaki)
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

Polyspace-configure : 2013 (MathWorks)
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

SEA : 2011 (Stage de fin d'études Ensimag)
---------------------------------------------------------

Réalisation d'un outil permettant d'analyser (Structural Elf Analyser) un projet afin de représenter
les dépendances entre les parties de celui-ci. L'analyse est effectuée directement sur les binaires et non pas
sur les sources. SEA permet aux développeurs de mieux appréhender l'architecture du projet sur lequel ils travaillent ainsi
que de mieux comprendre l'impact des modifications qu'ils peuvent réaliser.

Utilisation du C, de XML (libxml2 + xslt), libelf et libdwarf.

Projet Réalisé dans le cadre de l'Ensimag (stage de fin d'études) au sein
de l'équipe compilation de STMicroelectronics à Grenoble.

Yadmake : fin 2010 (Ensimag)
----------------------------

Réalisation d'un make distribué (Yet Another Distributed Make).

Utilisation du C++, de MPI et de pthread.

Yadmake peut fonctionner en mode séquentiel, parallèle centralisé et work-stealing.

Projet réalisé dans le cadre de L'Ensimag (cours Systèmes distribués).

2 Participants.

QtVocal : été 2010 (Stage de deuxième année Ensimag)
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

.. _QtVocal: /projets/qtvocal.html

Kernel : Juin 2010 (Ensimag)
----------------------------

Réalisation d'un noyau d'OS multitâche préemptif pour architecture x86.

Gestion de processus/files de message/clavier/temps/niveaux de privilèges.

Utilisation du C, asm x86 (GNU), des bibles Intel.

Projet à temps plein réalisé dans le cadre de l'Ensimag (Projet de Spécialité - 1 mois).

2 Participants.

Mandel : Février 2010
---------------------

Réalisation d'un explorateur de l'ensemble de Mandelbrot/Julia multithreadé (Windows/Linux).

Utilisation du C, de la SDL et de pthreads.

Projet réalisé pour mon plaisir personnel.

Accéder au dépôt du programme (sources, exec, exemples) Mandelbrot_

.. _Mandelbrot: https://github.com/second-reality/mandel

Compilateur Expresso : Janvier 2010 (Ensimag)
---------------------------------------------

Réalisation d'un compilateur pour le langage Deca (mini-java)

Découverte des techniques de compilation, de validation et de gestion de projet.

Utilisation d'Ayacc, Aflex, Ada.

Projet à temps plein réalisé dans le cadre de l'Ensimag (Projet GL sur 1 mois).

4 Participants.

GestionClients : Juillet 2009 (Decathlon)
-----------------------------------------

Réalisation d'une application Excel (vba) de gestion de clientèle.

Conception de l'interface + découverte du langage visual basic.

Projet réalisé dans le cadre de mon travail à Decathlon La Tronche durant mon temps libre.

Application utilisée par plusieurs rayons dans les Decathlon de La tronche et d'Echirolles.

Accéder au programme (source, manuel) GestionClients_

.. _GestionClients: /projets/gestionclients.html

Assembleur MIPS : Juin 2009 (Ensimag)
-------------------------------------

Réalisation du back-end d'un assembleur pour architecture MIPS.

Conception du back-end, découverte des mécanismes de création d'exécutables.

Utilisation du C et du format ELF.

Projet réalisé à temps plein dans le cadre de l'Ensimag (Projet C sur 10 jours).

3 Participants.

PhotoGlass : Février - Avril 2009 (Ensimag)
-------------------------------------------

Réalisation d'un mini logiciel de dessin vectoriel.

Conception de l'interface et implémentation d'algorithmes de tracés.
Utilisation d'Ada et de la SDL.

Projet réalisé dans le cadre de l'Ensimag (cours IUG).

3 Participants.

Accéder au programme (exec, manuel, exemple) PhotoGlass_

.. _PhotoGlass: /projets/photoglass.html

Mini-Assembleur pour projet Microprocesseur :  Mars 2009 (Ensimag)
------------------------------------------------------------------

Realisation d'un mini assembleur afin d'accélerer la conception du microprocesseur.

Conception complète du programme. Utilisation d'Ada.

Projet réalisé en temps libre.

Microprocesseur 16bits : début 2009 (Ensimag)
-------------------------------------------------------

Realisation d'un microprocesseur 16bits sur carte FPGA (description en VHDL).

Réalisation du cahier des charges + gestion des interruptions.

Projet réalisé dans le cadre de l'Ensimag (cours Architecture2).

2 Participants.
