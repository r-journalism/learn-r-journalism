---
title: Spatial analysis
weight: 6
pre: "<b>5. </b>"
chapter: true
---

### Chapter 5

# Spatial analysis


<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
  <iframe src="//www.youtube.com/embed/iF050DaUxC4?t=3s" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border:0; encrypted-media" allowfullscreen title="YouTube Video"></iframe>
</div>


Consider where you are sitting. Think of the businesses you're next to, the school district border you fall in, the socioeconomic makeup of your neighbors. Think about how that might change for the next person in the list for this class. Does it snow more often there or do they live in a more moderate climate? How far away from a grocery store are they compared to you? Is your quality of life better or worse? What opportunities are you missing out on that others might enjoy have based on where you are located?

When you're able to analyze data in the framework of geography, you might be able to see patterns that you wouldn't see otherwise.

There's something tangible about visualizing data with maps. We recognize where we fit in the borders. It tells us who we are based on where we've been. And there's more location data than ever before thanks to GPS-enable devices like phones, cameras, and vehicles.

Most spatial analysis is conducted with graphical programs like the (very expensive) ArcGIS and (free) QGIS. Recently, GIS work can be done online with Google Fusion Tables and Carto.

There's a steep learning curve in using R to programmatically analyze and visualize spatial data. But the perks include approaching your work in a customizable, transparent, and reproducible way. 

#### Some recent work done with spatial analysis include:

* The Geographic Divide of Oscar Films - [The Pudding](https://pudding.cool/2017/02/oscars_so_mapped/)
* Buzzfeed 311 calls increase in gentrifying neighborhoods - [Buzzfeed](https://www.buzzfeed.com/lamvo/gentrification-complaints-311-new-york)
* Murder with Impunity - [Washington Post](https://www.washingtonpost.com/graphics/2018/investigations/where-murders-go-unsolved/)
* Spies in the Skies - [Buzzfeed](https://www.buzzfeed.com/peteraldhous/spies-in-the-skies)

-----

In this chapter, we'll learn how to create static maps and interactive maps with geolocated data. We'll be using the more-recent packages in the R GIS community: [**simple features**](https://cran.r-project.org/web/packages/sf/vignettes/sf1.html) and [**leaflet**](https://rstudio.github.io/leaflet/). 

We'll access the Census API to download data and use what we've already learned to join that data to shapefiles to make choropleth maps-- both interactive and static.

We'll do some digging into traffic stop data to find which neighborhoods are most racially profiled by police.


## Goals

{{% children description="true"   %}}


## Files and folders

The [repo for this class](https://github.com/r-journalism/learn-chapter-5) is on GitHub, but can be easily downloaded to your desktop with the following commands:

```
install.packages("usethis")

usethis::use_course("https://github.com/r-journalism/learn-chapter-5/archive/master.zip")

```

## Readings

* Behind the dialect map interactive: How an intern created the New York Times’ most popular piece of content in 2013 - [knight lab](https://knightlab.northwestern.edu/2014/01/20/behind-the-dialect-map-interactive-how-an-intern-created-the-new-york-times-most-popular-piece-of-content-in-2013/)
* Visual history of the U.S. Census - [City Lab](https://www.citylab.com/equity/2018/06/a-brief-history-of-the-us-census/564110/)
* Buzzfeed 311 calls increase in gentrifying neighborhoods - [Buzzfeed](https://www.buzzfeed.com/lamvo/gentrification-complaints-311-new-york) | [GH](https://github.com/BuzzFeedNews/2018-06-nyc-311-complaints-and-gentrification)
* Murder with Impunity - [Washington Post](https://www.washingtonpost.com/graphics/2018/investigations/where-murders-go-unsolved/)
* Spies in the Skies - [Buzzfeed](https://www.buzzfeed.com/peteraldhous/spies-in-the-skies) | [GH](https://github.com/BuzzFeedNews/2016-04-federal-surveillance-planes)
* America is more diverse than ever but still segregated - [Washington Post](https://www.washingtonpost.com/graphics/2018/national/segregation-us-cities/)
* Geographic divide of Oscar movies - [The Pudding](https://pudding.cool/2017/02/oscars_so_mapped/) | [GH](https://pudding.cool/process/regional_smoothing/)


-----

## Test yourself

There are [links to exercise](http://code.r-journalism.com/chapter-5/) what you've learned spread through out this section.

It's possible to run these files locally to test yourself if you've downloaded the files for the chapter as instructed above.

Make sure your project directory is correct and then run these lines in the console:

```
install.packages("learnr")
install.packages("rmarkdown")
install.packages("tidyverse")
install.packages("sf")
install.packages("leaflet")
install.packages("viridis")
```

and then

```
rmarkdown::run("chapter-5/index.Rmd")
```


-----

<span style="color:gray">© Copyright 2018, Andrew Ba Tran</span>
