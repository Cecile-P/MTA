#function that extract disease codes corresponding to a specific disease
#' Title
#'
#' @param tab
#'
#' @return
#' @export
#'
#' @examples
extractDiseaseCode = function(tab){
  listCode = list()
  for(i in 1:nrow(tab)){
    listCode[[as.character(tab[i,1])]] = list("icd7"=giveCauseCode(tab$ICD7[i]),"icd8"=giveCauseCode(tab$ICD8[i]),"icd9"=giveCauseCode(tab$ICD9[i]),"icd10"=giveCauseCode(tab$ICD10[i]))#"icd7"=giveCauseCode(tab$ICD7[i]),
  }
  return(listCode)
}
