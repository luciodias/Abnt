#let metadados = (
    centro:"CENTRO ESTADUAL DE EDUCAÇÃO TECNOLÓGICA PAULA SOUZA",
    faculdade: "Faculdade de Tecnologia da Baixada Santista Rubens Lara",
    cursos: "Cursos Superiores de Tecnologia",
    titulo: "GUIA PARA FORMATAÇÃO DE TRABALHOS ACADÊMICOS: projeto, monografia, relatório técnico e regras da ABNT",
    autor: (
      nome: "Adélia", 
      sobrenome_meio: "da Silva", 
      sobrenome: "Saraiva", 
      titulacao: "Profª Drª"
    ),
    local: "Santos - SP",
    data: "Agosto/2018",
  )

#let estilo = (
    folha: "a4",
    // ABNT NBR 14724:2011 §5.1 - FORMATO
    // (...) utilizar papel branco ou reciclado, no formato A4 (21 cm × 29,7 cm).

    margens: (interna: 3cm, externa: 2cm, superior: 3cm, inferior: 2cm),
    // ABNT NBR 14724:2011 §5.1 - FORMATO
    // As margens devem ser: para o anverso, esquerda e superior de 3 cm e
    // direita e inferior de 2 cm; para o verso, direita e superior de 3 cm
    // e esquerda e inferior de 2 cm.

    fonte:(
        serif:"Times New Roman",
        // serif:"STIX Two Text",
        //serif:"Libre Caslon Text",
        // sans:"TeX Gyre Heros",
        // sans:"Helvetica",
        sans:"Lato",
        mono:"SF Mono",
        // mono:"IBM 3270",
        tamanho:(normal: (size:1em)
            , large: 18pt
            , larger: 20pt
            , huge: 25pt
            , small: 10pt
            , tiny: 7pt
            , corpo: 14pt
            , regular:12pt
            ,
        ),
    ),

    // ABNT NBR 14724:2011 §5.1 - FORMATO
    // Recomenda-se, quando digitado, a fonte tamanho 12 para todo o trabalho (...)
    // Tamanhos de letra baseadas na regular. regular = 1em
    espacamento: (
        // ABNT NBR 14724:2011 §5.2 - ESPAÇAMENTO
        // Todo texto deve ser digitado ou datilografado com espaçamento 1,5 entre linhas
        // entrelinhas: 1.5,
        entrelinhas: 1.2,
        entreparagrafos: 1.5,
        titulos: 3,
        ),
    numeracao: (titulos: "1.1.1.1.1", enumeracoes: "1.1.1.1.1.",),
    tema: red.darken(50%), // cor do tema (afeta links e outros pequenos detalhes)

  )




#let config = (
  metadados: metadados,
  estilo: estilo,
  estrutura: (),
)