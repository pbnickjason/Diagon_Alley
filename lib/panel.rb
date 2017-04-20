class Panel
   attr_accessor :raw_xml
   def initialize(raw_xml)
      xml = Nokogiri::XML(raw_xml)
      @title = xml.xpath("panel/title").text
      @title_color = xml.xpath("panel/title/@color")
      @title_font = xml.xpath("panel/title/@font")
      @image = xml.xpath("panel/image").text
      @text = xml.xpath("panel/text").text[0..192]
      @text_color = xml.xpath("panel/text/@color").text
      @text_font = xml.xpath("panel/text/@font").text
   end
   def title
      return @title
   end
   def title_color
      return @title_color
   end
   def title_font
      return @title_font
   end
   def image_address
      return @image
   end
   def text
      return @text
   end
   def text_color
      return @text_color
   end
   def text_font
      return @text_font
   end
end