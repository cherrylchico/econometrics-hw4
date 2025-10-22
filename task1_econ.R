#Data for slide3(33)
n<- 35
set.seed(1234)
x2<-runif(n,0,30)
x3<-runif(n,0,30)
x4<-x3+rnorm(n,0,1)
y<-10+0.5*x2+0.5*x3+0.5*x4+rnorm(n,0,4)

#(i)
model <- lm(y ~ x2 + x3 + x4)
summary(model)
confint(model, level = 0.95)

#(ii)
install.packages("car")
library(car)
confidenceEllipse(model, 
                  which.coef = c("x3", "x4"), 
                  levels = 0.95,
                  col = "blue",
                  lwd = 2)
est <- coef(model)[c("x3", "x4")]
points(est[1], est[2])
ci <- confint(model, level = 0.95)
x3_ci <- ci["x3", ]
x4_ci <- ci["x4", ]
abline(v = x3_ci, lty = 2)
abline(h = x4_ci, lty = 2)
title("95% Confidence Ellipse for β3 and β4")
text(est[1], est[2], labels = "OLS estimates", pos = 2)


#1.b
n<- 3500
set.seed(1234)
x2<-runif(n,0,30)
x3<-runif(n,0,30)
x4<-x3+rnorm(n,0,1)
y<-10+0.5*x2+0.5*x3+0.5*x4+rnorm(n,0,4)

model <- lm(y ~ x2 + x3 + x4)
summary(model)
confint(model, level = 0.95)

library(car)
confidenceEllipse(model, 
                  which.coef = c("x3", "x4"), 
                  levels = 0.95,
                  col = "blue",
                  lwd = 2)
est <- coef(model)[c("x3", "x4")]
points(est[1], est[2])
ci <- confint(model, level = 0.95)
x3_ci <- ci["x3", ]
x4_ci <- ci["x4", ]
abline(v = x3_ci, lty = 2)
abline(h = x4_ci, lty = 2)
title("95% Confidence Ellipse for β3 and β4")
text(est[1], est[2], labels = "OLS estimates", pos = 2)



#c


n<- 35
set.seed(1234)
x2<-runif(n,0,30)
x3<-runif(n,0,30)
x4<-x3 * (-0.5)
y<-10+0.5*x2+0.5*x3+0.5*x4+rnorm(n,0,4)

model <- lm(y ~ x2 + x3 + x4)
summary(model)
confint(model, level = 0.95)