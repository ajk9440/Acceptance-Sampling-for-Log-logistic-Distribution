pstar=0.75
beta=2
tbysig=0.628
c=5
p=0.28
for (n in 1:1000){
s=0
for (i in 0:c){
s=s+(choose(n,i)*(p^i))*((1-p)^(n-i))
}
if (s<=0.25){
  print(n-1)
  break()
}
}
