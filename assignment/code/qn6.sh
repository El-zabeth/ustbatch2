#Write a shell script that uses a function to check if a file exists and whether it has read, write, and execute permissions.

file_check() {
    if [ -e "$file" ]; then
        echo "File exists!"

        if [ -r $file ]; then
            echo "Read permission: Yes!"
        else
            echo "Read permission: No!"
        fi
        if [ -w $file ]; then
            echo "Write permission: Yes!"
        else
            echo "Write permission: No!"
        fi
        if [ -x $file ]; then
            echo "Execute permission: Yes!"
        else
            echo "Execute permission: No!"
        fi
    else
        echo "File doesn't exist!"
    fi
}

read -p "Enter a file name: " file
file_check