#Write a shell script to calculate the sum of numbers from 1 to N using a for loop inside a function.

sum() {
    s=0
    for ((i=1;i<=$n;i++))
    do
        s=$((s+i))
    done
    echo "Sum of no.s from 1 to $n is $s"
}

read -p "Enter a number: " n
sum