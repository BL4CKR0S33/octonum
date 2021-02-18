import phonenumbers
from phonenumbers import carrier, geocoder
import sys



try:
	phone_number = sys.argv[1]
except:
	print("[!] You didn't enter a phone number, run : octonum -h, --help or ? to show help")
	exit()

def phone_process(phone_number):
	if len(phone_number) < 10:
		print("[!] phone number is too short, minimum 10 chars")
		exit()
	else:
		pass
	try:
		number=phonenumbers.parse(phone_number)
		geocode = geocoder.description_for_number(number,'en')
		phone_carrier = carrier.name_for_number(number, 'en')
		if geocode == "":
			geocode = "N/A"
		else:
			pass
		print("[+] Phone number : {} | geocode : {} | carrier : {}".format(phone_number, geocode, phone_carrier))
	except:
		print("[!] There is an error, check your entries.")

if phone_number == "-h" or phone_number == "--help" or phone_number == "?":
	print("[?] To use the script just type: \n \n python3 octonum.py (phone number) \n example : python3 octonum.py +0123456789")
elif phone_number == "":
	print("Type -h, --help, ? to show help.")
else:
	phone_process(phone_number)
