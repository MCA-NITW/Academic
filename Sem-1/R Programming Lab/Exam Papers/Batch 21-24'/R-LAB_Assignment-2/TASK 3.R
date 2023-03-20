#TASK3


# : Operator
v=0:9
print(v)
v1 = readline(prompt = "Enter Number to search in above vector : ")
v1 = as.integer(v1)

# %in% operator
print(v1 %in% v)

M = matrix(c(1,2,3,4,5,6) , nrow =2 ,ncol = 3 ,byrow = TRUE)
N = matrix(c(10,20,30,40,50,60) , nrow =3 ,ncol = 2 ,byrow = TRUE)

# %*% operator
t = M %*% t(M)
x = M %*% N
print(t)
print(x)
