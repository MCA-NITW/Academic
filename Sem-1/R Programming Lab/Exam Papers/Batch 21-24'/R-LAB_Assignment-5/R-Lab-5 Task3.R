#Task 3

SumSquare<-function(x){
  b = 0
  while(TRUE){
    b = b+x*x;
    if(x==1)
    {
      break;
    }
    x=x-1
  }
  print(b)
}

a = readline("Enter a Number : ")
a<-as.integer(a)
SumSquare(a)