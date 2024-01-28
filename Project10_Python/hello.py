# comment is message into my code
# let 's learn python 101 together
# if you want to comment in your code press key board CTRL + /

print ("hello world")
print("this is a new file")
print ("bootcamp live")
print ("this is cool!")


# create yourown function
def greeting(name = "Trump", friend = "Biden"):
  print(f"hello world {name}  we are going to meet {friend}")
  

# call function
greeting("Jenny","Toy")

greeting()

greeting(friend="North",name="Nat")

#fstring Template
# using = to declare vairable such as variable = value
name = "Jenny"
friend = "Toy"

result =f"{name} is going to meet {friend} for lunch."

print(result)

# naming convention
# Rule of naming convention
# 1. using lower letter in variable
# 2. Don't start numeric in naming
# 3. Don't use reserve word in creating naming such as lower
### Using Thai Language in Python is better than R programming
my_en_name  = "Jenny"
sales_2024 = "5M"

# get user input
username = input("What 's your name? ")
print("Hi! " + username)

#greeting  update V2

def greeting_name():
  username = input("What is your name: ")
  text = f"Hi! {username}, what can I do for you today?"
  print(text)

greeting_name()

# double number
# From code below is not correct because num is str so *2 that mean cat str 2 times so if you want to multiple , you must convert string to numeric or float in def fdouble2
def fdouble():
  num = input("Give me one number: ")
  print (num * 2)

fdouble()

def fdouble2():
  num = int(input("Give me one number: "))
  print (num * 2)

fdouble2()




