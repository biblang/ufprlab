# Diagrama de cordas --------------
# 1. Cria-se 2 variáveis: sexo (v1={f, m}) e opinião v2=({ruim, indiferente, bom})

install.packages("circlize")
require(circlize)

v1 <- c("F", "F", "F", "F", "M", "M", "M", "M", "M","F", "M")
v2 <- c("I", "I", "B", "I","B", "R", "B", "R","B", "I", "R" )

#length(v1)
#length(v2)

# criando um data frame com v1 e v2

m <- data.frame(table(v1,v2))
chordDiagram (m,
              col=rainbow(6),
              link.border = "black",
              grid.border = "black",
              )  #plotando

?chordDiagram


# Gráfico Hexbin ---------------------
# Interessante utilizar quando se tem muitos pontos. É visualmente melhor ver os
# pontos com escala de cores do que ver vários pontos empilhados

install.packages("hexbin")
require (hexbin)

Sepal_Length <- iris$Sepal.Length
Petal_Width <- iris$Petal.Width

hh <- hexbin (Sepal_Length, Petal_Width )
plot(hh)


# Gráfico de Bolhas -------------

x <- c(10,20,15,20,40)
y <- c(1, 4, 5, 1, 5)
z <- c(41, 22, 20, 11, 50)
rotulos <- c("A", "A", "A", "B", "B")
cor <- c("aquamarine", "aquamarine", "aquamarine", "violet", "violet")
categorias <- c("Categoria 1", "Categoria 2")

symbols (x = x, y = y, circles = z, inches = 0.5, bg = cor)

text(x, y, rotulos, cex = 1)
legend(35, 3, categorias, pch=19, cex = 1, col= c("aquamarine", "violet"))


# Gráfico de Barras --------------

ano <- c(rep(2022,12), rep(2023,12))
mes <- 1:12
ven <- rpois (24,10)
V <- rbind(ven[1:12], ven[13:24])
cores <- c("#673AB7", "#009688")   # www.materialpalette.com > busca cores hex

# Barras somadas
barplot (V, names.arg = mes, col = cores, border = F)

# Barras aninhadas
barplot (V, beside = T, names.arg = mes, col = cores, border = F)

# Barras aninhadas 100%
soma <- apply(V,2,sum) # 2 = por coluna
p <- V%*%diag(1/soma)       # multiplicação de matrizes
#dividimos cada um dos elementos pela soma
barplot (p, names.arg = mes, col = cores, border = F)


# Gráfico de Mosaico ----------

HairEyeColor
mosaicplot(HairEyeColor, col = cores)

# testando com os vetores do início do código
mosaicplot(table(v1,v2), col = "violet")


#   TESTANDO COMMIT



