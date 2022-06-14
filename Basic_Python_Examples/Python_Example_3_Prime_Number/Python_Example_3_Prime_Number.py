# Example_3_Prime_Number
# Checks if any entered number is a prime number or not.

num = int(input("Please input any number to check whether it is a prime number: "))

# Define a flag variable.
flag = False

# Prime numbers are greater than 1.
if num > 1:
    # Check for factors.
    for i in range(2, num):
        if (num % i) == 0:
            # If factor is found, set flag to True.
            flag = True
            # Break out of loop.
            break

# Check if flag is True.
if flag:
    print(num, "is not a prime number.")
else:
    print(num, "is a prime number.")