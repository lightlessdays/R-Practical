songs <- data.frame(
  song_name = c("Song 1", "Song 2", "Song 3", "Song 4", "Song 5"),
  mood = c("Happy", "Sad", "Angry", "Happy", "Sad"),
  online_link_play_song = c(
    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
    "https://www.youtube.com/watch?v=zVJx-tA1nO0",
    "https://www.youtube.com/watch?v=K6ZvWjGZMM0",
    "https://www.youtube.com/watch?v=3tmd-ClpJxA",
    "https://www.youtube.com/watch?v=ZMg0yQTkLgc"
  )
)

# Load the required packages
library(shiny)

# Define the UI for the Shiny app
ui <- fluidPage(
  # Create a drop-down menu for selecting the mood
  selectInput(inputId = "mood", label = "Select your mood:",
              choices = c("Happy", "Sad", "Angry")),
  
  # Display the list of songs that match the selected mood
  verbatimTextOutput(outputId = "song_list")
)

# Define the server for the Shiny app
server <- function(input, output) {
  # Filter the songs data frame to include only the songs that match the selected mood
  songs_filtered <- reactive({
    subset(songs, mood == input$mood)
  })
  
  # Display the list of songs that match the selected mood
  output$song_list <- renderPrint({
    songs_list <- songs_filtered()
    if (nrow(songs_list) == 0) {
      paste0("No songs found for ", input$mood, " mood.")
    } else {
      songs_list$song_name
    }
  })
  
  # Open the online link to play the selected song
  observeEvent(input$song_list, {
    url <- songs_filtered()$online_link_play_song[input$song_list]
    browseURL(url)
  })
}

# Run the Shiny app
shinyApp(ui, server)
