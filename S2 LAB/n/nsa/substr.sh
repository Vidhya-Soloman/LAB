read -p "Enter the message" str
read -p "Enter the range" a b
substr=${str:$a:$b}
echo $substr