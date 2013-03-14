---
title: "Zenhacks Tech Stacks | Zenhacks 的技术组成"
---

<header class="page-header">
  <h1 class="page-title">Zenhacks Tech Stacks</h1>
  <h2 class="page-description">
    Zenhacks has a strong open source culture. We are leveraging many open source technology to ease the development process.
  </h2>
</header><!-- end .page-header -->
  
  Zenhacks has a strong open source culture. We are leveraging many open source technology to ease the development process. Truth being told, what **we care most is not these technology we are using, but what we could accomplish on top of them**.

  Zenhacks团队内有浓厚的开源文化，我们正在利用许多开源技术来实施敏捷的软件开发。虽然我们关心我们的工具和技术选择，但我们更关心的是我们可以利用这些技术完成什么。

* Table Of Content
{:toc}

  The guidelines for our choices is:

  - legibility: information should be easy to read and understand
  - reusability: same technology could be used across platform
  - synergy: leverage the knowledge we already known

  我们做出这些组件选择的依据有三点:

  - 可读性：信息和想法应该能易读易懂
  - 可重用性：共享的技术应该可以在多项目中重复使用
  - 协同作用：利用我们已学到的知识

## Infrastructure && Service / 基础设施 && 服务

### Repo Hosting, Project Management / 代码库管理，项目管理

Repo hoster is the most important section in our infrastructure, it handles commits from our developers, exchange opinions with merge requests, organize coming tasks with issues and milestones. As it is so frequently used, we believe it needs to be stable and fast.

代码库管理是我们基础设施里最重要的一个环节，它处理从开发者那里递交的修改，合并请求并进行讨论。我们会利用issues和milestones来搜集需求并管理开发。因为它需要经常被使用，我们希望它应该迅速并且稳定。

![Gitlab](/img/logo-gitlab.png)

Thus we switched from `github.com` last year and since then we are hosting our own git repositories with the awesome [`gitlab`](http://gitlabhq.com). We use it for several reasons:

  - Well-tuned features for internal usage.
  - Benefits of self-hosting: speed. It makes push / pull blazingly fast.
  - Fast development cycle, main release per month.
  - Built with `Ruby on Rails` so we could learn and contribute.

我们尝试过github.com，但因为速度的原因，我们从去年开始迁移到了[`gitlab`](http://gitlabhq.com)来管理我们自己的git代码库。我们使用它有以下几个原因：

  - 为企业内部特别定制的功能，权限，群组管理。
  - 自己提供服务的优势：速度。它使得push和pull的操作非常的迅速。
  - 非常活跃的开发。有一个全职的开发在支持，每个月都有新的发布。
  - 用`Ruby on Rails`搭建，我们可以方便的提交贡献代码以及学习源码。

### Bug Tracking / Bug 监测和管理
Debugging production environment is generally a pain for developers and we try to minimize it as much as possible. That's why we deploy [`squash`](http://squash.io) recently.

调试软件的生产环境通常是非常繁琐和痛苦的，我们尽可能为团队内的开发者地减少这种繁琐的工作。这就是我们最近部署[`squash`](http://squash.io)的原因。

![Square Squash](/img/logo-square.png)

`squash` is a tool to collect and manage exception occured in production environment. It contains of various middleware ready to be inserted into appplication regardless of its languages and the middleware will send the exception messages together with its runtime environment to a central management system. The central management system is used to manage and deal with bugs of all our applications. 

The central management is also built with `Ruby on Rails` with extensive use of `PostgreSQL`'s Hstore feature - that's what we are familiar with and could learn from.

`squash` 是一个收集并管理产品环境中出现的异常的工具。它包含了各种中间件，这些中间件可以移植到任意语言的app中去，并且把异常信息和它的运行的环境一起收集并发送到一个中央管理系统。这个中央管理系统是用来管理并处理我们所有应用的错误的。

这个中央管理系统也是建立在`Ruby on Rails`的框架上的，并且大量的使用了PostgreSQL的Hstore特点，这是我们所熟悉并且可以学习的。

### System Administration / 系统管理

We believe the idea of [devops](http://en.wikipedia.org/wiki/Devops) and but we don't want to make our developers drawn in the tedious system administration details. So we leverage these tools to make this process fun and friendly to developer.

我们相信[devops](http://en.wikipedia.org/wiki/Devops) 的理念，但是我们不想让我们的开发者陷入到冗长繁杂的系统管理细节里去，所以我们尽可能的使用让开发者友好的工具。

![cap](/img/logo-cap.jpg) ![chef](/img/logo-chef.png) ![vagrant](/img/logo-vagrant.png)

[`capistrano`](http://capistranorb.com) has been used extensively for all our deployment process including `Rails` and `nodeJS` application. We use it to setup system dependencies, generate necessary configuration(nginx/postgreSQL etc.), manage the running of application. As we run our server on `ubuntu 12.04`, we've summarized our knowledge with [`capistrano-zen`](https://github.com/zenhacks/capistrano-zen) and released it for public usage.

As we are scaling to more servers, We are shifting our server configuration to [`chef`](www.opscode.com/chef/) which is a great tool to describe and manage server configurations. We are also using [`vagrant`](http://www.vagrantup.com/) to make the development environments unified and easy to setup.

[`capistrano`](http://capistranorb.com) 已经被大量使用在我们所有的app的部署过程中，包括rails和nodeJS应用。我们用它来启动系统管理，安装主要的服务（nginx/postgreSQL等等），管理应用的运行。鉴于我们在ubuntu 12.04上运行我们的服务器，我们我们用[`capistrano-zen`](https://github.com/zenhacks/capistrano-zen)来总结我们的知识，并且把它开源供大家使用。

鉴于我们正在扩展到更多的服务器，我们要把我们的服务器配置利用[`chef`](www.opscode.com/chef/)来进行管理，我们也在使用[`vagrant`](http://www.vagrantup.com/)来让每个应用的开发环境在团队内统一，易于大家参与。

## Frontend Technology / 前端技术
![sass](img/logo-sass.png) 
![coffee-script](/img/logo-coffee.png)
![angular-js](/img/logo-an.png)

We love [`sass`](http://sass-lang.com/) and [`coffeescript`](http://coffeescript.com/).They make working with css and javascript fun again. Sass makes css code more reusable and modulized, and together with [`compass`](http://compass-style.org/), it makes working with CSS3 across browser a joy.

CoffeeScript brought out [the good part](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742) out of javascript and add functional programming features to it. The tuned syntax brings legibility and expressiveness to the language.

Speaking of frontend MVC, recently, we will dive into `AngularJS`.

我们热爱[`sass`](http://sass-lang.com/)和[`coffeescript`](http://coffeescript.com/)，它们使得于css和js开发有关的工作变的更有意思一些。
Saas为css增加了可重用性和模块化的组织.当和[`compass`](http://compass-style.org/)一起用的时候，在多浏览器端实现css3的功能就容易很多了。

Coffeescript提炼了javascript中[优秀的部分](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742)并且增加了函数式编程的特性。调整好了的语法使编程语言更加具有可读性和表现性。

因为近期会有以前端为主的应用程序，我们也在考虑使用`AngularJS`作为前端的开发框架。

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

后端处理着一个应用的最复杂的工作。我们试着去遵循在[12-factor-app](http://12factor.net/)里提到过的指导方针去让我们的后端更加具有扩展性和重用性。

[`Rails`](http://rubyonrails.org/)是所有具有复杂逻辑和相对传统的网页应用的首选，例如[花里花店](http://hua.li)。我们现在在最近3.2.11版本上运行，等4.0发布以后，会尽快进行升级。

对于需求更简单的后端的开发，例如[Manzuo](http://manzuoapp.com)， 我们会利用[`nodeJS`](http://nodejs.org/)作为基础网络组件。与此同时，我们也用`nodeJS`来开发一些较轻量级的网络服务，比如`pushd`和`localtunnle`。

对于关系型数据库的选择，鉴于[`PostgreSQL`](http://postgresql.org/)的完整的triggers and constrains的实现以及[noSQL的特点](http://www.postgresql.org/docs/current/static/hstore.html)，我们选择它主要的数据库系统。

我们也大量使用[`redis`](http://redis.io/)来作为session的存储，nginx缓存，队列处理作业的数据支持等等。

## Summary / 总结
We've benefited a lot from these open source community and we use our [friday][about-article] to give back to all those great projects to make it better.

我们从开源社区收益良多，并且我们会利用[星期五][about-article]对开源项目做一些代码提交，让这些工具变得更完善。

[about-article]: /intro.html#zenjobs