
ObjectiveCoefficients <- c(1.5, 1)
ConstraintMatrix <- matrix(c(4, 3, 
                             2, 3,
                             1, 1), nrow = 3, byrow = TRUE)
directions <- c("<=", "<=", "<=")
RHS <- c(252, 210, 84)

optimum <- lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)

best_sol <- optimum$solution
names(best_sol) <- c("x", "y") 
print(best_sol)

print(paste("Total cost: ", optimum$objval, sep=""))

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.from

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.to

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.from

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.to

