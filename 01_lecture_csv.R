require("data.table")

# Lecture du fichier
mesures <- data.table(read.csv(file.path("data", "mesures_01.csv"), sep = ";", dec = ",", header = TRUE))

# Une data.table, c'est comme une dataframe VIP, plus rapide et plus facile à manipuler
# C'est une structure de données, qui est une liste de vecteurs de données. Chaque vecteur peut contenir un type de données particuliler, comme c'est le cas dans notre première série de mesures.
# Affichons les types de chacune de ces colonnes
lapply(mesures, class)

# On peut aussi visualiser la table comme un tableau, car chaque colonne contient le même nombre d'éléments
mesures

# Affichons maintenant les "dimensions" de cette tables (c'est à dire le nombre de lignes et le nombre de colonnes)
dim(mesures)

# Quelle est la somme des poids des ces échantillons?
sum(mesures[,POIDS])

# Affichons la distribution (le nombre d'échantillon par intervalle de poids)
hist(mesures[,POIDS])

# Ajoutons une colonne à notre table, qui contiendra la sommes des longueurs
mesures[,"TOT_LONG"] <- mesures[,LONGUEUR]+mesures[,LARGEUR]+mesures[,EPAISSEUR]

# Affichons la distribution de cette nouvelle mesure
hist(mesures[, TOT_LONG])

# Nous allons maintenant représenter visuellement ces données

# Représentons le poids des graines en fonction de leur long. totales
plot(x=mesures[,TOT_LONG], y=mesures[,POIDS])

# Clustering : c'est l'action de créer des groupes.
# Une fonction R donne accès à un algo de clustering, "kmeans", voyons comment elle fonctionne
help(kmeans)

mesures[,length(POIDS),by=TYPES]

res <- kmeans(mesures[1:500,list(LONGUEUR, LARGEUR, EPAISSEUR)], 4)

output <- mesures[1:500, list(TOT_LONG, POIDS, TYPES)]
# Nous passons les resultats en "facteurs" c.a.d. en texte
output[,"TYPES_FIT"] <- as.factor(res$cluster)

# On explore une library graphique plus sophistiquée ggplot2
require("ggplot2")

ggplot(output, aes(x=TOT_LONG, y=POIDS)) + geom_point()

ggplot(output, aes(x=TOT_LONG, y=POIDS, col=TYPES, shape=TYPES_FIT)) + geom_point(size=4)

# Zoomons sur la premiere catégorie
ggplot(output[TYPES==4], aes(x=TOT_LONG, y=POIDS, col=TYPES, shape=TYPES_FIT)) + geom_point(size=4)

#
table(output[,list(TYPES, TYPES_FIT)])







