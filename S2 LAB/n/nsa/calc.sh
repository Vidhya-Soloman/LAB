echo "1.SUM"
echo "2.DIFF"
echo "3.MUL"
echo "4.DIV"
echo "5.MOD"
echo "6.EXIT"
read -p "Enter two numbers" a b 
read -p "Enter your choice" ch
case $ch in
"1")
echo "Sum=$((a+b))";;
"2")
echo "Diff=$((a-b))";;
"3")
echo "Mul=$((a*b))";;
"4")
echo "Div=$((a/b))";;
"5")
echo "Mod=$((a%b))";;
"6")
exit 1;;
*)
echo "Invalid";;
esac
