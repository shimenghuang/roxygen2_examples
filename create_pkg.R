usethis::create_package(
  "roxygen2eg",
  fields = list("Title" = "Minimal Examples of Roxygen2",
                "Version" = "0.1.0",
                `Authors@R` = 'person("Shimeng", "Huang", email = "shimeng.huang@roche.com", role = c("aut", "cre"))',
                "Description" = "This is a toy package meant to demonstrate some usage of roxygen. \
                                Adapted from https://gist.github.com/stevenpollack/141b14437c6c4b071fff."),
  rstudio = FALSE,
  roxygen = TRUE,
  open = FALSE
)
