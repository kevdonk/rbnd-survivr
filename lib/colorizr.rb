class String
  @@colors = [['red', 31], ['green',32], ['yellow',33], ['blue',34], ['pink',35], ['light_blue',36], ['white',97], ['light_grey',37], ['black',30]]
  def self.colors
    returned_colors =  Array.new
    @@colors.each do |color|
      returned_colors.push color[0]
    end
    return returned_colors
  end
  def self.create_colors
    @@colors.each do |color|
      self.send(:define_method, "#{color[0]}") do
        puts "\e[#{color[1]}m#{self}\e[0m"
      end
    end
  end
  def self.sample_colors
    @@colors.each do |color|
      print "This is "
      "#{color[0]}".send(color[0])
    end
  end
end

String.create_colors
