---
layout: post
title:  "IntelliJIdea and dictionaries"
date:   2017-06-22
categories: quote thinking
---

The quick and dirty way. The problem: there is lots of text in IntellijIdea in custom languages, so a spell-checker would be 
nice to get at least those early on.

But no worries, turned out there is a way to add new directories, too.

Then the task is to find that ever important .dic file for the dictionary and found hints from :
  * <https://blog.thomastoye.be/dutch-spell-checking-for-intellij-idea-5508625d9f64>

Our unix machines ispell, aspell does have Finnish, which was the one I wanted. The first command below lists the 
available dictionaries and the rest grab the dictionary part in some way. 

```
aspell dump dicts 
aspell -d en dump master > en.dic
aspell -d fi dump master > fi.dic
aspell -d sv dump master > sv.dic
```
Aspell also have new dictionaries: [ftp://ftp.gnu.org/gnu/aspell/dict/0index.html](ftp://ftp.gnu.org/gnu/aspell/dict/0index.html) , which one can install
(unzip, configure, make, make install path) and then grab those also to windows in above manner

![Settings demo]({{site.url}}/imgs/newdic.png "new user dictionaries")

