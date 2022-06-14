# Example_2_Leap_Year
# Checks if any entered year is a leap year or not.

year = int(input("Please input any year to check whether it is a leap year: "))

# If divided by 400 then it is a leap year.
if (year % 400 == 0):
    print("{0} is a leap year.".format(year))

# If divided by 4 but not divided by 100 means it is a leap year.
elif (year % 4 == 0) and (year % 100 != 0):
    print("{0} is a leap year.".format(year))

# If not divided by 400 but divided by 100 means it is not a leap year.
elif (year % 400 != 0) and (year % 100 == 0):
    print("{0} is not a leap year.".format(year))

# If not divided by 4 means it is not a leap year.
else:
    print("{0} is not a leap year.".format(year))