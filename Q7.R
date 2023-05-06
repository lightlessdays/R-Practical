# Create medicines database
medicines <- data.frame(
  manufacturer = c("ABC Pharma", "XYZ Labs", "PQR Pharmaceuticals", "MNO Meds", "LMN Drugs"),
  composition = c("Acetaminophen", "Ibuprofen", "Naproxen", "Aspirin", "Ibuprofen"),
  price = c(5.99, 8.99, 7.99, 4.99, 9.99)
)

# Define function to find alternative medicines with the same composition
find_alternatives <- function(med_name) {
  alternatives <- medicines[medicines$composition == med_name, ]
  if (nrow(alternatives) == 0) {
    message("No alternatives found for ", med_name)
  } else {
    message("Alternatives for ", med_name, ":")
    print(alternatives)
  }
}

# Set up interactive application
library(shiny)
ui <- fluidPage(
  titlePanel("Find Alternative Medicines"),
  sidebarLayout(
    sidebarPanel(
      textInput("med_name", "Enter medicine composition:", placeholder = "e.g. Ibuprofen")
    ),
    mainPanel(
      verbatimTextOutput("alt_meds")
    )
  )
)

server <- function(input, output) {
  output$alt_meds <- renderPrint({
    find_alternatives(input$med_name)
  })
}

shinyApp(ui = ui, server = server)
