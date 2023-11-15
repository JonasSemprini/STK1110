# #Oppgave 1b.
# count = 0
# mu_exact = 558
# sd_exact = 30
# iterations = 10000
# 
# for (j in 1:iterations){
#   data_sett = array(1:15)
#   for (i in 1:15){
#     X_est = rnorm(15 ,mu_exact, sd_exact)
#     data_sett[i] = X_est
#   }
#   mu_est = mean(data_sett)
#   sd_est = sd(data_sett)
#   
#   con_int_low = mu_est - 1.96*sd_est/sqrt(15)
#   con_int_high = mu_est + 1.96*sd_est/sqrt(15)
#   if (mu_exact >= con_int_low && mu_exact <= con_int_high){
#     count = count + 1
#   }
# }
# 
# print(count/iterations)

# 
# count = 0
# mu_exact = 558
# sd_exact = 30
# iterations = 10000
# 
# for (j in 1:iterations){
#   data_sett = array(1:15)
#   mu_est = 0
#   for (i in 1:15){
#     X_est = rnorm(15 ,mu_exact, sd_exact)
#     data_sett[i] = X_est
#   }
#   mu_est = sum(data_sett)/15
#   sd_est = 0
#   for (i in 1:15){
#     sd_est = sd_est + (data_sett[i] - mu_est)^2
#   }
#   sd_est = sqrt(sd_est/14)
#   con_int_low = mu_est - 1.96*sd_est/sqrt(15)
#   con_int_high = mu_est + 1.96*sd_est/sqrt(15)
#   if (mu_exact >= con_int_low && mu_exact <= con_int_high){
#     count = count + 1
#   }
# }
# 
# print(count/iterations)

# #Oppgave 1d.)
count = 0
mu_exact = 558
sd_exact = 30
iterations = 10000

chi_low = qchisq(0.025, (14), lower.tail=FALSE)
chi_high = qchisq(0.025, (14), lower.tail=TRUE)

for (j in 1:iterations){
  data_sett = array(1:15)
  mu_est = 0
  for (i in 1:15){
    X_est = rnorm(15, mu_exact, sd_exact)
    data_sett[i] = X_est
  }
  mu_est = sum(data_sett)/15
  sd_est = 0
  for (i in 1:15){
    sd_est = sd_est + (data_sett[i] - mu_est)^2
  }

  sd_est = sqrt(sd_est/14)

  low.sd=(14)*sd_est^2/chi_low
  up.sd=(14)*sd_est^2/chi_high

  cont_int_low = sqrt(low.sd)
  cont_int_high= sqrt(up.sd)
  if (sd_exact >= cont_int_low && sd_exact <= cont_int_high){
    count = count + 1
  }
}

print(count/iterations)

# #Oppgave 1e.)
# count = 0
# mu_exact = 558
# sd_exact = 30
# iterations = 10000
# 
# for (j in 1:iterations){
#   data_sett = array(1:15)
#   mu_est = 0
#   for (i in 1:15){
#     Z_i = rt(15, 7)
#     x_i = mu_exact + sd_exact*(Z_i)
#     data_sett[i] = x_i
#   }
#   mu_est = mean(data_sett)
#   sd_est = sd(data_sett)
#   con_int_low = mu_est - 2.145*sd_est/sqrt(15)
#   con_int_high = mu_est + 2.145*sd_est/sqrt(15)
#   if (mu_exact >= con_int_low && mu_exact <= con_int_high){
#        count = count + 1
#      }
#    }
# print(count/iterations)

#  count = 0
#  mu_exact = 558
#  sd_exact = 30
#  iterations = 10000
#  chi_low = qchisq(0.025, (14), lower.tail=FALSE)
#  chi_high = qchisq(0.025, (14), lower.tail=TRUE)
# 
#  for (j in 1:iterations){
#    data_sett = array(1:15)
#    mu_est = 0
#    for (i in 1:15){
#      Z_i = rt(15, 7)
#      x_i = mu_exact + sd_exact*(Z_i)
#      data_sett[i] = x_i
#  }
#    mu_est = mean(data_sett)
#    sd_est = 0
# 
#    for(i in 1:15){
#      sd_est = sd_est + (data_sett[i] - mu_est)^2
#    }
# 
#    sd_tilde = 1.4*(sd_est/14)
# 
#    low.sd= (14)*sd_tilde/chi_low
#    up.sd= (14)*sd_tilde/chi_high
# 
#    cont_int_low = sqrt((1/1.4)*low.sd)
#    cont_int_high = sqrt((1/1.4)*up.sd)
# 
#    if (sd_exact >= cont_int_low && sd_exact <= cont_int_high){
#         count = count + 1
#       }
#   }
# print(count/iterations)

