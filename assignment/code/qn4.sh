#Write a shell script that uses a function to check whether a given number is prime using if and for.

prime() {
    for ((i=3;i<$((num/2));i+=2))
    do
        if [ $((num%i)) -eq 0 ]; then
            echo "Not Prime!"
            exit
        fi
    done
    if [ $num -eq 1 ]; then
        echo "Neither Prime nor Composite!"
        exit
    fi
    echo "Prime!"
}

read -p "Enter a number: " num
prime