---
title: Visualizing data
weight: 5
pre: "<b>4. </b>"
chapter: true
---


### Chapter 4

# Visualizing data


<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
  <iframe src="//www.youtube.com/embed/8VW-APX_5a0?t=3s" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border:0; encrypted-media" allowfullscreen title="YouTube Video"></iframe>
</div>


You've seen the typology of graph types in apps like Excel, right?

![](/visualizing/images/chart_menu.png?classes=shadow)

It's a pretty good menu. Would you like a bar chart, a pie chart, a line chart, or any of these other options?

There's no deep structure or explanation of how to get the data there-- it only focuses on the end result. 

This type of menu assumes you have data structured correctly to make that visualization work. But we rarely get the data we need in the format we need it to be in order to make the visualization immediately. 

When you get raw data, you should be able think about all the transformations, summaries, and wrangling that can lead to good visualizations. 

And sometimes you won't know what works until you see it sketched out. 

R allows you to quickly iterate through data visualizations to explore the data and see what works best to communicate what's important to readers. 

Hopefully by the end of this chapter, you'll learn how to approach creating data visualizations differently. Instead of working toward a set end result or template, you start with the data set and explore where the structure takes you. You'll be able to see the underlying connections between different graphs. 

--

For example, consider these three charts that display the same data.

![](/visualizing/images/bobs3.png?classes=shadow)

The pie chart focuses the reader on large percentages, and encourages the reader to think of the total (here, the **amount** represents the amount of time the [Belcher family](https://www.fox.com/bobs-burgers/) is out in the front of their restaurant) as distributed to different groups.

![](/visualizing/images/bobs2.png?classes=shadow)


The stacked bar plot provides the same information, but makes it easier to accurately determine at a glance how large each group is out of the whole.

![](/visualizing/images/bobs1.png?classes=shadow)

This bar chart splits the categories horizontally, and draws attention to how the family members are ordered. It encourages the reader to think about the distribution rather than disconnected categories, and gives a better sense of sense of scale.

## Grammar of Graphics

The [grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.html) lets you approach visualizations structurally, letting you combine and swap out graphical elements into figures that display data meaningfully.

It's grown in popularity and has been implemented across many languages, like JavaScript, Julia, and Python. R's version is ggplot2, created by Hadley Wickham and currently maintained by dozens from the R community.

If you look at the pie chart through the lens of the grammar of graphics, you can see that its pretty much a stacked bar chart, with the height mapped to the slice angle.

Once you can see that, you might consider options like mapping the bar height to the radius and give divide up the angles among the family members to create a [radial plot](http://animateddata.co.uk/img/radial-bar-sample1.png). Or maybe add another variable into the mix and make a scatter plot?

These options might all turn out to be horrible, but at least you've cycled through them and thought about how data might be visualized. 

## Goals

{{% children description="true"   %}}


## Files and folders

The [repo for this class](https://github.com/r-journalism/learn-chapter-4) is on GitHub, but can be easily downloaded to your desktop with the following commands:

```
install.packages("usethis")

usethis::use_course("https://github.com/r-journalism/learn-chapter-4/archive/master.zip")
```

## Readings

ggplot2 resources

* Using ProPublica’s “statefaces” in ggplot2 - [hrbrmstr](https://rud.is/b/2016/03/19/using-propublica-statefaces-in-ggplot2/)
* ggplot2 cheatsheet - [RStudio](https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)
* From Data to Viz - [data-to-viz](https://www.data-to-viz.com/)



ggplot2 examples
* ggplot2 as a creativity engine and other ways R is transforming quantitative journalism - [Financial Times](http://johnburnmurdoch.github.io/slides/r-ggplot/#/)
* Gender gap: Three things we’ve learnt - [BBC](https://www.bbc.com/news/business-43668187)
* The complete history of ever No. 1 tennis player in the world - [SWI](https://www.swissinfo.ch/eng/who-is-the-best-_the-complete-history-of-every-no-1-tennis-player/42274984) | [GH](https://github.com/d-qn/2016_06_14_tennisATP)
* Huge increase in arrests of homeless in L.A - but mostly for minor offenses - [LAT](http://www.latimes.com/local/politics/la-me-homeless-arrests-20180204-story.html) | [GH](https://github.com/datadesk/homeless-arrests-analysis/blob/master/analysis.ipynb)
* What I use to visualize data - [FlowingData](https://flowingdata.com/2016/03/08/what-i-use-to-visualize-data/)


----

## Test yourself

There are [links to exercise](http://code.r-journalism.com/chapter-4/) what you've learned spread through out this section.

It's possible to run these files locally to test yourself if you've downloaded the files for the chapter as instructed above.

Make sure your project directory is correct and then run these lines in the console:

```
install.packages("learnr")
install.packages("rmarkdown")
install.packages("tidyverse")
install.packages("ggrepel")
install.packages("wesanderson")
```

and then

```
rmarkdown::run("chapter-4/index.Rmd")
```


-----

<span style="color:gray">© Copyright 2018, Andrew Ba Tran</span>

