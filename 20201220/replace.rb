class Replace
  attr_write :inputfile, :outputfile
  
  def replace
    File.read(@inputfile).split("\n").each do |content|
      p content
    end
  end
end

