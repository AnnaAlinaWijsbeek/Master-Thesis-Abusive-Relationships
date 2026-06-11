# ============================================================
# 01_data_scraping_R.R
# Data scraping for master thesis
# Subreddit: r/abusiverelationships
# Data source: Reddit
# Sorting: hot posts
# Output: CSV file with original Reddit thread posts
# ============================================================


# ============================================================
# 0) Packages
# ============================================================

# Install packages once if needed:
# install.packages("RedditExtractoR")
# install.packages("dplyr")
# install.packages("writexl")

library(RedditExtractoR)
library(dplyr)
library(writexl)


# ============================================================
# 1) Download Reddit thread posts
# ============================================================

# Posts were collected from r/abusiverelationships using the "hot"
# sorting option. This sorting option reflects posts that were visible
# or trending at the time of data collection, rather than a strictly
# chronological order.

threads_hot <- find_thread_urls(
  subreddit = "abusiverelationships",
  sort_by   = "hot",
  period    = "all"
)


# ============================================================
# 2) Minimal text cleaning
# ============================================================

# This function standardizes text encoding, replaces typographic quotation
# marks, and removes control characters while preserving punctuation and
# apostrophes.

clean_text <- function(x) {
  if (!is.character(x)) return(x)
  
  # Convert text to UTF-8
  x <- iconv(x, from = "WINDOWS-1252", to = "UTF-8")
  
  # Replace smart quotes with standard ASCII quotes
  x <- gsub("\u2018|\u2019", "'", x)   # ‘ ’ -> '
  x <- gsub("\u201C|\u201D", "\"", x)  # “ ” -> "
  
  # Remove control characters
  x <- gsub("[[:cntrl:]]", "", x)
  
  return(x)
}

threads_hot <- threads_hot %>%
  mutate(
    title = clean_text(title),
    text  = clean_text(text)
  )


# ============================================================
# 3) Check oldest and newest post
# ============================================================

# The time range of the scraped posts is checked using the timestamp column
# if available. If timestamp is unavailable, date_utc is used instead.

has_timestamp <- "timestamp" %in% names(threads_hot)
has_dateutc   <- "date_utc"  %in% names(threads_hot)

threads_hot_time <- threads_hot

if (has_timestamp) {
  threads_hot_time <- threads_hot_time %>%
    mutate(timestamp_num = suppressWarnings(as.numeric(timestamp)))
}

if (has_dateutc) {
  threads_hot_time <- threads_hot_time %>%
    mutate(date_utc_parsed = suppressWarnings(as.POSIXct(date_utc, tz = "UTC")))
}

use_timestamp <- has_timestamp && any(!is.na(threads_hot_time$timestamp_num))

if (use_timestamp) {
  oldest_post <- threads_hot_time %>%
    filter(!is.na(timestamp_num)) %>%
    slice_min(order_by = timestamp_num, n = 1, with_ties = FALSE)
  
  newest_post <- threads_hot_time %>%
    filter(!is.na(timestamp_num)) %>%
    slice_max(order_by = timestamp_num, n = 1, with_ties = FALSE)
  
} else if (has_dateutc && any(!is.na(threads_hot_time$date_utc_parsed))) {
  oldest_post <- threads_hot_time %>%
    filter(!is.na(date_utc_parsed)) %>%
    slice_min(order_by = date_utc_parsed, n = 1, with_ties = FALSE)
  
  newest_post <- threads_hot_time %>%
    filter(!is.na(date_utc_parsed)) %>%
    slice_max(order_by = date_utc_parsed, n = 1, with_ties = FALSE)
  
} else {
  stop("No usable timestamp or date_utc column available to compute oldest and newest post.")
}

cat("\n--- Oldest post ---\n")
print(oldest_post %>% select(any_of(c("date_utc", "timestamp", "title", "url"))))

cat("\n--- Newest post ---\n")
print(newest_post %>% select(any_of(c("date_utc", "timestamp", "title", "url"))))


# ============================================================
# 4) Export scraped dataset
# ============================================================

# The raw Reddit data are saved locally. For ethical and privacy reasons,
# the raw data file should not automatically be uploaded to GitHub.

output_file <- "Threads_hot.csv"

write.csv(
  threads_hot,
  file = output_file,
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

cat("\nSaved file:", output_file, "\n")


# ============================================================
# 5) Session information
# ============================================================

# These lines document the R and package versions used for data collection.

cat("\nR version:\n")
print(R.version.string)

cat("\nRedditExtractoR version:\n")
print(packageVersion("RedditExtractoR"))
