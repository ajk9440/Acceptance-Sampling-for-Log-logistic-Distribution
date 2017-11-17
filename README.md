# Acceptance-Sampling-for-Log-logistic-Distribution
To find the lot size for given set of paramenters in single sampling plan
loglogaccept<-function(pstar,beta,tbysig,c)
 { p=(tbysig^beta)/(1+(tbysig^beta))
   for(n in 1:1000)
    { s=0
     for (i in 0:c)
          {
            s= s+(choose(n,i)*(p^i))*((1-p)^(n-i))
           }
            if (s<=1-pstar) 
            { print(n-1)
              break()
              }
              
          } 
}



