#Function that gives the WHO country code corresponding to the UN country code
#WHO_UN: table with 3 columns, one for the WHO code, one for the UN code and one for the country name
# when the UNcode doesn't exist, -1 is reported
#UNcode: UN country code
UNtoWHO = function(UNcode,WHO_UN){
  WHOcode = c()
  for(code in UNcode){
    newCode = ifelse(code==-1,-1,WHO_UN[which(WHO_UN$un==code),"who"])
    WHOcode = c(WHOcode,newCode)
  }
  return(WHOcode)
}
