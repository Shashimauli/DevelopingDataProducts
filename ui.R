
library(shiny)

shinyUI(
	pageWithSidebar(
	        # Application title
	        headerPanel("Two-tailed Test of proportions"),
		
	        sidebarPanel(
	                numericInput(inputId = 'p1', label = 'Proportion 01 (p1)', value = 0.5, min = 0.0, max = 1.0, step = 0.01),
	                numericInput(inputId = 'n1', label = 'Sample Size 01 (n1)', value = 1000),
	                numericInput(inputId = 'p2', label = 'Proportion 02 (p2)', value = 0.5, min = 0.0, max = 1.0, step = 0.01),
	                numericInput(inputId = 'n2', label = 'Sample Size 02 (n2)', value = 1000),
	                textInput(inputId = "alpha", label = "Level of significance", value = 0.05),
	                submitButton('Submit')
	        ),
	        
	        mainPanel(
	                h1('Results of the proportions test'),
	                h2('Null hypothesis: p1 = p2'),
	                h2('Alternate hypothesis: p1 != p2'),
	                h4('Sample Proportion from population 01'),
	                verbatimTextOutput("op1"),
	                h4('Sample size of population 01'),
	                verbatimTextOutput("on1"),
	                h4('Sample Proportion from population 02'),
	                verbatimTextOutput("op2"),
	                h4('Sample size of population 02'),
	                verbatimTextOutput("on2"),
	                h4('Test statistic value is'),
	                verbatimTextOutput("testVal"),
	                h4('Level of significance'),
	                verbatimTextOutput("oalpha"),
	                h4('Critical value of Z at the mentioned l.o.s is'),
	                verbatimTextOutput("criticalVal"),
	                h4('Alpha for rejection is'),
	                verbatimTextOutput("criticalLevel"),
	                h4('Conclusion of two tailed test of proportions is'),
	                verbatimTextOutput("result")
	        )
	)
)

