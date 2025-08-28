#import "../estilo/textuais.typ" : textuais, centro
#show: textuais
#show heading: set align(center)
#set par(
  //spacing: 0.5em, // 1.5 * 14.4pt (tamanho padrão)
  leading: 0.75em, // 1.5 * 14.4pt (tamanho padrão)
)
#bibliography("refs.bib", title: "REFERÊNCIAS", style: "/estilo/abnt.csl")