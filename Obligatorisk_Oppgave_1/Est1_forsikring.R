n = 1000
uni = runif(n)
sd_theta_tilde = 1/(sqrt(n*(n+2)))
sd_theta_hat = (sqrt(3)*1)/3
pdf(file="estimatorer1.pdf")
#hist(sd_theta_tilde, breaks = "Sturges")
hist(sd_theta_hat, breaks = "Sturges")
dev.off()

