
ObjectiveCoefficients <- c(2, 1)
ConstraintMatrix <- matrix(c(1,1, 
                             1,-1), nrow = 2, byrow = TRUE)
directions <- c(">=", ">=")
RHS <- c(1, -2)

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.from

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.to

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.from

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.to