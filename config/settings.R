# Four generating settings from the manuscript; all use K = 2 and n = 100.
simulation_settings <- function() {
  list(
    S1 = list(id = "S1", description = "Base setting", n = 100L,
              theta = c(-0.5, 0.5), beta = 1, gamma = c(0.5, 0.5)),
    S2 = list(id = "S2", description = "Unbalanced latent groups", n = 100L,
              theta = c(-0.5, 0.5), beta = 1, gamma = c(0.25, 0.75)),
    S3 = list(id = "S3", description = "Weaker covariate effect", n = 100L,
              theta = c(-0.5, 0.5), beta = 0.5, gamma = c(0.5, 0.5)),
    S4 = list(id = "S4", description = "Reduced group separation", n = 100L,
              theta = c(-0.35, 0.35), beta = 1, gamma = c(0.5, 0.5))
  )
}

simulation_control <- function() {
  list(reps = 100L, starts = 5L, base_seed = 20261012L,
       max_outer = 500L, max_inner = 500L,
       tol_outer = 1e-4, tol_inner = 1e-4,
       alpha_floor = 1e-8, initialization = "degree", save_networks = FALSE)
}
