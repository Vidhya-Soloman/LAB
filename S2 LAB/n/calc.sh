echo "1.SUM";
echo "2.DIFF";
echo "3.MUL":
echo "4.DIV";
echo "5.MOD";
echo "6.EXIT";
read -p "Enter two numbers:" a b
read -p "Enter your choice: " ch
case $ch in
"1")
echo "sum=$((a+b))";;
"2")
echo "diff=$((a-b))";;
"3")
echo "mul=$((a*b))";;
"4")
echo "div=$((a/b))";;
"5")
exit 1;;
*)
echo "Invaid input";;
esac