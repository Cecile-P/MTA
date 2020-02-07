#Function that gives the name of the corresponding country code
#tabCountryCode: table with two columns, one with the names of countries and one with the corresponding country code
#code: vector containing country codes
#' Title
#'
#' @param tabCountryCode
#' @param code
#'
#' @return
#' @export
#'
#' @examples
giveCountryName = function(tabCountryCode,code){
  countryName = c()
  for(co in code){
    name = as.vector(tabCountryCode[which(tabCountryCode$country==co),"name"])
    countryName = c(countryName,name)
  }
  return(countryName)
}
