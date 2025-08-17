# Makefile to generate README.md

DATE := $(shell date '+%B %d, %Y at %H:%M:%S %Z')
LINES := $(shell wc -l < guessinggame.sh)

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "Generated on: $(DATE)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(LINES)" >> README.md

clean:
	@rm -f README.md

