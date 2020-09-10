mechacar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) # read in the .csv file
head(mechacar_mpg) # determine what the categorical variables are
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=mechacar_mpg)) #find the p values 

# graphs of the significant categories

# vehicle length vs mpg
lengthmodel <- lm(mpg ~ vehicle.length,mechacar_mpg) #create linear model
lengthyvals <- lengthmodel$coefficients['vehicle.length']*mechacar_mpg$vehicle.length +
  + lengthmodel$coefficients['(Intercept)']
plt <- ggplot(mechacar_mpg,aes(x=vehicle.length,y=mpg))
plt + geom_point()+geom_line(aes(y=lengthyvals),color='red')

# ground clearance vs mpg
gcmodel <- lm(mpg ~ ground.clearance,mechacar_mpg)
gcyvals <- gcmodel$coefficients['ground.clearance']*mechacar_mpg$ground.clearance +
  + gcmodel$coefficients['(Intercept)']
plt <- ggplot(mechacar_mpg,aes(x=ground.clearance,y=mpg))
plt + geom_point()+geom_line(aes(y=gcyvals),color='red')

# Summary stats for suspension coil data
coils <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) # read in csv file
summary(coils) # find the mean and median
var(coils$PSI) # find the variance 
sd(coils$PSI) # find the standard deviation
# create a table with the summary statistics
coilstable <- matrix (c(1500,1500,76.23459,8.731242),ncol=4,byrow=TRUE)
colnames(coilstable)<- c("Mean", "Median", "Variance", "Standard Deviation")
rownames(coilstable) <- c("PSI")
coilstable <-as.table(coilstable)
coilstable #a table with the stats

# Suspension Coil t-test
t.test(coils$PSI,mu=mean(coils$PSI))

