set.seed(200)
exp <- rexp(40000, .2)
cum <- cumsum(exp)[1:1000]/1:1000
plot(1:1000, cum, type = "l")
abline(h=5)
expmat <- matrix(exp, 1000, 40)

means <- apply(expmat, 1, mean)
boxplot(means,horizontal = T)
qplot("Averages",means, geom = "boxplot",horizontal = T)


hist(means)
mean(means)
vars <- apply(expmat, 1, var)
varmeans <- var(means)
sdmeans <- sd(means)
mean(vars)
hist(means)

x <- seq(2, 8, length=100)
hx <- dnorm(x, mean = 5) * 250/.4
lines(x,hx, type = "l", col = "blue", lwd = 2)

hist(rexp(1000, .2))
hist(means)

round(c(quantile(means,.25),quantile(means,.75)), digits = 2)
round(quantile(means)[2:3], digits = 2)
abline(h = 4.436666)
