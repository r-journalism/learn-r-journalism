---
title: FAQ
weight: 9
chapter: false
---


### How to deal with some issues that may pop up

## Permission to install packages locally

Mac users may need to alter their security preferences to allow apps authored by non-Apple developers to install. If you notice an error, try to change [your system preferences](https://www.youtube.com/watch?v=xFpVqkyXFy4).

## Common Mistakes

* **Spelling mistakes**
  * I swear, 80 percent of my mistakes come from typos
* **Using the wrong case**
	* help(), Help(), and HELP() are three different functions (and only the first one will work)
* **Forgetting to use quotation marks when they are needed**
	* install.packages("gclus") will work, while install.packages(gclus) will generate an error.
* **Forgetting to include the parentheses in a function call**
	* help() rather than help. Even if there are no options, you still need the().
* **Using the `\` in a path name on Windows**
	* R sees the backlash character as an escape character.
	* `setwd("c:\mydata")` will generate an error. Use `setwd("c:/mydata")` or `setwd("c:\\mydata")` instead
* **Using a function from a package that is not loaded**
	* The function `str_trim()` is contained in the **stringr** package. 
	* If you try to use it before loading the package, you will get an error
	
## Other possible issues

* **Package conflicts**
    * Sometimes, packages depend on other packages to work correctly
    * If it says a package is missing, install it and then install the one that caused the error
    * To specify a specific package for a function, precede the code with `nameofpackage::`
      * For example, `filter()` will turn into `dplyr::filter()`
* **File cannot be found**
    * Check `getwd()` is the file you're trying to access in that directory that R thinks it should look? 
      * If not, use `setwd()` to point to the correct directory.
    * Is the file name spelled correctly?
      * Run `ls()` to get a list of the files in the working directory and see if that file matches what's listed. 
      * Sometimes it's as simple as a capital letter when it shouldn't.
    * R working directory doesn't work ideally with unzipped folders
      * Make sure if you extract a zip, you move the folder to your computer and not just a temporary folder
* **Objects, including column names, need to be one word**
      * Space won't be interpreted correctly unless in the context of strings, so it must be surrounded by quotation marks
      * To deal with columns that have spaces, you use the backtick `` ` ``  next to the 1 button on your keyboard. so referencing `column name` on a dataframe called `temp` will be `` temp$`column name` ``
* **Warnings**
      * `Warning message: package 'whatever' was built under R version 3.x.x`
        * Make sure you have the latest version of R and RStudio installed
      * Sometimes unfix-able, sometimes worth fixing
        * As long as it doesn't mess up your data (for example, sometimes the warning that some items were replaces with `NA` is okay, and sometimes it's horrible)
    
## What's with the weird phrase in the Console when I start R? 

* Every [version of release](http://livefreeordichotomize.com/2017/09/28/r-release-names/) for R references a different Peanuts comic strip or film.
    * You Stupid Darkness
    * Kite Eating Tree

## Other ways to find solutions

* Search for your question on [StackOverflow](https://stackoverflow.com/questions/tagged/r) or on Google
    * I've found answers to so many of my questions thanks to others who have encountered the same problem as me
* If you can't find a solution after Googling it, shoot it out to the [#rstats](https://twitter.com/search?q=%23rstats&src=typd) community on Twitter
    * You'll probably get a response that might solve your problem and maybe a [GIF reaction](https://twitter.com/ClayHansonMT/status/1005277079217172480) for the heck of it
* If it's a problem related to a package, track down the GitHub repo for it and submit a question to the contributors
    * Sometimes your issue might be something that will help lead to a fix that improves the experience for all other users
    * I've found that R package creators are very responsive on GitHub and even Twitter with questions

    
-----

<span style="color:gray">© Copyright 2018, Andrew Ba Tran</span>
