---
layout: default
title: projects
---

## Projects
 {% for post in site.posts %}
  <article class="post">
    <h3 class="post-title">
      <a href="{{ site.baseurl }}{{ post.url }}">
        {{ post.title }}
      </a>
    </h3>
  </article>
  {% endfor %}

## Introduction to statistical learning in python

I implemented some of the labs from [\"An Introduction to Statistical Learning\"](http://www-bcf.usc.edu/~gareth/ISL/) using python:

* [linear regression](https://github.com/lfjover/intro_stat_learning/blob/master/linear_regression.ipynb)
* [logistic regression](https://github.com/lfjover/intro_stat_learning/blob/master/logistic_regression.ipynb)
* [cross-validation](https://github.com/lfjover/intro_stat_learning/blob/master/cross-validation.ipynb)
* [decision trees](https://github.com/lfjover/intro_stat_learning/blob/master/decision_trees.ipynb)
* [bootstrapping](https://github.com/lfjover/intro_stat_learning/blob/master/Bootstrap.ipynb)


