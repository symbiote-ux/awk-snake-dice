#! /usr/bin/awk -f
BEGIN{
  currentp=1
  print "Let's play Ludo"
  for(i=1;i<=100;i++){
    arr[i]=i
  }
  arr[99]="🐍" 
  arr[89]="🐍"
  arr[59]="🐍"
  arr[19]="🐍"
  arr[1]="🤓"  
  board()
}
{
  dice()
  move()
  board()
}
function board(){
  a=100
  for(row=1;row<=10;row++){
    print "________________________________________"
    if(row==10 || row==8 || row==6 || row==4 || row==2){
      for(column=a-9;column<=a;column++){  
        if(column<10){
          printf "|"arr[column]"|"" "
        }
        else{
          printf "|"arr[column]"|"
      }
    }
  }
  else{
    for(column=a;column>=a-9;column--){
      printf "|"arr[column]"|"
    }
  }
  print""
  a=a-10
}
print "________________________________________"
}
function dice(){
  srand()
  x=rand()*5
  x=int(x)+1
}
function move(){
  arr[currentp]=currentp
  currentp+=x
  if(arr[currentp]=="🐍"){
    currentp=1
    print "Try again"
  }
  if(currentp>=100){
    currentp=100
    arr[currentp]="🤓"
    board()
    print "you won the game"
    exit
  }
  arr[currentp]="🤓"
}



