
testProp <- function(p1, n1, p2,n2){
        if((p1 >= 0 & p1 <=1) & (p2 >= 0 & p2 <=1)){
                p <- (p1*n1 + p2*n2)/(n1+n1)    ## Pooled sample proportion
                SE <- sqrt(p * (1-p) * ((1/n1) + (1/n2)))    ## Pooled sample standard error
                testStat <- (p1 -p2)/SE    ## Test statistic value
                testStat
        }
        else "INVALID PROPORTION(s)!!!"
}

library(shiny)
shinyServer(
        function(input, output) {
                output$op1 <- renderPrint({input$p1})
                output$on1 <- renderPrint({input$n1})
                output$op2 <- renderPrint({input$p2})
                output$on2 <- renderPrint({input$n2})
                output$oalpha <- renderPrint({as.numeric(input$alpha)})
                reactiveCal <- reactive({testProp(input$p1, input$n1, input$p2, input$n2)})
                output$testVal <- renderPrint({reactiveCal()})
                output$criticalVal <- renderPrint({qnorm(as.numeric(input$alpha),0,1)})
                output$criticalLevel <- renderPrint({round(dnorm(reactiveCal(),0,1),3)})
                output$result <- renderPrint({
                        ifelse(round(dnorm(reactiveCal(),0,1),3) < as.numeric(input$alpha), 
                               "Since alpha for rejection is less than l.o.s hence we reject the null hypothesis at the mentioned l.o.s", 
                               "Since alpha for rejection is greater than l.o.s hence we may accept the null hypothesis at the mentioned l.o.s")
                        })
        }
)

