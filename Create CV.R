# install.packages("devtools")
devtools::install_github('ropenscilabs/icon', force = T)
install.packages("stringi")
install.packages("xfun")
remotes::install_github('mitchelloharawild/icons@v0.1.0')
# devtools::install_github('mitchelloharawild/icons')
devtools::install_github("nstrayer/datadrivencv", force = T)

datadrivencv::use_datadriven_cv(
  full_name = "Ricardo Mattos",
  data_location = "https://docs.google.com/spreadsheets/d/1OATnKUyM39hQmle_Mi3mgrfqnAs1BtI72PYV8AuwKh4",
  pdf_location = "https://github.com/ricardomattos05/Resume/raw/master/ricardomattos_cv.pdf",
  html_location = "https://ricardomattos05.github.io/resume/cv.html",
  source_location = "https://github.com/ricardomattos05/Resume"
)


# # Knit the HTML version
# rmarkdown::render("cv.rmd",
#                   params = list(pdf_mode = FALSE),
#                   output_file = "cv.html")
# 
# # Knit the PDF version to temporary html location
# tmp_html_cv_loc <- fs::file_temp(ext = ".html")
# rmarkdown::render("cv.rmd",
#                   params = list(pdf_mode = TRUE),
#                   output_file = tmp_html_cv_loc)
# 
# # Convert to PDF using Pagedown
# pagedown::chrome_print(input = tmp_html_cv_loc,
#                        output = "cv.pdf")