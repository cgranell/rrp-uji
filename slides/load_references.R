library(RefManageR)
library(here)

BibOptions(check.entries = FALSE,
           bib.style = "authoryear",
           cite.style = "alphabetic",
           style = "markdown",
           first.inits = FALSE,
           hyperlink = "to.doc",
           dashed = TRUE,
           max.names = 2)

path_bib <- here::here("references.bib")
my_refs <- RefManageR::ReadBib(path_bib, check = FALSE, .Encoding = "UTF-8")

cite_footnote <- function(key, bib = my_refs) {
  # create a silent reference so RefManageR knows we've used this entry
  citation <- RefManageR::Cite(bib, key)
  # create the string we need in the Markdown document
  paste0(".footnote[", citation, "]")
}


cite_footnote <- function(key, bib = my_refs) {
  # create a silent reference so RefManageR knows we've used this entry
  citation <- RefManageR::Cite(bib, key)
  # create the string we need in the Markdown document
  paste0(".footnote[", citation, "]")
}

cite <- function(key, bib = my_refs) {
  # create a silent reference so RefManageR knows we've used this entry
  citation <- RefManageR::Cite(bib, key)
  # create the string we need in the Markdown document
  paste0(".small[", citation, "]")
}


citet <- function(key, bib = my_refs) {
  # create a silent reference so RefManageR knows we've used this entry
  citation <- RefManageR::Citet(bib, key)
  # create the string we need in the Markdown document
  paste0(".small[", citation, "]")
}


title <- function(key, bib = my_refs) {
  my_refs[key]$title
}

print <- function(start, end, bib = my_refs) {
  RefManageR::PrintBibliography(bib, start, end,
                                .opts = list(check.entries = FALSE,
                                             sorting = "ynt",
                                             no.print.fields = "doi"))

}