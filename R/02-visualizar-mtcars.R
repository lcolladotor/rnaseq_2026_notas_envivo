library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Leo")

## Directorios para el proyecto
dir_plots <- here::here("figuras")
dir_rdata <- here::here("processed-data")

## Crear directorio para las figuras y archivos
dir.create(dir_plots, showWarnings = FALSE)
dir.create(dir_rdata, showWarnings = FALSE)

## Hacer una imagen de ejemplo
pdf(file.path(dir_plots, "mtcars_gear_vs_mpg.pdf"), useDingbats = FALSE)
ggplot(mtcars, aes(group = gear, y = mpg)) +
    geom_boxplot()
dev.off()

## Guardar datos
save(mtcars, file = file.path(dir_rdata, "mtcars.Rdata"))

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()
# ─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────
#  setting  value
#  version  R version 4.5.2 (2025-10-31)
#  os       macOS Tahoe 26.2
#  system   aarch64, darwin20
#  ui       Positron
#  language (EN)
#  collate  en_US.UTF-8
#  ctype    en_US.UTF-8
#  tz       America/Mexico_City
#  date     2026-02-10
#  pandoc   3.7.0.2 @ /opt/homebrew/bin/pandoc
#  quarto   1.4.550 @ /usr/local/bin/quarto

# ─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────
#  package      * version    date (UTC) lib source
#  brio           1.1.5      2024-04-24 [1] CRAN (R 4.5.0)
#  cachem         1.1.0      2024-05-16 [1] CRAN (R 4.5.0)
#  cli            3.6.5      2025-04-23 [1] CRAN (R 4.5.0)
#  colorout     * 1.3-2      2025-05-09 [1] Github (jalvesaq/colorout@572ab10)
#  coro           1.1.0      2024-11-05 [1] CRAN (R 4.5.0)
#  devtools     * 2.4.6      2025-10-03 [1] CRAN (R 4.5.0)
#  dichromat      2.0-0.1    2022-05-02 [1] CRAN (R 4.5.0)
#  dplyr          1.1.4      2023-11-17 [1] CRAN (R 4.5.0)
#  ellipsis       0.3.2      2021-04-29 [1] CRAN (R 4.5.0)
#  ellmer         0.4.0.9000 2026-02-02 [1] Github (tidyverse/ellmer@9cfad92)
#  farver         2.1.2      2024-05-13 [1] CRAN (R 4.5.0)
#  fastmap        1.2.0      2024-05-15 [1] CRAN (R 4.5.0)
#  fs             1.6.6      2025-04-12 [1] CRAN (R 4.5.0)
#  generics       0.1.4      2025-05-09 [1] CRAN (R 4.5.0)
#  ggplot2      * 4.0.1      2025-11-14 [1] CRAN (R 4.5.2)
#  gitcreds       0.1.2      2022-09-08 [1] CRAN (R 4.5.0)
#  glue           1.8.0      2024-09-30 [1] CRAN (R 4.5.0)
#  gtable         0.3.6      2024-10-25 [1] CRAN (R 4.5.0)
#  here         * 1.0.2      2025-09-15 [1] CRAN (R 4.5.0)
#  httr2          1.2.2      2025-12-08 [1] CRAN (R 4.5.2)
#  labeling       0.4.3      2023-08-29 [1] CRAN (R 4.5.0)
#  lifecycle      1.0.5      2026-01-08 [1] CRAN (R 4.5.2)
#  magrittr       2.0.4      2025-09-12 [1] CRAN (R 4.5.0)
#  memoise        2.0.1      2021-11-26 [1] CRAN (R 4.5.0)
#  otel           0.2.0      2025-08-29 [1] CRAN (R 4.5.0)
#  pillar         1.11.1     2025-09-17 [1] CRAN (R 4.5.0)
#  pkgbuild       1.4.8      2025-05-26 [1] CRAN (R 4.5.0)
#  pkgconfig      2.0.3      2019-09-22 [1] CRAN (R 4.5.0)
#  pkgload        1.5.0      2026-02-03 [1] CRAN (R 4.5.2)
#  prompt         1.0.2.9000 2024-12-10 [1] Github (gaborcsardi/prompt@17bd0e1)
#  purrr          1.2.1      2026-01-09 [1] CRAN (R 4.5.2)
#  R6             2.6.1      2025-02-15 [1] CRAN (R 4.5.0)
#  rappdirs       0.3.4      2026-01-17 [1] CRAN (R 4.5.2)
#  RColorBrewer   1.1-3      2022-04-03 [1] CRAN (R 4.5.0)
#  remotes        2.5.0      2024-03-17 [1] CRAN (R 4.5.0)
#  rlang          1.1.7      2026-01-09 [1] CRAN (R 4.5.2)
#  rprojroot      2.1.1      2025-08-26 [1] CRAN (R 4.5.0)
#  rsthemes       0.5.0      2025-05-09 [1] Github (gadenbuie/rsthemes@96fb91a)
#  rstudioapi     0.18.0     2026-01-16 [1] CRAN (R 4.5.2)
#  S7             0.2.1      2025-11-14 [1] CRAN (R 4.5.2)
#  scales         1.4.0      2025-04-24 [1] CRAN (R 4.5.0)
#  sessioninfo  * 1.2.3      2025-02-05 [1] CRAN (R 4.5.0)
#  testthat     * 3.3.2      2026-01-11 [1] CRAN (R 4.5.2)
#  tibble         3.3.1      2026-01-11 [1] CRAN (R 4.5.2)
#  tidyselect     1.2.1      2024-03-11 [1] CRAN (R 4.5.0)
#  usethis      * 3.2.1      2025-09-06 [1] CRAN (R 4.5.0)
#  vctrs          0.7.1      2026-01-23 [1] CRAN (R 4.5.2)
#  withr          3.0.2      2024-10-28 [1] CRAN (R 4.5.0)

#  [1] /Library/Frameworks/R.framework/Versions/4.5-arm64/Resources/library
#  * ── Packages attached to the search path.

# ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
