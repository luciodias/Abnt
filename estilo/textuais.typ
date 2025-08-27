#import "metadados.typ": metadados, estilo

#let textuais(doc) = {
set page(
    paper: estilo.folha,
    margin: (right: estilo.margens.direita, top: estilo.margens.superior, left: estilo.margens.esquerda, bottom: estilo.margens.inferior),
    //header-ascent: 0cm,
    //footer-descent: 0cm,
    header: context align(right, text(size:10pt)[#counter(page).display()])
  )
set text(
    font: estilo.fonte,
    size: estilo.size,
    lang: "pt",
    region: "BR",
 )
set heading(numbering: "1.1.1.1.1")

show heading: set align(left)
show heading: set block(spacing: 1.5em)
show heading: set text(
  weight: "regular",
  font: estilo.fonte,
  size: estilo.size,
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
  // leading: 12.6pt, // 1.5 * 14.4pt (tamanho padrão)
  // spacing: 12.6pt, // 1.5 * 14.4pt (tamanho padrão)
  leading: 1.145em, // 1.5 * 14.4pt (tamanho padrão)
  spacing: 1.145em, // 1.5 * 14.4pt (tamanho padrão)
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

#let direta_longa(valor) = {
// Alterações nas formatações de Paragrafo
  set par(
  leading: 0.75em,
  spacing: 0.75em,
  hanging-indent: 4cm,
  first-line-indent: (
    amount: 4cm,
    all: true,
   ),
  )
// Alterações nas formatações de Fonte
  set text(size:10pt)
// Retorno
  valor
}