library(kableExtra)
data = read.csv("MutantWithGenders.csv")

data = data[order(data$TotalIssues,decreasing = TRUE),]

color.male = which(data$Gender == 'M')
color.female = which(data$Gender == 'F')

kbl(data, booktabs = T) %>%
  kable_styling(position = "center") %>%
  kable_styling(font_size = 20) %>%
  row_spec(color.male, color = "blue") %>%
  row_spec(color.female, color = "pink")
