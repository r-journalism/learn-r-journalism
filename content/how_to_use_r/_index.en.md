---
title: "How to use R"
weight: 2
pre: "<b>1. </b>"
chapter: true
---

### Chapter 1

# How to use R


We need to go over some basics before we get to the fun part of playing with data in R.

Like all programming languages, R is very particular about syntax and data structures.

It will help in the long run if you know how functions work, how to work around quirks in R, and strategies on what to do when you inevitably run into an error or get stuck. We'll also walk through some basic data exploration and validation.

These are the sections you'll be going over in this chapter:

{{% children description="true"   %}}


## Files and folders

We won't need to download files for this chapter since everything can by typed (or copy and pasted) into the console or into a script.

However, the [repo for this class](https://github.com/r-journalism/learn-chapter-1) is on Github if you'd like to follow along that way. It can be easily downloaded to your desktop with the following commands:

```
install.packages("usethis")

usethis::use_course("https://github.com/r-journalism/learn-chapter-1/archive/master.zip")

```

## Test yourself

There are [links to exercise](http://code.r-journalism.com/chapter-1/)  what you've learned spread through out this section.

It's possible to run these files locally to test yourself if you've downloaded the files for the chapter as instructed above.

Make sure your project directory is correct and then run these lines in the console:


```
install.packages("learnr")
install.packages("rmarkdown")
install.packages("tidyverse")
```

and then

```
rmarkdown::run("chapter-1/index.Rmd")
```


-----

<span style="color:gray">© Copyright 2018, Andrew Ba Tran</span>
