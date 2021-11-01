.package_env <- new.env(parent = emptyenv())

cache <- function(x, name, env = .package_env) {
  assign(name, x, env)
}

clearCache <- function(env = .package_env) {
  rm(list = ls(env = env, all.names = TRUE), envir = env)
  message("Cache cleared!")
}

retrieve <- function(name, env = .package_env) {
  get(name, envir = env)
}
