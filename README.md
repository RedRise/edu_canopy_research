# edu-canopy-research
This Repository explains how to setup an R environment for research

## Installation de l'environnement

- Installer Git
  - [Page officielle](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - [OPT] Création d'un compte github
- Installer R
  - [Page officielle](https://cran.r-project.org/)
- Installer RStudio
  - Tuto: https://posit.co/download/rstudio-desktop/
  - Création d'une clef SSH via/pour RStudio : https://www.geeksforgeeks.org/link-your-github-account-with-r-studio/
    - Cette étape permet d'associer RStudio et Github, sans que des mots de passe soient demandés
- Comprendre comment fonctionne Git
  - Regarder une série de videos: https://www.youtube.com/watch?v=rP3T0Ee6pLU
  - Travailler avec Git et RStudio : https://thinkr.fr/travailler-avec-git-via-rstudio-et-versionner-son-code/
- Récupérer ce repo via RStudio
  - Autorise le téléchargement de repo sur GitHub.com
    1. Ouvrir le "logiciel" "git bash" (via la touche windows de son ordinateur)
    2. Coller le texte suivant dans le terminal qui vient de s'ouvrir: ```ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts```
    3. Appuyer sur Entrée, et fermer le logiciel 
  - Aller sur la page d'accueil du repo: https://github.com/RedRise/edu_canopy_research
  - Cliquer sur le bouton vert "CODE", une fenêtre s'ouvre
  - Choisir l'onglet "SSH", et copier le texte qui s'affiche ```git@github.com:RedRise/edu_canopy_research.git```
  - Revenir dans RStudio > File > New Project
  - Choisir "Version Control" > "Git"
  - Coller le texte précédemment copié, indiquer le nom "edu_canopy_research", et choisir un dossier dans lequel ce projet sera installé
  - Valider
  