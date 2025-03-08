area_codes = list(
  ankara = 312, istanbul_asia = 216,
  istanbul_europe = 212
)
codes = c(312,216,212)

city <- "ankara"
print(area_codes$ankara)
print(area_codes[[city]])
for (code in codes)
