# This a simple python3 script it only pulls out geocode and carrier of a phone
# number. The geocode may not work on some countries.

# How to use ?

```
To use the script just type: 

 python3 octonum.py (phone number) 
 example : python3 octonum.py +0123456789 
```

# To install in your system run ./install.sh
# then execute it from the terminal by typing : octonum (phone number) or
# octonum -h for help


# You can automate it by the folowing command :

# for phone_number in $(cat "Phone list"); do octonum $phone_number | tee output.txt; done

# Change "Phone list" with a phone numbers list, and you can change the output.txt to 
# what everyou want...



# Thanks for using my tool