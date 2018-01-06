SHELL_SCRIPT=guessinggame.sh
DOC_FILE=README.md

docu: $(SHELL_SCRIPT)
	@echo "# 'guessinggame'" > $(DOC_FILE)
	@echo "## Simple bash script game that let the user guess the number of files in the directory" >> $(DOC_FILE)
	@echo "(Generated documentation for the '$<' bash shell script)" >> $(DOC_FILE)
	@echo >> $(DOC_FILE)
	@echo -n "- Markup file '$(DOC_FILE)' created on:   " >> $(DOC_FILE)
	@date -u >> $(DOC_FILE)
	@echo -n "- Number of lines in '$<': " >> $(DOC_FILE)
	@cat $< | wc -l >> $(DOC_FILE)

clean:
	@rm -f README.md
