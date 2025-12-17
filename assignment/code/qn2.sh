#Write a shell script to calculate the factorial of a number using a while loop inside a function

fact() {
    f=1
    while [ $num -gt 0 ]
    do
        f=$((f*num))
        num=$((num-1))
    done
    echo "Factorial=$f"
}

read -p "Enter a number: " num
fact
