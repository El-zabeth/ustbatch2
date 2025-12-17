#Write a shell script that shows a menu in a while loop and performs add, subtract, multiply, divide using functions.

add() {
    echo "Sum= $((a+b))"
}
subtract() {
    echo "Difference= $((a-b))"
}
multiply() {
    echo "Product= $((a*b))"
}
divide() {
    echo "Quotient= $((a/b))"
}

ch=1
while [ $ch -ne 0 ] 
do
    read -p "Enter 2 numbers: " a b
    echo "1.ADD  2.SUBTRACT  3.MULTIPLY  4.DIVIDE"
    read -p "Enter your choice: " ch
    if [ $ch -eq 1 ]; then
        add
    elif [ $ch -eq 2 ]; then
        subtract
    elif [ $ch -eq 3 ]; then
        multiply
    elif [ $ch -eq 4 ]; then
        divide
    else
        echo "Invalid option!"
    fi
    read -p "Do you want to continue(1/0): " ch
done
echo "Program terminated!"