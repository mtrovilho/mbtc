mbtc
====

CLI para [Mercado Bitcoin](http://www.mercadobitcoin.com.br/)


Instalação
----------

Adicione essa linha no Gemfile:

    gem 'mbtc'

Execute:

    $ bundle

Ou instale você mesmo:

    $ gem install mbtc


Uso
---

    mercado = MBTC.Mercado.new( < :btc ou :ltc > ) # o padrão é :btc
    
    # Ticker:
    ticker = mercado.ticker
    
    # Orderbook:
    orderbook = mercado.orderbook
    
    # Trades:
    trades = mercado.trades


CLI
---

    $ mbtc [opções] [comando]

    Opções:
      -h, --help                       Mostra ajuda
          --version                    Mostra versão
          --log-level LEVEL            Define o log level
                                       (debug|info|warn|error|fatal)
                                       (Padrão: info)
      -t, --type TYPE                  Tipo do request (btc ou ltc)
                                       (Padrão: btc)

    Comandos:
      ticker
