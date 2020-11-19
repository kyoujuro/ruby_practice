class TaxCalculation
  def initialize(price, tax_rate)
    @price = price
    @tax_rate = tax_rate
  end

  def execute
    @price * @tax_rate
  end
end

calc = TaxCalculation.new(100, 0.1)

p calc.execute
