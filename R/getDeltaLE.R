# Query	getDeltaLE(name = NULL) 	
# Given a country, return the increase in years of life expectancy between 1952 and 2007.
getDeltaLE <- function(gap_country){
  
  exp2007 <- gapminder %>% 
    dplyr::filter(country == gap_country, year == 2007) %>% 
    dplyr::select(lifeExp)
  
  exp1952 <- gapminder %>% 
    dplyr::filter(country == gap_country, year == 1952) %>% 
    dplyr::select(lifeExp)
  return(exp2007$lifeExp - exp1952$lifeExp)
}