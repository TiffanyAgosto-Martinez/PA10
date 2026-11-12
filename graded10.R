# graded10.R
# Tiffany Agosto-Martinez
# 11/12/2026
# Chaining functions together with pipes using dplyr and tidyverse

# Use pipes (%>%) to connect each step to create streamlined pipeline commands
nyc_flights <- flights %>%
            # use arrange() to sort the data  
            arrange(sched_dep_time, desc(dep_delay)) %>%
            # use select() to retrieve specific columns
            select(sched_dep_time, dep_delay, carrier, day)
print(nyc_flights)