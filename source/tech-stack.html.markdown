---
title: "Zenhacks Tech Stacks"
---

<header class="page-header">
  <h1 class="page-title">Zenhacks Tech Stacks</h1>
  <h2 class="page-description">
    Zenhacks has a strong open source culture. We are leveraging many open source technology to ease the development process.
  </h2>
</header><!-- end .page-header -->
  
  Zenhacks has a strong open source culture. We are leveraging many open source technology to ease the development process. Truth being told, what **we care most is not these technology we are using, but what we could accomplish on top of them**.

* Table Of Content
{:toc}

  The guidelines for our choices is:

  - legibility: information should be easy to read and understand
  - reusability: same technology could be used across platform
  - synergy: leverage the knowledge we already known

## Infrastructure / Service

### Repo Hosting, Project Management

Repo hoster is the most important section in our infrastructure, it handles commits from our developers, exchange opinions with merge requests, organize coming tasks with issues and milestones. As it is so frequently used, we believe it needs to be stable and fast.

![Gitlab](/img/logo-gitlab.png)

Thus we switched from `github.com` last year and since then we are hosting our own git repositories with the awesome [`gitlab`](http://gitlabhq.com). We use it for several reasons:

  - Well-tuned features for internal usage.
  - Benefits of self-hosting: speed. It makes push / pull blazingly fast.
  - Fast development cycle, main release per month.
  - Built with `Ruby on Rails` so we could learn and contribute.

### Bug Tracking
Debugging production environment is generally a pain for developers and we try to minimize it as much as possible. That's why we deploy [`squash`](http://squash.io) recently.

![Square Squash](/img/logo-square.png)

`squash` is a tool to collect and manage exception occured in production environment. It contains of various middleware ready to be inserted into appplication regardless of its languages and the middleware will send the exception messages together with its runtime environment to a central management system. The central management system is used to manage and deal with bugs of all our applications. 

The central management is also built with `Ruby on Rails` with extensive use of `PostgreSQL`'s Hstore feature - that's what we are familiar with and could learn from.

### System Administration
We believe the idea of [devops](http://en.wikipedia.org/wiki/Devops) and but we don't want to make our developers drawn in the tedious system administration details. So we leverage these tools to make this process fun and friendly to developer.

![cap](/img/logo-cap.jpg) ![chef](/img/logo-chef.png) ![vagrant](/img/logo-vagrant.png)

[`capistrano`](http://capistranorb.com) has been used extensively for all our deployment process including `Rails` and `nodeJS` application. We use it to setup system dependencies, generate necessary configuration(nginx/postgreSQL etc.), manage the running of application. As we run our server on `ubuntu 12.04`, we've summarized our knowledge with [`capistrano-zen`](https://github.com/zenhacks/capistrano-zen) and released it for public usage.

As we are scaling to more servers, We are shifting our server configuration to [`chef`](www.opscode.com/chef/) which is a great tool to describe and manage server configurations. We are also using [`vagrant`](http://www.vagrantup.com/) to make the development environments unified and easy to setup.

## Frontend Technology
![sass](img/logo-sass.png) 
![coffee-script](/img/logo-coffee.png)
![angular-js](/img/logo-an.png)

We love [`sass`](http://sass-lang.com/) and [`coffeescript`](http://coffeescript.com/).They make working with css and javascript fun again. 

Sass makes css code more reusable and modulized, and together with [`compass`](http://compass-style.org/), it makes working with CSS3 across browser a joy.

CoffeeScript brought out [the good part](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742) out of javascript and add functional programming features to it. The tuned syntax brings legibility and expressiveness to the language.

Speaking of frontend MVC, recently, we will dive into `AngularJS`.

## Backend Technology
![rails](/img/logo-rails.png) 
![postgresql](/img/logo-pg.png) 

![nodejs](/img/logo-node.png) 
![redis](/img/logo-redis.png) 

Backend handles all the hard work of an application. We try to follow the guidelines mentioned in [12-factor-app](http://12factor.net/) to make our backend scalable.

[`Rails`](http://rubyonrails.org/) is the first choice for any logic-heavy and traditional web applications such as [Huali](http://hua.li), we are running at `3.2.11` and ready to upgrade to `4.0` when it is ready. 

For more API-oriented backend developement, we leverage the power of [`nodeJS`](http://nodejs.org/) such as [Manzuo](http://manzuoapp.com). We also use `nodeJS` for 'thin' network service such as `pushd` and `localtunnel`. 
  
[`PostgreSQL`](http://postgresql.org/) is our choice for relational database for its full implementation of triggers and constrains and the [noSQL feature](http://www.postgresql.org/docs/current/static/hstore.html).

We also use [`redis`](http://redis.io/) extensively. It is used for session storage, nginx cache and backend queue job processing.
