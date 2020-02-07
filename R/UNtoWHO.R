#' Title
#'
#' @param UNcode
#' @param WHO_UN
#'
#' @return
#' @export
#'
#' @examples
UNtoWHO = function(UNcode,WHO_UN){
  WHOcode = c()
  for(code in UNcode){
    newCode = ifelse(code==-1,-1,WHO_UN[which(WHO_UN$un==code),"who"])
    WHOcode = c(WHOcode,newCode)
  }
  return(WHOcode)
}
