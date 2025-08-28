#let getCapa(config) = {
  let capa = yaml(config).capa
  let estilo = yaml(config).estilo

  set page(
      paper: estilo.folha,
      margin: (
        right: eval(estilo.margens.direita),
        top: eval(estilo.margens.superior),
        left: eval(estilo.margens.esquerda),
        bottom: eval(estilo.margens.inferior)
      ),
      // Numeração de páginas no cabeçalho, alinhada à direita
      header: context align(right, text(size:10pt)[#counter(page).display()])
    )
  set text(
      font: estilo.fonte,
      size: eval(estilo.tamanho),
      lang: estilo.linguagem,
      region: estilo.pais,
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
      amount: eval(estilo.paragrafo.recuo),
      all: true,
    ))

  set enum(numbering: "a)")


  //type(margem_diereita)
  type(eval(estilo.margens.direita))
}