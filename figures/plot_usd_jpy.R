library("tidyverse")

usd_jpy <- read_csv("usd_jpy.csv")

phi <- (1 + sqrt(5)) / 2

(usd_jpy %>% ggplot(mapping = aes(x = dt, y = price)) +
             geom_line() +
             geom_vline(xintercept = as.Date("1995-01-17"), lty = 2) +
             scale_x_date(date_breaks = "1 month", date_labels = "%b %Y") +
             theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
             labs(x = "", y = "USD/JPY")) %>%
    ggsave(filename = "usd_jpy.pdf",
           width = 5 * phi, height = 5)

