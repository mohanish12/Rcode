#The below code written in R helps to create Monte Carlo Simulations for a 4 game series. It predicts the proportion of simulations that
#contain at least one win for the Celtics out of 4 games


# This line of example code simulates four independent random games where the Celtics either lose or win. 
simulated_games <- sample(c("lose","win"), 4, replace = TRUE, prob = c(0.6, 0.4))

# Number of times to run the Monte Carlo Simulation
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Object `celtic_wins` replicates two steps for B iterations: (1) generating a random four-game series `simulated_games` using the example code, then (2) determining whether the simulated series contains at least one win for the Celtics.
celtic_wins <- replicate(B, {simulated_games <- sample(c("lose","win"), 4, replace = TRUE, prob = c(0.6, 0.4)); any(simulated_games == c("win"))})  


celtic_wins



# Calculate the frequency out of B iterations that the Celtics won at least one game. 

mean(celtic_wins)
