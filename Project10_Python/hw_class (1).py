class DataAnalyst:
  def __init__(self,name,company,age,response):
    self.name = name
    self.company = company
    self.age = age
    self.response = response

  def introduce(self):
    print (f"Hello my name is {self.name}. I work as {self.company}")
    print (f"My responsible is {self.response}")
  
  def Myage(self):
    print ("How old are you?")
    print (f"I am {self.age} years old")

  def ReasonDA(self):
    print (f"{self.name} loves analytic")

d1 = DataAnalyst("Jenny","AIS",48,"Get Requirement and interpret Data")
d2 = DataAnalyst("Tonny","ABC",52,"Clean Data")
d3 = DataAnalyst("Jimmy","AIS",32,"Summarize Report and Preparing Story Telling")

datalist = [d1,d2,d3]
for i in datalist:
  i.introduce()
  i.Myage()
  i.ReasonDA()
  print()

