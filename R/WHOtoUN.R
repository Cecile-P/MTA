#' Title
#'
#' @param WHOcode
#' @param WHO_UN
#'
#' @return
#' @export
#'
#' @examples
WHOtoUN = function(WHOcode,WHO_UN){
  UNcode = c()
  for(code in WHOcode){
    # if(length(WHO_UN[which(WHO_UN$who==code),"un"])==0){print(code)}
    # else if(WHO_UN[which(WHO_UN$who==code),"un"]==-1 | is.na(WHO_UN[which(WHO_UN$who==code),"un"])){print(code)}
    UNcode = c(UNcode,WHO_UN[which(WHO_UN$who==code),"un"])
  }
  return(UNcode)
}
