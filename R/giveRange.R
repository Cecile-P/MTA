# function that gives a range of codes from a string containing "-".
# string: for example I20-I25 will give I20,I21,I22,I23,I24,I25.
# A070 will give A070 because of "-" is missing.
giveRange = function(string){
  vect = c()
  # print(string)
  if(grepl("-",string)){
    string_split = unlist(strsplit(string,"-"))
    le = max(nchar(string_split[1]),nchar(string_split[2]))
    # print(le)
    nb1 = as.numeric(substr(string_split[1],2,le))
    # print(nb1)
    nb2 = as.numeric(substr(string_split[2],2,le))
    # print(nb2)
    car1 = substr(string_split[1],1,1)
    nb_range = nb1:nb2
    if(nchar(nb1)!=(le-1) | nchar(nb2)!=(le-1)){
      for(i in 1:length(nb_range)){
        nb_range[i] = paste(paste(rep(0,(le-1-nchar(nb_range[i]))),collapse=""),nb_range[i],sep="")
      }
    }
    vect = paste(car1,nb_range,sep="")
  }else{
    vect = string
  }
  return(vect)
}
