h <- readLines("mockup.html", warn = FALSE)
h <- paste(h, collapse = "\n")
for (f in c("mock_orig.png", "mock_k6.png", "mock_k25.png")) {
  b64 <- base64enc::base64encode(f)
  h <- gsub(sprintf('src="%s"', f),
            sprintf('src="data:image/png;base64,%s"', b64), h, fixed = TRUE)
}
writeLines(h, "mockup.standalone.html")
cat("wrote mockup.standalone.html", file.size("mockup.standalone.html"), "bytes\n")
