Introduction
------------

    rm(list=ls())
    .First <- function() {
      options(width=70)
      options(useFancyQuotes=FALSE)
      require(ascii)
      require(xtable)
      require(ggplot2)
      require(scales)
      require(reshape2)
      require(plyr)
      theme_set(theme_bw())
      png <<- function(res=96, width=500, height=300, ...) grDevices::png(res=res, width=width, height=height, ...)
    }

    housing <- read.csv("Rgraphics/dataSets/landdata-states.csv")
    head(housing[1:5])

    ##   State region    Date Home.Value Structure.Cost
    ## 1    AK   West 2010.25     224952         160599
    ## 2    AK   West 2010.50     225511         160252
    ## 3    AK   West 2009.75     225820         163791
    ## 4    AK   West 2010.00     224994         161787
    ## 5    AK   West 2008.00     234590         155400
    ## 6    AK   West 2008.25     233714         157458

    hist(housing$Home.Value)
    library(ggplot2)

![](exercise-8-practice_files/figure-markdown_strict/unnamed-chunk-2-1.png)

    ggplot(housing, aes(x = Home.Value)) + geom_histogram()

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](exercise-8-practice_files/figure-markdown_strict/unnamed-chunk-2-2.png)

    ggplot(subset(housing, State %in% c("MA", "TX")), aes(x=Date, y=Home.Value, color=State))+geom_point()

![](exercise-8-practice_files/figure-markdown_strict/unnamed-chunk-2-3.png)

    library(ggplot2)
    dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")
    head(dat)

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

    ggplot(dat, aes(x = CPI, y = HDI, color = "Region", size = HDI.Rank)) + geom_point()

![](exercise-8-practice_files/figure-markdown_strict/Exercise-1-1.png)

    ggplot(dat, aes(x = CPI, y = HDI)) + geom_smooth(method = "glm") + geom_line(stat = "identity")

![](exercise-8-practice_files/figure-markdown_strict/Exercise-2-1.png)

    ?loess
