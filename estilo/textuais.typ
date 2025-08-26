#import "/metadados.typ": metadados, estilo

#let textuais(doc) = {
set page(
    paper: estilo.folha,
    margin: (inside: estilo.margens.interna, top: estilo.margens.superior, outside: estilo.margens.externa, bottom: estilo.margens.inferior),
    //header-ascent: 0cm,
    //footer-descent: 0cm,
    header: context align(right, text(size:10pt)[#counter(page).display()])
  )
set text(
    font:"Arial",
    size: 12pt,
    lang: "pt",
    region: "BR",
 )
set heading(numbering: "1.1.1.1.1")

show heading: set align(left)
show heading: set block(spacing: 1.5em)
show heading: set text(
  weight: "regular",
  font:"Arial",
  size:12pt,
)
show heading: set par(
  leading: 1.5em,
  justify: false,
)
show heading: set block(spacing: 3em)
show heading.where(level: 1): set text(weight: "bold")
show heading.where(level: 1): upper
show heading.where(level: 2): upper
show heading.where(level: 3): set text(weight: "bold")
show heading.where(level: 5): set text(style: "italic")

set par(
  leading: 1.5em,
  justify: true,
  hanging-indent: 0em,
  first-line-indent: (
    amount: 1.25cm,
    all: true,
  ))

set enum(numbering: "a)")
doc
}

#let centro(text) = align(center, rect(fill: red,text))