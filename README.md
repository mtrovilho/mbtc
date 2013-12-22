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

Ticker:

		ticker = MBTC::Mercado.ticker( < :btc ou :ltc >  ) # o padrão é :btc

Orderbook:

		orderbook = MBTC::Mercado.orderbook( < :btc ou :ltc >  ) # o padrão é :btc

Trades:

		trades = MBTC::Mercado.trades( < :btc ou :ltc >  ) # o padrão é :btc
