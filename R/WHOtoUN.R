#Function that gives the UN country code corresponding to the WHO country code
#WHO_UN: table with 3 columns, one for the WHO code, one for the UN code and one for the country name
# when the UNcode doesn't exist, -1 is reported
#WHOcode: WHO country code
WHOtoUN = function(WHOcode,WHO_UN){
  UNcode = c()
  for(code in WHOcode){
    # if(length(WHO_UN[which(WHO_UN$who==code),"un"])==0){print(code)}
    # else if(WHO_UN[which(WHO_UN$who==code),"un"]==-1 | is.na(WHO_UN[which(WHO_UN$who==code),"un"])){print(code)}
    UNcode = c(UNcode,WHO_UN[which(WHO_UN$who==code),"un"])
  }
  return(UNcode)
}
