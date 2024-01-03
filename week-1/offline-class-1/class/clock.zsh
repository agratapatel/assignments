# creating a terminal clock in zsh shell
# after this - make an executable file using chmod +x script-name.zsh command and run it using ./script-name.zsh command in terminal

while true; do
    clear # clears the terminal screen
    echo "Current time: $(date +%T)" # prints the current time
    sleep 1 # sleeps for 1 second before updating the time again
done
