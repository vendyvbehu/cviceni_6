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

Vzestupne <- function(vec){
  # Priklad zadani:
  # Vzestupne(c(0,4,5,3,2,1,6,7,8)), vystup 1 1 1 0 0 0 1 1 1
  # ...kde 1 oznacuji vzestupne casti a 0 sestupne
  
  indVec <- numeric(length(vec)) #indikacni vektor nul
  indVec[c(1,length(indVec))] <- 1 #nastaveni prvni a posledni pozice na 1
  
  for (i in 1:(length(vec)-1)) {
    if (vec[i+1] == (vec[i]+1)){
      indVec[i:(i+1)] <- 1
    }
  }
  return(indVec)
}