class String
  @@colors = {red: 31, green: 32, yellow: 33, blue: 34, pink: 35, light_blue: 36, white: 97, light_grey: 37, black: 30}
  def self.colors
    @@colors.keys
  end
  def self.create_colors
    self.colors.each do |color|
      self.send(:define_method, "#{color}") do
        puts "\e[#{@@colors[color]}m#{self}\e[0m"
      end
    end
  end
  def self.sample_colors
    self.colors.each do |color|
      print "This is "
      "#{color}".send(color)
    end
  end
end

String.create_colors
