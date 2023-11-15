Verb.IQ = read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/exe7_04.txt", header = T)
len_male = 0 
len_female = 0
for (i in 1:length(Verb.IQ$mf)){
  if(Verb.IQ$mf[i] == "male"){
    len_male = len_male + 1
  }
}
s_male = round(sd(Verb.IQ$VERBIQ[1: len_male]), digits = 2)
s_female = round(sd(Verb.IQ$VERBIQ[len_male: length(Verb.IQ$VERBIQ)]), digits = 2)

prop = round(s_male/s_female, digits = 2)
