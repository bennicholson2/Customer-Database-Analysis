data<-ecommerce_customer_data[-1,]
names(data) <- c('CustomerID','Age','Annual Income (k$)','Spending Score (1-100)',
                 'Gender','Total Purchases','Category Most Purchased',
                 'Purchased Recently')
data$CustomerID<-as.integer(data$CustomerID)
data$Age<-as.integer(data$Age)
data$`Annual Income (k$)`<-as.integer(data$`Annual Income (k$)`)
data$`Spending Score (1-100)`<-as.integer(data$`Spending Score (1-100)`)
data$Gender <- ifelse(data$Gender == "Male", 0, 1)
data$`Total Purchases`<-as.numeric(data$`Total Purchases`)

data$`Category Most Purchased`<- as.integer((factor(data$`Category Most Purchased`)))