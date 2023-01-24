# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline # nolint

# Load packages required to define the pipeline:
library(targets)
library(tarchetypes) # Load other packages as needed. # nolint

# Set target options:
tar_option_set(
  packages = c("tibble"), # packages that your targets need to run
  format = "rds" # default storage format
  # Set other options as needed.
)

list(
  tar_target(
    name = data,
    command = tibble(x = rnorm(100), y = rnorm(100))
  ),
  tar_target(
    name = choice,
    command = TRUE
  ),
  tar_render(report, 'report.qmd')
)
