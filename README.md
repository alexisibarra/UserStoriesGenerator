# User Stories Generator

Automated Product backlog generator using ruby and latex. Developed by [Alexis Ibarra](https://github.com/alexisibarra)

## Requeriments

This project assumes the following tools are installed:

- [Latex](https://gist.github.com/rain1024/98dd5e2c6c8c28f9ea9d)
- [Ruby](https://www.ruby-lang.org/es/)

# Execution

The only auto-generated file is userStories.tex wich is going to be populated with the meta-information
you provide in userStoriesSpec.json. Any other file that you think is necessary to create your product
backlog must be created and required in productBacklog.tex

Generate the pdf using [make](http://man7.org/linux/man-pages/man1/make.1.html):

    $ make pdf

Clean any pdflatex auxiliar files

    $ make clean

