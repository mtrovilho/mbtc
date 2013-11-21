module MBTC
  ##
  # Trade
  #
  # date: timestamp da operação.
  # price: preço unitário em Reais da operação.
  # amount: volume de Litecoin ou Bitcoin da operação.
  # tid: ID da operação.
  #
  class Trade
    attr_reader :date
    attr_reader :price
    attr_reader :amount
    attr_reader :tid

    def initialize( params = {} )
      params.each do |k,v|
        self.instance_variable_set( "@#{k}", v )
      end
    end

  end
end
