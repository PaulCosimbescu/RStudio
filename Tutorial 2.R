library(lpSolve)
ObjectiveCoefficients <- c(10,7)
ConstraintMatrix<-matrix(c(2,1,4,5,0,1), nrow = 3, byrow = TRUE)
ConstraintMatrix
directions <- c("<=", "<=", "<=")
RHS <- c(5000, 15000, 2000)
lp("max", ObjectiveCoefficients, ConstraintMatrix, diretions, RHS)
lp("max", ObjectiveCoefficients, ConstraintMatrix, diretions, RHS)$solution

OC <- c(6, 8, 1, 2)
CM <- matrix(c(1,2,-1,0, 2,1,1,1), nrow = 2, byrow = TRUE)
CM
SD <- c(">=",">=")
Ratio <- c(3, 2)
lp("min", OC, CM, SD, Ratio)
lp("min", OC, CM, SD, Ratio)$solution

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.from

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.to

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.from

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.to

lp("min", OC, CM, SD, Ratio, compute.sens = TRUE)$sens.coef.from

lp("min", OC, CM, SD, Ratio, compute.sens = TRUE)$sens.coef.to

lp("min", OC, CM, SD, Ratio, compute.sens = TRUE)$duals.from


lp("min", OC, CM, SD, Ratio, compute.sens = TRUE)$duals.to



x <- c(10, 3)
y <- matrix(c(15,4, 3,1), nrow = 2, byrow = TRUE)
z <- c("<=", "<=")
R <- c(3, 1/2)

lp("max", x, y, z, R)



