#TASK 1

n = readline("Enter N Value (Number of Rows in First Matrix) : ")
n <- as.integer(n)
m = readline("Enter M Value (Number of Column in First Matrix) : ")
m <- as.integer(m)
print("Enter n*m Elements :")

M1 = matrix(c<-scan(),nrow=n,ncol=m,byrow=TRUE)

p = readline("Enter P Value (Number of Rows in Second Matrix) : ")
p <- as.integer(p)
q = readline("Enter Q Value (Number of Column in Second Matrix) : ")
q <- as.integer(q)
print("Enter p*q Elements : ")
M2 = matrix(d<-scan(),nrow=p,ncol=q,byrow=TRUE)

a = readline("Enter Scaler number by which you wanna divide 1st and 2nd Matrix : ")
a <- as.integer(a)

if(n==p){
  if(m==q){
    print("Addition of 2 Matrices is : ")
    print(M1+M2)
    print("Subtraction of 2 Matrices is : ")
    print(M1-M2)
  }else{
    print("Addition of 2 Matrices is not Possible as m not equal to q")
    print("Subtraction of 2 Matrices is not Possible as m not equal to q")
  }
}else{
  print("Addition of 2 Matrices is not Possible as n not equal to p")
  print("Subtraction of 2 Matrices is not Possible as n not equal to p")
}

if(m==p)
{
  print("Matrix Multiplication of 2 Matrices is : ")
  print(M1 %*% M2)
}else{
  print("Matrix Multiplication of 2 Matrices is not Possible as m not equal to p")
}
print("Matrix 1 after division from Given Scaler")
print(M1/a)
print("Matrix 2 after division from Given Scaler")
print(M2/a)

