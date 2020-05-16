# Gini CART 

# R is the dependent variable, the outcome
n <- 8
p.r1 <- 3/8
p.r2 <- 5/8
gini.global <- p.r1 * p.r2
gini.global

# which is the best indepedent variable that classifies R?
# M
p.m <- (4/8 * (0/4 * 4/4)) + (4/8 * (3/4 * 1/4))
p.m

gini.gain.m <- gini.global - p.m
gini.gain.m
# N
p.n <- (2/8 * (0 * 1)) + (3/8 * (1/3 * 2/3)) 
+ (3/8 * (2/3 * 1/3))
p.n 
gini.gain.n <- gini.global - p.n
gini.gain.n

# Q
p.q <- (3/8 * (2/3 * 1/3)) + (3/8 * (1/3 * 2/3)) + (2/8 * (0 * 1)) 
p.q
gini.gain.q <- gini.global - p.q
gini.gain.q

# tree
M 
M1 -> R2
M2 -> N
M2.N1 -> R2
M2.N2 -> R1
M2.N3 -> R1

