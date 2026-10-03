source=Chastity-AI-Book.md

title="Autistic Articles Against AI"
subtitle="A collection of writings about Artificial Intelligence"
author="Chastity White Rose"

push:
	git add .
	git commit -m "AI Book Update"
	git push
Make-Ebook:
	pandoc $(source) -o ebook.epub -s --metadata title=$(title) --metadata subtitle=$(subtitle) --metadata author=$(author)
docx:
	pandoc $(source) -o book.docx --reference-doc custom-reference.docx
odt:
	pandoc $(source) -o book.odt --reference-doc custom-reference.odt
html:
	pandoc $(source) -o book.html
html-book:
	pandoc $(source) -o book.html -s --metadata title=$(title) --metadata subtitle=$(subtitle) --metadata author=$(author)

