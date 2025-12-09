# Once upon a time... R example
vampire <- list(location='Transylvania', birth=1428, death=1476, weaknesses=c('Sunlight','Garlic'))
age <- function(v) return(v$death - v$birth)
cat(vampire$location, 'age:', age(vampire), '\n')
# small vector operations
years <- seq(vampire$birth, vampire$death, by=100)
print(years)
