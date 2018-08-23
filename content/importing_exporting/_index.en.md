---
title: Importing/Exporting data
weight: 3
pre: "<b>2. </b>"
chapter: true
---

### Chapter 2

# Importing and exporting data



<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
  <iframe src="//www.youtube.com/embed/IrCpddfUVsY??t=4s" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border:0; encrypted-media" allowfullscreen title="YouTube Video"></iframe>
</div>


It's the first big hurdle to dealing with data in R. Most people are used to double clicking their data file and having some software like Excel open it.

In R it takes some thought and deliberation. While it's now possible to use the **Import Dataset** button in RStudio, we're going to do it the proper way with a command. 

Thanks to members of the community, there are many packages that lets R import all types of data such as:

{{% children %}}

## Files and folders

The [repo for this class](https://github.com/r-journalism/learn-chapter-2) is on Github, but can be easily downloaded to your desktop with the following commands:

```
install.packages("usethis")

usethis::use_course("https://github.com/r-journalism/learn-chapter-2/archive/master.zip")

```

{{% notice note %}}
If you get an error that 'git2r' is not available, then run install.packages("git2r"). If that still doesn't work, you might need to brew install libgit2 from your cmd or terminal (pc or mac).
{{% /notice %}}

----

It's possible to import data like CSVs and table-delimited formats in Base R but the way it does makes more sense for statisticians and less sense to journalists.

For example, `read.csv()` is the Base R function to read in CSVs but the default mode is to treat strings, like names and addresses, as factors. You have to pass it the variable `stringsAsFactors=FALSE` to make it work like you need it to. 

We're going to go right into using packages that imports data faster and that requires very little adjustment.

## Best practices

Some tips when importing data into R:

* When importing spreadsheets, the first row is usually treated by R as the header
* Try to avoid using spaces and symbols in header names
* Before importing Excel spreadsheets, you can avoid headaches by deleting extra buffer rows or columns that people like using to them pretty

## Importing other types of data

Here are some links to importing other types of data we won't be able to get into in this class.

* [Google Sheets](https://github.com/jennybc/googlesheets)
* [.dat data](https://cran.r-project.org/web/packages/SAScii/index.html)

## Readings

* Storytelling with R - [ProPublica](https://www.rstudio.com/resources/videos/storytelling-with-r/)
* Meet the 28-year-old grad student who just shook the global austerity movement  - [nymag](http://nymag.com/daily/intelligencer/2013/04/grad-student-who-shook-global-austerity-movement.html)
* Why is R so Hard to learn - [r4stats.com](http://r4stats.com/articles/why-r-is-hard-to-learn/)

----

## Test yourself

There are [links to exercise](http://code.r-journalism.com/chapter-2/)  what you've learned spread through out this section.

It's possible to run these files locally to test yourself if you've downloaded the files for the chapter as instructed above.

Make sure your project directory is correct and then run these lines in the console:

```
install.packages("learnr")
install.packages("rmarkdown")
install.packages("tidyverse")
```

and then

```
rmarkdown::run("chapter-2/index.Rmd")
```


-----

<span style="color:gray">© Copyright 2018, Andrew Ba Tran</span>
