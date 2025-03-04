# HomeController - API de Câmbio de Moeda

Este é um controlador em Ruby on Rails que recupera dados de câmbio de diferentes moedas para o real (BRL) e os prepara para exibição em um gráfico. O controlador obtém informações de uma API externa (AwesomeAPI) e processa os dados de forma que as taxas de câmbio de várias moedas sejam associadas a datas específicas.

## Funcionalidade

O código realiza as seguintes operações:
- Recolhe as taxas de câmbio diárias para as moedas:
  - USD-BRL (Dólar Americano - Real)
  - EUR-BRL (Euro - Real)
  - BTC-BRL (Bitcoin - Real)
  
- Faz uma requisição à API pública `AwesomeAPI` para obter as taxas de câmbio diárias para cada moeda.
- Processa a resposta da API, extraindo as taxas de câmbio e associando-as às respectivas datas.
- Prepara os dados para serem exibidos em um gráfico na visão correspondente.

## Dependências

Este controlador depende das bibliotecas Ruby padrão:
- `net/http` - Para fazer requisições HTTP para a API.
- `json` - Para parsear a resposta JSON da API.

## Estrutura de Dados

O controlador define uma constante `CURRENCIES` que contém as moedas que serão usadas na requisição à API. Para cada moeda, a estrutura contém um código de moeda (por exemplo, `USD-BRL`, `EUR-BRL`, `BTC-BRL`).

A resposta da API é processada para obter o valor da taxa de câmbio (`high`) para cada data (`timestamp`). As datas são formatadas no formato `DD/MM/YYYY`, e os valores são armazenados em um hash para cada moeda. O controlador, então, prepara esses dados para exibição em um gráfico.

## Como Funciona

### 1. Definição das Moedas:
O controlador começa com uma constante `CURRENCIES` que contém os códigos das moedas de interesse:
```ruby
CURRENCIES = [
  { code: 'USD-BRL' },
  { code: 'EUR-BRL' },
  { code: 'BTC-BRL' },
]
