read -p "Enter your name" name
read -p "Enter range" a b
substr=${name:$a:$b}
echo "$substr"