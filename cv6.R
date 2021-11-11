NajdiSetridene <- function(vec){
 # Priklad zadani:
 # NajdiSetridene(c(0,1,2,3,6,7,4,5,8))
 # Funkce najde, kde zacina nesetridena oblast ve vektoru (pr. zadani - vystup 5)
  ascVec <- 0
  i <- 1 # zacinam od prvni pozice
  while(identical(vec[1:i],ascVec[1:i])){
    ascVec <- c(ascVec,i)
    i <- i + 1 
  }
  return(length(ascVec)) #vratim pozici prvniho breakpointu (nesetridene pozice)
}