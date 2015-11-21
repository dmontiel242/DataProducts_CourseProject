gaussrand <- function(meanval,stdval,n, mu) rnorm(n,mean=meanval , sd = stdval)+rnorm(n,mean = meanval, sd = mu)

shinyServer(
  function(input,output){
    output$inputValue <- renderPrint({input$glucose})
    output$newPlot <- renderPlot({plot(gaussrand(input$meanval,input$stdval,input$n,input$mu),ylab = 'value',xlab = 'index')})
    output$newHist <- renderPlot({hist(gaussrand(input$meanval,input$stdval,input$n,input$mu),xlab = 'value', main = '')})
    }
    
  
  
  )