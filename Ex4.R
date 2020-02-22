
ObjectiveCoefficients <- c(16.7, 20)
ConstraintMatrix <- matrix(c(1,2, 3,1), nrow = 2, byrow = TRUE)
directions <- c("<=", "<=")
RHS <- c(20, 25)

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)


ObjectiveCoefficients <- c(7.6, 20)
ConstraintMatrix <- matrix(c(1,2, 3,1), nrow = 2, byrow = TRUE)
directions <- c("<=", "<=")
RHS <- c(20, 25)

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)


ObjectiveCoefficients <- c(15.2, 20)
ConstraintMatrix <- matrix(c(1,2, 3,1), nrow = 2, byrow = TRUE)
directions <- c("<=", "<=")
RHS <- c(20, 25)

lp("max", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)