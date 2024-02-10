class ATM:
  pass
  
from random import randint

class ATM:
    def __init__(self,account_name,bank_name,initial): ##
        self.account_name = account_name
        self.bank_name = bank_name
        self.balance = initial
    ## string representation
    def __str__(self):
        return f"this is an account of {self.account_name}, bank: {self.bank_name}"

    ## method is the builded function for this class
    def check_balance(self):
        print(f"Balance: {self.balance} THB")

    def deposit (self,money):
       self.balance += money
       print (f"Deposit successfully: your new balance: {self.balance} THB")

    def withdraw(self,money):
       self.balance -= money
       print (f"Withdraw successfully: your new balance: {self.balance} THB")

    def get_OTP():
        otp = randint(1000,9999)
        ## {otp} not have {self.otp} because not define in __init__
        print(f"Your OTP: {otp} This OTP will be available in the next 2 minutes")

    def transfer_amt (self,money,acc_name_to,bank_name_to,balance_to):
        try:
            if (self.balance < money):
                print ("Balance not enough")
            else:  
                self.balance -= money
                balance_to   += money
                print(f"Transfer Account From : {self.account_name} , Amount : {money}")
                print(f"Balance: {self.balance} THB")    
                print(f"Transfer Account To : {acc_name_to}, Amount : {money}")
                print(f"Balance: {balance_to} THB")
        except:
            print ("Any Error")        

    def payment_bill (self,money,Pay_bill_for):
      try:
        if (self.balance < money):
          print ("Balance not enough")
        else:  
          self.withdraw(money)
          print(f"Pay bill of {Pay_bill_for} amount : {money} now current : {self.balance}")
      except:
        print ("Any Error")


## Create an instance from ATM Class
acc1 = ATM("Jenny","scb",500)
acc2 = ATM("Nat","tmb",200)
print ("==============================")
acc1.transfer_amt (100,acc2.account_name,acc2.bank_name,acc2.balance)
print ("==============================")
acc1.payment_bill(200,"Water")