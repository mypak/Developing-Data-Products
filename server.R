library(shiny)
shinyServer(function(input,output){ 
  output$rentalYield <- renderText({ calculateRentalYield(input$monthlyRent, input$purchasePrice) })
  output$cashflowPerYear <- renderText({calculateYearlyCashflow(input$monthlyRent, input$QuitRentperQuarter, input$waterPerQuarter, input$managementFees, input$monthlyloanRepayments)})
  }
)

calculateRentalYield <- function (monthlyRent, purchasePrice) 
{
  result <- monthlyRent * 12 / purchasePrice * 100
  return(round(result, digits = 2))
}

calculateYearlyCashflow <- function(monthlyRent, QuitRent, water, managementFees, monthlyloanRepayments)
{
  result <- monthlyRent * 12 - (QuitRent + water + managementFees) * 4 - monthlyloanRepayments * 12
  return(round(result, digits = 2))
}

         