library(UsingR)

eff <- read.csv('1230-03.txt',header=F)
eff <- as.matrix(eff)
phi <- matrix(0, nrow = length(eff), ncol=1)
shinyServer(
  function(input, output) {
    output$Mywavelet <- renderPlot({
      scale <- input$scale
      phi[1:(2*scale),1] <- rbind(matrix(1/scale, nrow=scale, ncol=1), matrix(-1/scale, nrow=scale, ncol=1))
      w <- convolve(eff, phi)
      par(mfrow=c(2,1), pin = c(6, 2))
      plot(eff[,1],ylab = 'Signal', xlab = 'Time',type = 'l')
      plot(w, xlab = 'Time', ylab = 'Wavelet',type = 'l')
    })
  }
)
