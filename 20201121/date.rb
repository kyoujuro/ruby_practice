require 'date'

module  MondayLister
  def self.list(date)
    0.upto(30) do |i|
      plus_date = date + i
      next unless plus_date.wday == 1
      p plus_date.strftime('%Y-%m-%d(%a)')
    end
  end
end

date = Date.today
MondayLister.list(date)
