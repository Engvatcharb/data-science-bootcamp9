## 5 concepts essential for programming


## [1] variable
## [2] data types
## [3] data structure: list tuple dict set
## [4] control flow: if for while
## [5] function: def


## starts with list[]
shopping_list = []  ## empty list
shopping_list = ["egg","milk","bread","tissue","salmon","wine"]  

print(shopping_list)
## DRY - Donot repeat yourself
# print(shopping_list[0])
# print(shopping_list[1])
# print(shopping_list[2])

for item in shopping_list:
  if (item == "milk" or item == "wine"):
    continue # Skip item
  else:
    print(item)

print ()
print ()
#Start fresh
fruits = ["apple","banana","orange"]

# list method
# .append() # add item
# in place : 
# list is mutable object that you can change data in list
fruits.append("grape")
print(fruits)

# remove items using .pop() is delete in the last position
fruits.pop()
print(fruits)

# remove : delete any position that you want

fruits[0] = "green apple"
fruits[2] = "pineapple"

print(fruits)
print(fruits[0])
print ()
print ()
name = "Python"
print(name[0])
print(name[1])
print(name[5])
print(name[-1]) # the last char
print(name[-2]) # the 2nd last char

# if I want to change some thing in string can not because this is immutable
# we change Python to Cython

print ("C"+name[1:])
print() 
print()
## Declare new list
fav_books = [
  "Naked Statistics",
  "Think like a Freak",
  "Deep work"
]
fav_books.append ("Business Made Simple")
print (fav_books)
## insert
fav_books.insert(1,"Coach Builder)")
print (fav_books)
## sort 
fav_books.sort()
print (fav_books)





  
