# Vincent Purcell
# Applied Multivariate Data Analysis - Summer 22 - HW2

# Q1 ------------------
X <- matrix(data=c(5,1,3), nrow=3, ncol=1, byrow=TRUE)
Y <- matrix(data=c(-1,3,1), nrow=3, ncol=1, byrow=TRUE)

print("Length of X")
sqrt(sum(X^2))
print("Length of Y")
sqrt(sum(Y^2))

print("t(X)*Y")
t(X)%*%Y

# Q2 ------------------
A <- matrix(data=c(1,0.5,0.5,1.25), nrow=2, ncol=2, byrow=TRUE)
B <- matrix(data=c(1,0.5,0.5,0.26), nrow=2, ncol=2, byrow=TRUE)
C <- matrix(data=c(1,0.5,0.5,0.01), nrow=2, ncol=2, byrow=TRUE)

solve(A)
solve(B)
solve(C)

# Q3 ------------------
A <- matrix(data=c(1,0.5,0.5,0.25), nrow=2, ncol=2, byrow=TRUE)
B <- matrix(data=c(1,0.5,1,0.5,1.25,2.5), nrow=2, ncol=3, byrow=TRUE)

eigen(A) #Positive Semidefinite
eigen(B) #Neither

# Q4 ------------------
X <- matrix(data=c(1,-2,3,-4), nrow=4, ncol=1, byrow=TRUE)
Y <- matrix(data=c(6,7,1,-2), nrow=4, ncol=1, byrow=TRUE)

t(X)%*%Y
(t(X)%*%Y)%*%(t(X)%*%Y)
Y%*%t(Y)
t(X)%*%(Y%*%t(Y))%*%X

# Q5 ------------------
a1 <- c(3,2,-1)
a2 <- c(1,4,7)
a3 <- c(0,4,2)
A <- rbind(a1,a2,a3)

b1 <- c(1,1,1)
b2 <- c(2,5,-1)
b3 <- c(3,1,-1)
B <- rbind(b1,b2,b3)

5*A
C <- B%*%A
C
solve(C)
solve(A)
solve(B)
solve(B)%*%solve(A)

# Q6 ------------------
A <- matrix(data=c(1,4,2,3), nrow=2, ncol=2, byrow=TRUE)
B <- matrix(data=c(2,2,2,5), nrow=2, ncol=2, byrow=TRUE)
eigen(A)
eigen(B)

# Q7 ------------------
A <- matrix(data=c(4,8,8,3,6,-9), nrow=2, ncol=3, byrow=TRUE)
eigen(A%*%t(A))
eigen(t(A)%*%A)

# Q8 ------------------
A <- matrix(data=c(2,1,1,3), nrow=2, ncol=2, byrow=TRUE)
B <- matrix(data=c(1,4,2,5,0,3), nrow=2, ncol=3, byrow=TRUE)
I2<- matrix(data=c(1,0,0,1), nrow=2, ncol=2, byrow=TRUE)
t(A%*%B)
t(B)%*%t(A)
A%*%I2
I2%*%B
det(A)

# Q9 ------------------
A <- matrix(data=c(1,0.5,0.5,1.25), nrow=2, ncol=2, byrow=TRUE)
B <- matrix(data=c(1,0.5,0.5,0.26), nrow=2, ncol=2, byrow=TRUE)
C <- matrix(data=c(1,0.5,0.5,0.01), nrow=2, ncol=2, byrow=TRUE)

# Q9.a
A%*%solve(A)
B%*%solve(B)
C%*%solve(C)

# Q9.b and Q9.c
eigenA <- eigen(A)
eigenB <- eigen(B)
eigenC <- eigen(C)
eigenA
eigenB
eigenC

# Q9.d
sqrt(sum(eigenA$vectors[1,]^2))
sqrt(sum(eigenA$vectors[2,]^2))
sqrt(sum(eigenB$vectors[1,]^2))
sqrt(sum(eigenB$vectors[2,]^2))
sqrt(sum(eigenC$vectors[1,]^2))
sqrt(sum(eigenC$vectors[2,]^2))

# Q9.e
eigenA$vectors[1,]%*%eigenA$vectors[2,]
eigenB$vectors[1,]%*%eigenB$vectors[2,]
eigenC$vectors[1,]%*%eigenC$vectors[2,]

# Q9.f
det(A)
eigenA$values[1]*eigenA$values[2]

det(B)
eigenB$values[1]*eigenB$values[2]

det(C)
eigenC$values[1]*eigenC$values[2]

# Q9.g
sum(diag(A))
eigenA$values[1]+eigenA$values[2]

sum(diag(B))
eigenB$values[1]+eigenB$values[2]

sum(diag(C))
eigenC$values[1]+eigenC$values[2]

# Q9.h
eigenA$values # Positive Definite
eigenB$values # Positive Definite
eigenC$values # Not Positive Definite

# Q10 ------------------

