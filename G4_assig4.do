*import file
import delimited "/Users/cherrylchico/Desktop/BSE/Foundations of Econometricts/hw4/microsoft.csv"

*OLS regression model
reg rpmsoft rpsandp dprod dinflation dterm m1

*compute residuals
predict resid, resid

*install jb test
ssc install jb

*perform jb test on residuals
jb resid
**#JB test

*to get kurtosis and skewness of residuals 
*for manual calculation
summarize resid, detail


