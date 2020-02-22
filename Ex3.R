ObjectiveCoefficients <- c(2, 1)
ConstraintMatrix <- matrix(c(1,2, 3,1, 1, 0), nrow = 3, byrow = TRUE)
directions <- c("<=", "<=", "<=")
RHS <- c(1, -2, 2)

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)