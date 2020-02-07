#' Title
#'
#' @param vect_cause
#'
#' @return
#' @export
#'
#' @examples
giveCauseCode = function(vect_cause){
  cause = c()
  # print(nchar(vect_cause))
  if(!is.na(vect_cause) & vect_cause!=""){
    string_split = unlist(strsplit(as.character(vect_cause),";"))
    # print(string_split)
    for(j in 1:length(string_split)){
      cause = c(cause,giveRange(string_split[j]))
    }
  }
  return(cause)
}
