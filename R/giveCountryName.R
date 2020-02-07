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
