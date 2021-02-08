setwd("~/W&M School Work/Wicked Problems/R Studio Workshops")

x <- 1:1000
y <- 1:1000

east <- sample(x, size = 50, replace = TRUE,)
north <- sample(y, size = 50, replace = TRUE)

symbols(east,north, squares = rep(10,50), inches = FALSE)

symbols(sample(x, 40, replace = TRUE), 
        sample(y, 40, replace = TRUE), 
        circles = rep(10,40), 
        inches = FALSE,
        fg = "green",
        bg = "beige",
        add = TRUE)

symbols(sample(x, 12, replace = TRUE), 
        sample(y, 12, replace = TRUE), 
        circles = rep(20,12), 
        inches = FALSE,
        fg = "green",
        bg = "beige",
        add = TRUE)

dwellings <- cbind.data.frame(house = 1:50, east, north)

locs <- sample(1:50, 7, replace = FALSE)

xspline(x = dwellings[locs,2],
      y = dwellings[locs,3],
      shape = -1,
      lty = 2,)

text(x = dwellings[locs,]$east,
     y = dwellings[locs,]$north + 100,
     labels = dwellings[locs,]$house)

title(main="A Person's Path Between Houses")