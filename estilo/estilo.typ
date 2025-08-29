// Alterações nas formatações de Paragrafo
#let curta(label, pg: "") = [#cite(label,form: "author") (#cite(label,form: "year")#if pg != "" [, p. #pg])]

#let ct(valor, tipo: "direta") = {
  set par(
  leading: 0.75em,
  spacing: 0.75em,
  hanging-indent: 4cm,
  first-line-indent: (
    amount: 4cm,
    all: true,
   ),
  )
}

// Configuração da página
#let setPage(config, doc) = {
  let estilo = yaml(config).estilo
  set page(
    paper: estilo.folha,
    margin: (
      right: eval(estilo.margens.direita),
      top: eval(estilo.margens.superior),
      bottom: eval(estilo.margens.inferior),
      left: eval(estilo.margens.esquerda),
    ),
    header-ascent: 0cm,
    footer-descent: 0cm,
  )
  doc
}

// Configuração da fonte e parágrafo
#let setEstilo(config,doc) = {
  let estilo = yaml(config).estilo
  set text(
    //font: estilo.fonte,
    size: eval(estilo.tamanho),
    top-edge: "bounds",
    bottom-edge: "descender",

  )
  set par(
    leading: eval(estilo.paragrafo.espaçamento.entrelinhas), 
    justify: true,
    hanging-indent: 0em,
  )

  set heading(numbering: "1.1.1.1.1")

  show heading: set align(left)
  show heading: set block(spacing: 1.5em)
  show heading: set text(
    weight: "regular",
    font: estilo.fonte,
    size: eval(estilo.tamanho),
  )
  show heading: set par(
    leading: eval(estilo.paragrafo.espaçamento.entrelinhas),
    justify: false,
  )
  show heading: set block(spacing: eval(estilo.paragrafo.espaçamento.entrelinhas) * 2)
  show heading.where(level: 1): set text(weight: "bold")
  show heading.where(level: 1): upper
  show heading.where(level: 2): upper
  show heading.where(level: 3): set text(weight: "bold")
  show heading.where(level: 5): set text(style: "italic")

  set par(
    leading: eval(estilo.paragrafo.espaçamento.entrelinhas),
    spacing: eval(estilo.paragrafo.espaçamento.entrelinhas),
    justify: true,
    hanging-indent: 0em,
    first-line-indent: (
      amount: eval(estilo.paragrafo.recuo),
      all: true,
    ))

  set enum(numbering: "a)")
  
  doc
}