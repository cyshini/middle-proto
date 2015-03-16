# Middle-proto

A clean and lightweight Middleman template for my personal projects, with all the useful and basic tools for starting awesome things. The project sources have to be committed to the master branch of your repository, while the "middleman deploy" command will automatically build and deploy the website on a gh-pages branch... And that's it !

- - -

## Tools

- [Middleman + extensions](https://middlemanapp.com/) *[Static site generator]*
- [Bourbon + Neat + Bitters](http://bourbon.io/) *[sass mixins/grid/basic elements]*
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*

## Demo
[http://cyshini.github.io/middle-proto/](http://cyshini.github.io/middle-proto/)

## Getting Started

Set up your project in your code directory

    git clone git@github.com:cyshini/middle-proto.git your-project-folder
    cd your-project-folder
    git remote rm origin
    git remote add origin your-git-url

Install dependencies

    bundle install

Launch the server on your machine

    middleman server

Commit and push sources to your repository

    git commit -am "commit-message"
    git push origin master

Build and deploy website to Github Pages

    middleman deploy
