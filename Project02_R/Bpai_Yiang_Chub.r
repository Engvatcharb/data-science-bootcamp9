 ## Tip : “print” in loop can not show in loop so we use flush.console()
gameon <- function(){
    game_graphic <- c("🔨" ,"📄","✂")
    game_value <- c(1,2,3)
    df <- data.frame(
        grap = game_graphic,
        val  = game_value
    )

   print ( "💚 Welcome Game เป่ายิ้งฉุบ 💚 ")
   flush.console()
   Input_nm <- readline ("What is your name : ")
   End_game <- TRUE
   Score_comp <- 0
   Score_Player <- 0
   while (End_game) {
      Input_userans <- readline (  "Please select number of  1 = 🔨 , 2 = 📄, 3 = ✂  , 4 = 🛑(Quit): "   )
      if ((as.integer(Input_userans) < 4) & (as.integer(Input_userans) > 0 )) {
        comp_result = sample(game_value,1)
        print ( paste("💚 Hello ! K 💚 ",Input_nm , "Result Game 🥇")  )
        print ( paste (Input_nm," : " , df[ df$val == Input_userans , "grap"]))
        print ( paste ("Robot : " , df[ df$val == comp_result , "grap"]))
        print ( paste ("Result : ",chk_result(comp_result,Input_userans)))
        if (chk_result(comp_result,Input_userans) =="Comp Win"){
            Score_comp <- Score_comp + 1
        }
        else if (chk_result(comp_result,Input_userans) != "Equal") {
            Score_Player <- Score_Player + 1
        }
        flush.console()
      } else if (as.integer(Input_userans == 4)) {
        End_game <- FALSE
      } else {
        print ("Please Choose only 1 - 4")
        flush.console()
      }
   }
   print ( paste (Input_nm,"'s score Total : ",as.character(Score_Player)))
   print ( paste ("Computer 's score Total : ",as.character(Score_comp)))
   flush.console()

  if (Score_Player > Score_comp) {
     print ( paste("💚 Congratulation K.", Input_nm , "You are the winner 🥇")  )
  } else {
     print ( paste("😭😭 Don't give up K.", Input_nm , "Try again")  )
  }

  flush.console()
}

chk_result <- function(comp_result,Input_userans){
   if ((comp_result == Input_userans)) {
       return("Equal")
   } else if (((comp_result != 3)&(Input_userans !=3))) {
      if (comp_result < Input_userans) {
          return ("Comp Loss")
      } else {
          return ("Comp Win")
      }
   } else  # comp_result or Input_userans = 3 {
      if (comp_result < Input_userans) {
         if (comp_result == 1) {
          return ("Comp Win")
         } else {
          return ("Comp Loss")
         }
     } else {
       if (Input_userans == 1) {
          return ("Comp Loss")
         } else {
          return ("Comp Win")
         }
     }
}
