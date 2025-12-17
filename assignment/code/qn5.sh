#Write a shell script to reverse a number using a while loop and if conditions where required.

reverse() {
    rev=0
    while [ $num -gt 0 ]
    do
        rem=$((num%10))
        rev=$((rev*10+rem))
        num=$((num/10))
    done
    echo "Reverse: $rev"

}

read -p "Enter a number: " num
reverse