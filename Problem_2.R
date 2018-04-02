# a) a.k.a. hot 'n heavy
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
# sounds like a terrible aftershave
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
dates <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')

# b)
diffTemp <- xmax - xmin
diffTemp

# c)
meanXmin <- mean(xmin)
meanXmin
# a terrible aftershave with a fancy label
meanXmax <- mean(xmax)
meanXmax

# d)
xmin[xmin < meanXmin]

# e) Some ambiguity in the question:
# what I assume the question means: the maximum values above the average for the maximums
xmax[xmax > meanXmax]
# what a possible interpretation is min temp' whose 'indices' correspond to the indices in
# xmax above the average
xmin[xmax > meanXmax]


# f) "Name the members" but not said which names to use! Hm...
# First try: Days of week (boring)
names(xmax) <- dates
names(xmin) <- dates
# Second try: Princeps name rating (awesome)
names(xmax) <- c('Gaius', 'Octavius', 'Imperator', 'Caesar', 'Divi', 'Filius', 'Augustus')
names(xmin) <- c('Gaius', 'Julius', 'Caesar', 'Augustus', 'Germanicus', 'Caligula', 'The nasty')


# g) ǝıן ɐ sı ǝɯɐɹɟ ǝɥʇ
temperatures <- data.frame(
  xmin = xmin,
  xmax = xmax
)

temperatures

# h) Kelvin > Fahrenheit
temperatures$xminFahrenheit <- xmin * 9/5 + 32
temperatures

# i)
onlyTheTemperatureMeasurementsInFahrenheit <- data.frame(
  measurements = temperatures$xminFahrenheit
)

onlyTheTemperatureMeasurementsInFahrenheit

# j)
#   i)
onlyTheTemperatureMeasurementsInFahrenheitMonFri <- data.frame(
  measurements = onlyTheTemperatureMeasurementsInFahrenheit[(1:5), ]
)
onlyTheTemperatureMeasurementsInFahrenheitMonFri

#   ii)
onlyTheTemperatureMeasurementsInFahrenheitMonFriV2 <- data.frame(
  measurements = onlyTheTemperatureMeasurementsInFahrenheit[-(6:7), ]
)

onlyTheTemperatureMeasurementsInFahrenheitMonFriV2


