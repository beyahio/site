---
layout: page
title: About
permalink: /about/
---

Our goal is to provide  working solutions and design recommendations based on our experience in the industry.  We are driven by a set of principles that has shown us success in the past.

# Our Principles
- **Prefer Open Source Software** Whenever possible, use open source software to build out your systems.  Using open source software gives you the power of a community working towards a common goal.  Using open source software also gives you the ability to gain deep insight into what is actually happening.  Having the code available is invaluable in understanding the reasons why the software you are using is behaving a particular way.
- **Deliver with Quality**  Writing new code is not the hard part in building out systems.  The hard part is ensuring that the system you are building meets the needs and is maintainable over the long term.  Any production ready system should have some form of testing suite associated with it to ensure that new features are working and that old features continue to work.
- **Contribute**  Very rarely will open source software meet all of your needs or be bug free.  Once you have a need that isn't met or find a bug- patch it!  If you are building something new, always build with the intent of sharing it with the world.  The fewer things people need to build the more productive everyone will be.
- **Eye on the Prize**  Focus on getting the current feature/project delivered.  Delivery trumps everything.  Don't get caught up in idealisms and recognize what is truly important: delivery.  This does not mean to skip the testing or ignore quality, it means you need to ensure that the quality items are included in your development flow.  This guy may have said it best: [Your code may be elegant, but mine works](https://omniti.com/seeds/your-code-may-be-elegant)
- **Be Idiomatic**  When building systems or using tools, don't try to force a process or method that goes against how that tool was intended to be used.  The same goes for writing in different programming languages or paradigms.  Take the time to learn the elements that make the language/tool you are using unique and capitalize on it.  As they say, "When in Rome, do as the Roman's do."
- **Minimize Runtime Dependencies**  To get a running application, your instances should depend only on the bare minimum services in order to become functional.  If you follow [12-Factor#5](https://12factor.net/build-release-run), you will get close, but the same thing principle should be applied to the actions that occur *before* your application starts.  Items such as configuration management runs, template generation, etc should occur before runtime execution.

# Recommended Tools / Practices
- [Tweleve-Factor App](https://12factor.net/) This is one of the most important items to be familiar with.  While it cannot be blindly followed, it is good to have the techniques and methods in your tool belt.  Following it where you can will greatly simplify app migrations and provide a solid pattern for building new applications.
- [Jenkins](https://jenkins.io/) Jenkins is an automation platform that is mature, and allows you to get stuff done.  It is typically the bridge between code and working environments.  At the core of Jenkins is a plugin system that allows it to be extensible to meet any needs you may have.
- [ELK Stack](https://www.elastic.co/webinars/introduction-elk-stack)  An entirely open source centralized logging platform that is widely known in the open source community.  While vast, it can be hard to configure and setup in a way that scales and there are some pitfalls associated with some of the components.
- [Ansible](https://www.ansible.com/)  Ansible is a (newer) automation tool that aims at performing configuration management and orchestration to groups of servers.  It is not the most powerful but it is easy to get started with and easy for organizations to adopt and for that reason it is on our recommended list.
- [Sensu](https://sensuapp.org/)  Sensu is touted as a monitoring router.  Using its basic set of primitives (check, handler) you are able to compose a monitoring system that behaves the way you would expect.  It is also Nagios-compatible, so in theory you can port checks from Nagios over to Sensu, although we have rarely seen this happen.
- [Packer](https://www.packer.io/)  Packer is used for building images.  It supports a ton of different inputs and outputs and is widely used throughout the industry as the de-facto tool for building images.  It also has a machine-readable mode which makes adding a wrapper around it even easier.

# Limited Use Recommendations
These tools are recommended, but only for very specific uses after evaluating your needs.  There is nothing wrong with these tools, we just have seen them cause a significant amount of issues when implementing and therefore do no recommend them for general purpose use, but rather to be adopted with caution.
- [Docker](https://www.docker.com/)  Docker solves a lot of problems, namely recreating environments in a portable fashion.  Unfortunately, we have seen a lot of stability problems with it in environments that churn through lots of containers or where there are long-lived (stateful) containers.  We currently only recommend docker for: local development environments, CI systems (such as Jenkins).
- [Ruby](https://www.ruby-lang.org/en/)  Ruby as a language is beautiful, as a platform it struggles.  Ruby as a platform suffers from too many short comings to allow us to recommend it for general use.  The biggest issues are: new developer onboarding, gem dependency issues (native extensions failing to compile, nokogiri being used everywhere), and issues getting gems to work in an environment where there is an internal CA involved.  Ruby is only recommended in environments where you have multiple people that know the Ruby ecosystem, and are willing to help others when they run into issues.  If you plan on using Ruby in production, lean towards JRuby.
- [Chef](https://www.chef.io/chef/)  Chef is a super powerful configuration management system with a ton of community cookbooks.  One of the downfalls of Chef is the Ruby ecosystem that is described above.  The other downfall is that many organizations attempt to use Chef for things it is not good at, such as orchestration.  Chef also has a ton of components that require understanding the Chef ecosystem (supermarket, berkshelf, role cookbooks, test-kitchen, etc) to get running effectively.  It also struggles due to the ChefDK, which was aimed at simplification (it failed).  Chef is only recommended if you have a team that is familiar with Ruby and the multiple components in Chef.
- [Munin](http://munin-monitoring.org/)  Munin is not designed for the cloud, there are much better tools out there for monitoring.  Where Munin shines is its out of box configuration and speed to setup.  Munin is only recommended if you have *no* other monitoring in place and you need to get something in fast.

# Tools We Are Exploring Further
Tools in this category are ones that we don't have enough experience with to make a solid Go/No-Go recommendation on.  We use these tools, but don't have enough confidence in them yet to have an opinion on one way or another.
- [Vault](https://github.com/hashicorp/vault)  API driven secrets management system.  We have run into some issues with it at scale attempting to run it in HA.  If you are going to use it, we *do not* recommend it for use at runtime.

# Recommended Development Tools
- [IntelliJ](https://www.jetbrains.com/idea/) The Java IDE that does so much more.  It has plugins for Ruby and Python, and native support for Groovy.  Learn the keyboard shortcuts, they seriously enhance your development experience.
- [iTerm2](https://www.iterm2.com/) iTerm2 is a replacement for the built-in Terminal application.  It has some features that makes it a bit better than the built-in.
- [vim](http://www.vim.org/)  Vim is the preferred way of editing text in the terminal.  It provides syntax highlighting and macro support, which makes it ideal for quick editing and repetive actions.
- [Atom](https://atom.io/)  Atom is a basic text editor that is good for quick editing of files.  It is *not* an IDE so it doesn't have built-in support for items such as running tests.  It does provide a nice project view and some helpful shortcuts for navigating.
- [Homebrew](http://brew.sh/)  Homebrew is a package manager for OS X.  It is used primarily for installing development dependencies and some console applications.  An alternative is [MacPorts](https://www.macports.org/) but it seems like Homebrew is the way to go.

# Our Preferred Languages
While we will work with any language, and have experience with a variety of them, our strongest languages that we deal the most with are:

- Ruby
- Java
- Groovy

Our preferred languages are in no way a recommendation to use those languages.  As with all things, evaluate the requirements and your competencies and make a decision based on that.

# Recommended Reading
- [Ports and Adapters Software Architecture](https://spin.atomicobject.com/2013/02/23/ports-adapters-software-architecture/)
- [SOLID](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))
- [Head First Design Patters](http://shop.oreilly.com/product/9780596007126.do)
