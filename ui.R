shinyUI(navbarPage("Wavelet",
  tabPanel("Instruction",
           p('This application is a simple demonstration of Haar wavelet transform of a 1 dimensional signal.'),
           p('The example data is simulated time sequence. The sequence is a step-like signal with Gaussian noise.'),
           p('By using wavelet transform of different scale, these transitions can be identified more clearly.'),
           p('The transitions in the signal correspond to these peaks and valleys in wavelet.')),
  
  tabPanel("Wavelet",
  headerPanel("Wavelet"),
  sidebarPanel(
    sliderInput('scale', 'Select the wavelet scale',value = 10, min = 2, max = 100, step = 1,),
    submitButton('Submit')
  ),
  mainPanel(
    plotOutput('Mywavelet')
  )
)))
