# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
hello<-function(){
  library(ggplot2)
  library(ggpubr)
  iris<-iris
  p1<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
  p2<- ggplot(iris, aes(x=Petal.Length, y=Sepal.Width)) + geom_point()
  p3<- ggplot(data=iris, aes(x=Species, y=Sepal.Length)) +
    geom_boxplot()
  ggarrange(p1, p3,ncol = 2, nrow = 1)
}


