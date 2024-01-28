# double number
#convert 4 functions that are int flot str bool
def fdouble():
   num = int(input("Give me one number: "))
   print (num * 2)

fdouble()


# string in python "hello"
# function that is made for string => METHOD


text = "a duck walks into a bar"
print(
   text.upper()
 )

print(text.replace("duck","cat"))
print(text.capitalize())
print("python".capitalize())
print()
print()
print(text.split(" "))

name = "Toy"
friend = "Nat"

text2 = "{} is going to have lunch with {} ".format(name,friend)
print (f"Text 2 :{text2}")

#generic function vs. method
print('hello')
'hello'.upper()

txt = "Hello my friend"
x = txt.upper()
print(f"Upper : {x}")

x = txt.capitalize()
print(f"Capitalize : {x}")

x = txt.lower()
print(f"Lower : {x}")


#bool (boolean)
a = 10
b = 15
print (a > b)
print (a < b)

print(int(False) + 1)

print (a == b)
print (a != b)
print (a >= b)

a = 10
b = 15
c = 20
d = 25

print ( a > b and c < d)