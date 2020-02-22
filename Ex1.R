
ObjectiveCoefficients <- c(16, 10, 8, 9, 48, 60, 53)

row1 <-c(1, 1, 1, 1, 1, 1, 1)
row2 <-c(0.008, 0.007, 0.0085, 0.004, 0, 0, 0)
row3 <-c(0.008, 0.007, 0.0085, 0.004, 0, 0, 0)
row4 <-c(0.18, 0.032, 0, 0, 1, 0, 0)
row5 <-c(0.18, 0.032, 0, 0, 1, 0, 0)
row6 <-c(0.12, 0.011, 0, 0, 0, 1, 0)
row7 <-c(0.12, 0.011, 0, 0, 0, 1, 0)
row8 <-c(0, 0.001, 0, 0, 0, 0, 1)
row9 <-c(0, 0.001, 0, 0, 0, 0, 1)
row10 <-c(1, 0, 0, 0, 0, 0, 0)
row11 <-c(0, 1, 0, 0, 0, 0, 0)

ConstraintMatrix <-rbind(row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11)
ConstraintMatrix
directions <- c("=", ">=", "<=", ">=", "<=", ">=", "<=", ">=", "<=", "<=", "<=")
RHS <-c(1000, 6.5, 7.5, 30, 35, 10, 12, 11, 13, 75, 250)

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS)$solution

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.from

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$duals.to

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.from

lp("min", ObjectiveCoefficients, ConstraintMatrix, directions, RHS, compute.sens = TRUE)$sens.coef.to
