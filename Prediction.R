library(caret)
library(tree)
library(e1071)
set.seed(123)
library(randomForest)

pima <- read.csv("C:\\Users\\calvinwong\\Documents\\diabetes.csv", col.names=c("Pregnant","Plasma_Glucose","Dias_BP","Triceps_Skin","Serum_Insulin","BMI","DPF","Age","Diabetes"))
pima$Diabetes <- as.factor(pima$Diabetes)
#*
#*
#*
#*
#*
#Logistic Regression model

# Preparing  DataSet
set.seed(123)
n <- nrow(pima)
train <- sample(n, trunc(0.70*n))
pima_training <- pima[train, ]
pima_testing <- pima[-train, ]

# Training The Model
glm_fm1 <- glm(Diabetes ~., data = pima_training, family = binomial)
summary(glm_fm1)
glm_fm2 <- update(glm_fm1, ~. - Triceps_Skin - Serum_Insulin - Age )
summary(glm_fm2)

par(mfrow = c(2,2))
plot(glm_fm2)

# Testing the Model
glm_probs <- predict(glm_fm2, newdata = pima_testing, type = "response")
glm_pred <- ifelse(glm_probs > 0.5, 1, 0)

confusionMatrix(factor(glm_pred), factor(pima_testing$Diabetes) ) 

acc_glm_fit <- confusionMatrix(factor(glm_pred), factor(pima_testing$Diabetes) )$overall['Accuracy']
#*
#*
#*
#*
#Decision Tree

#spliting data into 70 % and 30%
set.seed(1000)
intrain <- createDataPartition(y = pima$Diabetes, p = 0.7, list = FALSE)
train <- pima[intrain, ]
test <- pima[-intrain, ]

# Training The Model
treemod <- tree(Diabetes ~ ., data = train)

summary(treemod)

treemod 

plot(treemod)
text(treemod, pretty = 0)

# Testing the Model
tree_pred <- predict(treemod, newdata = test, type = "class" )
confusionMatrix(tree_pred, test$Diabetes)

acc_treemod <- confusionMatrix(tree_pred, test$Diabetes)$overall['Accuracy']
#*
#*
#*
#*
#*
#*
#SVM

#Preparing dataset
set.seed(1000)
intrain <- createDataPartition(y = pima$Diabetes, p = 0.7, list = FALSE)
train <- pima[intrain, ]
test <- pima[-intrain, ]

tuned <- tune.svm(Diabetes ~., data = train, gamma = 10^(-6:-1), cost = 10^(-1:1))
summary(tuned) # to show the results

svm_model  <- svm(Diabetes ~., data = train, kernel = "radial", gamma = 0.01, cost = 10) 
summary(svm_model)

svm_pred <- predict(svm_model, newdata = test)
confusionMatrix(svm_pred, test$Diabetes)



acc_svm_model <- confusionMatrix(svm_pred, test$Diabetes)$overall['Accuracy']
#*
#*
#*
#*
#*
#*
#modelComparison
accuracy <- data.frame(Model=c("Logistic Regression model","Decision Tree", "Support Vector Machine (SVM)"), Accuracy=c(acc_glm_fit,acc_treemod, acc_svm_model ))
ggplot(accuracy,aes(x=Model,y=Accuracy)) + geom_bar(stat='identity') + theme_bw() 