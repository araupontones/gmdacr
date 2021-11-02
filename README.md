# gmdacr

The objective of **gmdacr** 📦 is to serve as a library of the most common functions used by the Data Science & Analytics Unit at the Global Migration Data Analysis Centre [(GMDAC)](https://gmdac.iom.int/). The package, that is in continuous development, includes (or will include) functions to:

* Clean and carpenter data
* Create customized graphics
* Conduct analysis
* Scrap data from online sources.

#Install it!

```
devtools::install_github("araupontones/gmdacr")

```


# Functions

## Data vis

* **colors_gmdac()** Use it to load colors in to your analysis. All the colors stored in this function are official colours of IOM, GMDAC, and UN.

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

* **un_colors()** Returns all the color pallet of UN's MDGS
**Creator:** Andres


```
#see all colors 

un_colors()

#retrieve a color or a vector of colors

un_colors("green")

#see help file
?un_colors

```

## Data Carpintery

* **load_functions()** Loads all the functions developed for your project.

**Creator:** Andres

* **unnest_value_from_list()** Use it in the dplyr context to unnest variables with class list. (see ?unnest_value_from_list)

**Creator:** Andres 

```
#Define a directory where all your functions of the project are stored

dir_functions <- "functions"

#load all your functions in the global environment

load_functions(dir_functions)

#see help file
?load_functions

```

# Data Analysis

* **sample_size** estimates sample sizes of a known populaiton, allows to define the confidence interval, and error margins.
**cretor**: Andres

```
#Example to calculate sample size (n) of a known population of 500, margin error of 5% (how much difference you’ll allow #between the mean number of your sample and the mean number of your population.) and a confidence interval of 95%. #Confindence intervals should be expressed in their z-scores

sample_size(N = 500,
            margin_error = .05,
            confidence_interval = 1.9599
            )

```

# Examples 

* **say_hi()** this will say hi to you :)

**creator** Andres

```
 say_hi("Team")

```

# Creators of the package:

* [Andres Arau](https://github.com/araupontones)
* [Eduardo Acostamadiedo](https://github.com/eduardo757ag)
* [Imge Cetin](https://github.com/imgesucet)
* [Murtiza Numamat](https://github.com/murtiza)



