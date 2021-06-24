# gmdacr

The objective of **gmdacr** 📦 is to serve as a library of the most common functions used by the Data Science & Analytics Unit at the Global Migration Data Analysis Centre [(GMDAC)][https://gmdac.iom.int/]. The package, that is in continuous development, includes (or will include) functions to:

* Clean and carpenter data
* Create customized graphics
* Conduct analysis
* Scrap data from online sources.

# Functions

## Data vis

**colors_gmdac()** Use it to load colors in to your analysis. All the colors stored in this function are official colours of IOM, GMDAC, and UN.

**Creator:** Murtiza


```
#Explore all the colors in colors_gmdac

names(colors_gmdac())

#retrieve a color or a vector of colors

colors_gmdac("green")
colors_gmdac(c("red", "blue")

#see help file
?IOM_colors

```

## Data Carpintery

**load_functions()** Loads all the functions developed for your project.
**Creator** Andres

```
#Define a directory where all your functions of the project are stored

dir_functions <- "functions"

#load all your functions in the global environment

load_functions(dir_functions)

#see help file
?load_functions

```




# Creators of the package:

* Andres Arau
* [Eduardo Acostamadiedo](https://github.com/eduardo757ag)
* [Imge Cetin](https://github.com/imgesucet)
* [Murtiza Numamat](https://github.com/murtiza)



