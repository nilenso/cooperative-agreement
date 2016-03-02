.PHONY:	help ? tests

build: build-docx build-html

build-docx:
# pandoc template.md -f markdown_mmd -t docx --reference-docx ref.docx -s -o template.docx

build-html:
	pandoc template.md -f markdown -t html -c buttondown.css -s -o template.html

build_pdf:
# TODO

help: ?

?:
	@echo
	@echo "build (default) ..... Build all template formats"
	@echo "build-docx .......... Build a Microsoft Word template"
	@echo
