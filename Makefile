.PHONY:	help ? tests

build: build-docx build-html

build-docx: # TODO: this horror show will be replaced by a script once markdown2docx is ready to package
	cd ../markdown2docx && lein run ../cooperative-agreement/template.md ../cooperative-agreement/template.docx && cd ../cooperative-agreement

build-html:
	pandoc template.md -c style.css -s -f markdown+header_attributes -t html --standalone -o template.html

build-pdf:
# TODO

install-markdown2docx:
	git clone https://github.com/nilenso/markdown2docx.git ../markdown2docx

help: ?

?:
	@echo
	@echo "build (default) ..... Build all template formats"
	@echo "build-docx .......... Build a Microsoft Word template (with CSS)"
	@echo "build-html .......... Build an HTML template (with CSS)"
	@echo
