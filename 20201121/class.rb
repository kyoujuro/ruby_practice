class Book
  def initialize(type)
    @type = type
  end

  def title
    p "#{@type} is book."
  end
end

class Note < Book
  def page
    p "#{@type} is 30 pages."
  end
end

dic = Note.new('Dic')
dic.title
dic.page
