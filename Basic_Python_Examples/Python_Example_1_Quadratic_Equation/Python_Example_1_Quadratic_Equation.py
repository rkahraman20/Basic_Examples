# Example_1_Quadratic_Equation
# Solves the quadratic equation (a*x**2 + b*x + c = 0).

import cmath

a = int(input("Please input the quadratic coefficient: "))
b = int(input("Please input the linear coefficient: "))
c = int(input("Please input the constant: "))

# Calculates the discriminant.
d = (b**2) - (4*a*c)

# Finds two solutions.
sol1 = (-b-cmath.sqrt(d))/(2*a)
sol2 = (-b+cmath.sqrt(d))/(2*a)

if d < 0:
    print('The roots are {0} and {1}'.format(sol1, sol2))
elif d == 0:
    print('The root is {0}'.format(sol1.real))
else:
    print('The roots are {0} and {1}'.format(sol1.real, sol2.real))