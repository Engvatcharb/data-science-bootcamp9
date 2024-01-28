#Game: Pao Ying chub

# Function checking result
def chk_result(comp_result,Input_userans):
 if ((comp_result == Input_userans)):
   return("Equal")
 elif (((comp_result != 3)&(Input_userans !=3))):
  if (comp_result < Input_userans):
      return ("Comp Loss")
  else:
      return ("Comp Win")
 else:  # comp_result or Input_userans = 3 {
  if (comp_result < Input_userans):
    if (comp_result == 1):
      return ("Comp Win")
    else:
      return ("Comp Loss")
  else:
   if (Input_userans == 1):
      return ("Comp Loss")
   else:
      return ("Comp Win")
     
# Main Function to Call play a game : Pao Ying Chub
# def Game_PaoYingChub():
game_computer = {
  "series1" : {
    "gm_graphic" : "🔨",
    "gm_value" : 1
  },
  "series2" : {
    "gm_graphic" : "📄",
    "gm_value" : 2
  },
  "series3" : {
    "gm_graphic" : "✂",
    "gm_value" : 3
  }
}
 # game_computer ["series3"] ["gm_graphic"]
print ( "💚 Welcome Game เป่ายิ้งฉุบ 💚 ")
Input_nm = input("What is your name : ")
Chk_Loop = True
Score_comp = 0
Score_Player = 0
while Chk_Loop:
  input_userans = input("Please select number of  1 = 🔨 , 2 = 📄, 3 = ✂  , 4 = 🛑(Quit): ")
  if (int(input_userans) < 4) and (int(input_userans) > 0):
   import random
   comp_result = random.randrange (1,3)
   txt_sr = "series"+str(input_userans)
   txt_cp = "series"+str(comp_result)
   input_cp = game_computer [txt_cp] ["gm_value"]
   input_player = game_computer [txt_sr] ["gm_value"]
   chk_res = chk_result(input_cp,input_player)
   print ( f"💚 Hello ! K 💚 {Input_nm} Result Game 🥇")
   print ( Input_nm + " : " + game_computer[txt_sr]["gm_graphic"])
   print ( "Robot : "+ game_computer[txt_cp]["gm_graphic"])
   print ( "Result : ",chk_res) 
   if (chk_res =="Comp Win"):
         Score_comp = Score_comp + 1
   elif (chk_res != "Equal"):
         Score_Player = Score_Player + 1
  elif (int(input_userans) == 4):
         Chk_Loop = False
  else :
         print ("Please Choose only 1 - 4")
print ( f"{Input_nm}'s score Total : {Score_Player}" )
print ( f"Computer 's score Total : {Score_comp}")
if (Score_Player > Score_comp):
   print ( f"💚 Congratulation K.{Input_nm} You are the winner 🥇")
else:
   print ( f"😭😭 Don't give up K.{Input_nm} Try again")



