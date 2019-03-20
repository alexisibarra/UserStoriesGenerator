CC = pdflatex

.PHONY: all clean generatePages

all: | pdf clean

pdf: generatePages
	$(CC) ./out/productBacklog.tex
	$(CC) ./out/productBacklog.tex

clean:
	/bin/rm -f *.toc *.log *.aux ./out/userStories_*.tex ./out/userStories.tex ./out/*.aux

generatePages:
	ruby userStoriesGenerator.rb
