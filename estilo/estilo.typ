// Configuração da página
#let setPage(config, doc) = {
  let estilo = yaml(config).estilo
  set page(
    paper: estilo.folha,
    margin: (
      right: eval(estilo.margens.direita),
      top: eval(estilo.margens.superior),
      left: eval(estilo.margens.esquerda),
      bottom: eval(estilo.margens.inferior)
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
    font: estilo.fonte,
    size: eval(estilo.tamanho),
  )
  set par(
    leading: 1em,
    justify: true,
    hanging-indent: 0em,
  )
  doc
}