require 'colorizr'

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
      self.class.send(:define_method, "#{color[0]}") do |text|
        "\e[#{color[1]}m#{text}\e[0m"
      end
    end
  end
  def self.sample_colors
    @@colors.each do |color|
      puts "This is #{self.send(color[0], "#{color[0]}")}"
    end
  end
end
