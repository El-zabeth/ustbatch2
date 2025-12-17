#Write a shell script that uses a function to check whether a number is positive, negative, or zero using if.

check() {
    if [ $num -gt 0 ]; then
        echo "$num is a positive number!"
    elif [ $num -lt 0 ]; then
        echo "$num is a negative number!"
    else
        echo "$num is zero!"
    fi
}
read -p "Enter a number: " num
check
