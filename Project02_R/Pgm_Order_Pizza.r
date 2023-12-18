Order_Pizza <- function(){
    library(googlesheets4)
    gs4_deauth()
    URL <- "https://docs.google.com/spreadsheets/d/1laW2_SCZUaa-yYcPOHmEWRIeUdCqlVhnNnEZtMm4jiw/edit?usp=sharing"
    df_Pizza  <- read_sheet(URL,sheet=1)
    cat ( "💚 Welcome Pizza Homemade Restaurant 🍕🍕🍕 \n") 
    print(df_Pizza, row.names = FALSE)  # Set row.names to FALSE to suppress [1]
    flush.console()
    ### Assign start variable
    quit_order <- TRUE
    chk_cnt <- 1
    Total_List <- list()
    Grand_Total <- 0
   while (quit_order) {
        Input_nm <- readline ("Order favorite Pizza : ")
        Input_total <- readline ("Number of Pizza : ")
        Summary_List <- list (No = Input_nm,
                             Pizza_Detail = df_Pizza [df_Pizza$No == Input_nm, 2],
                             Pizza_Order = Input_total,
                             Price = as.integer(Input_total) * df_Pizza [df_Pizza$No == Input_nm, 3])
        Total_List[[length(Total_List) + 1]] <- Summary_List
        check_more <- toupper(readline ("More Order (Y/N) : "))
        if (check_more == 'Y'){
            chk_cnt <- chk_cnt + 1
        } else {
            quit_order <- FALSE
        }
   }
    cat(sprintf("         🍽🍽🍽🥄🥄------Summarize Order Pizza------🍕🍕🍕           \n "))
    cat(sprintf("----------------------------------------------------------------\n"))
    cat(sprintf("%-5s%-30s%-20s%-15s\n", "No", "Pizza Detail", "Number of Order", "Price Total"))
    cat(sprintf("----------------------------------------------------------------\n"))
   for (i in 1:length(Total_List)) {
    current_order <- Total_List[[i]]
    cat(sprintf("%-5s%-30s%-20s%-15s\n", i, current_order$Pizza_Detail, current_order$Pizza_Order, as.character(current_order$Price)))
    Grand_Total <- Grand_Total + current_order$Price
  }
    cat(sprintf("Grand Total : %-15s\n", as.character(Grand_Total)))
}
