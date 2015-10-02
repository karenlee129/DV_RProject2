redwhite %>% select (QUALITY, COLOR) %>% filter (COLOR == "red") %>% mutate (count = n()) %>% ggplot(aes(x=QUALITY, stat = "bin")) + geom_histogram() + ggtitle("Distribution of Quality for Red Wine")
