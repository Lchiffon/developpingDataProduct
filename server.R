
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
          num<-input$num
          mu<-input$mu
          var<-input$var
          x=rnorm(num,mu,var)
          hist(x,breaks=3*sqrt(num),col=rainbow(factor(x)),
          xlab=paste("Sample mu = ", round(mean(x),2),
                     "Sample Var = ", round(sqrt(var(x)), 2)))
          
    })
    output$mumu <- renderPrint({input$mu})
    output$varvar <- renderPrint({input$var})
    
  }
)