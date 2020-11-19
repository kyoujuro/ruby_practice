class TaxCalculation
  @@tax_rate = 0.10
  def initialize(price)
    @price = price
  end

  def execute
    @price * @@tax_rate
  end
end

calc = TaxCalculation.new(100)

p calc.execute
