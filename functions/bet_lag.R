
bet_lag <- function(model){
  df <- data.frame(model$X)[,-1]
  y <- model$y
  betas <- as.data.frame(model$coefficients)
  betas$Variable <- row.names(betas)
  colnames(betas) <- c("Coefficient", "Variable")
  betas <- betas[-1,]
  betas

for (i in 1:ncol(df)){
  betas$sd[i]<- sd(df[,i])
}

y_sd <- sd(y)
betas$Beta <- betas$Coefficient*betas$sd/y_sd
betas <- list(betas[4])
}

