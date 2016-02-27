library(shiny)

shinyUI(fluidPage(
        #Application title
        titlePanel("Investment return of owning non-landed property"),
        
        sidebarLayout(
        
          sidebarPanel(
            h4("Property Search"),
            textInput('text', 'Area', value=''),
            numericInput('purchasePrice', 'Price (RM)', 550000),
            numericInput('monthlyRent', 'Monthly Rent (RM)', 550),
            h5('Costs'),
            numericInput('monthlyloanRepayments', 'Monthly loan Repayments (RM per month)', 503),
            numericInput('QuitRentperQuarter', 'Quit Rent (RM per quarter)', 1050),
            numericInput('waterPerQuarter', 'Water (RM per quarter)', 180),
            numericInput('managementFees', 'Management Fees (RM per quarter)', 38)
          ), 
          mainPanel(
            h4('Rental Yield (%)'),
            textOutput("rentalYield"),
            h4('Cashflow Per Year (RM)'),
            textOutput("cashflowPerYear"),
            br(),
            h4('Instructions'),
            helpText("This application is for property investors to calculate the rental yield and estimate the cashflow 
              of owning a non-landed property. Your real estate agent will be able to help you with the numbers."),
            code("Rental Yield"),
            helpText("Enter the property's purchase price and expected monthly rental income to calculate the rental yield."),
            code("Cash Flow"),
            helpText("Enter the property's holding costs to estimate the cashflow of owning the property.")
          )
        )
))


