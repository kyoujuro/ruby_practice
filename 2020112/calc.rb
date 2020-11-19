class TaxCalculation
  def initialize
    p 'calculation is start'
  end

  def execute(price, tax_rate)
    price * tax_rate
  end
end

calc = TaxCalculation.new

p calc.execute(100, 0.1)
