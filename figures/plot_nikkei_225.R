library("tidyverse")

nikkei_225 <- read_csv("nikkei_225.csv")

phi <- (1 + sqrt(5)) / 2

(nikkei_225 %>% ggplot(mapping = aes(x = dt, y = close)) +
                geom_line() +
                geom_vline(xintercept = as.Date("1995-01-17"), lty = 2) +
                scale_x_date(date_breaks = "1 month", date_labels = "%b %Y") +
                theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
                labs(x = "", y = "Nikkei 225")) %>%
    ggsave(filename = "nikkei_225.pdf",
           width = 5 * phi, height = 5)

