shinyUI(
  pageWithSidebar(
  #Application title
  headerPanel('Simulate Gaussian Random Numbers'),
  sidebarPanel(
  numericInput('meanval','mean of random distribution',90, min = 50, max = 200, step =5),
  numericInput('stdval','standard deviation of random distribution',20, min = 1, max = 200, step =5),
  numericInput('n','number of points', 100, min= 1,max = 10000, step = 10),
  sliderInput('mu','error term', 1, min =0, max = 1000,step = 1),
  submitButton('Submit')
      
    ),
  mainPanel(
    
    h4('Simulated Gaussian Random Number '),
    
    plotOutput('newPlot'),
    h4('Histogram of Simulated Data'),
    
    plotOutput('newHist')
    )
    
    
    
    
    
    
  )  
  
  
  
  
  
  
  
  
  
  
  
)