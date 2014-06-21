shinyUI(pageWithSidebar(
  headerPanel("Hist a norm distribution"),
  sidebarPanel(
    sliderInput('mu', 'Input the mean',value = 0, min = -100, max = 100, step = 0.1,)
  ,
  sliderInput('var', 'Input the variance',value = 1, min = 0.05, max = 100, step = 0.05,)
,
numericInput("num", 
             label = h3("Number of sampling"), 
             value = 100),
submitButton('Submit'),

helpText("Input the mean and variance for a norm distribution
                   and set the number of sample.When you click submit ,
                   this webside will creeate the sample as you wished
                   and hist it.The mean of your sample and the variance
                   will at the xlab.")
),
  mainPanel(
    plotOutput('newHist'),
    h3('Results of prediction'),
    h4('The mean you entered'),
    verbatimTextOutput("mumu"),
    h4('The variance you entered '),
    verbatimTextOutput("varvar")
    
    )
))