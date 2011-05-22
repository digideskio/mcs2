module ApplicationHelper
  def a_or_an(word)
    word = word.strip
    if %w{a e i o u A E I O U}.include? word[0..0].to_s
      "an #{word}"
    else
      "a #{word}"
    end
  end
  
  def url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end
end
