###Assignment 09

##1. -- Set Up Git --

##2. -- First Commit --

##This is a follow up to Set Up Git. Create a new file for your analysis named houseelf-analysis.R 
#and add a comment at the top describing what the analysis is intended to do.

##3. -- Importing Data --

house_elves_ears =read.csv("data/houseelf-earlength-dna-data.csv", header=T)
head(house_elves_ears)

##4. -- Commit Multiple Files --

file.rename("data/houseelf-earlength-dna-data.csv","data/houseelf_earlength_dna_data_1.csv")

##5. -- Adding a Remote --

#1.Create an account on Github. 
#2.Connect your local git repository to your remote repository on Github. 
#3. Go back to the Github webpage for your repository and you should see your files.


##6.-- Pushing Changes --

library(stringr)

ear_gc_content=function(sequence){
  gs=str_count(sequence, "G")
  cs=str_count(sequence, "C")
  gc_content=(cs + gs) / str_length(sequence) * 100 
  return(gc_content)
}

get_ear_length <- function(seq){
    #Determine the ear length category
    ear_lengths <- ifelse(seq > 10, "large", "small")
    return(ear_lengths)
}

## 7. -- Pulling and Pushing --