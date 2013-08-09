module ApplicationHelper

  def ugly_lyrics(text)
    p "@@@@@@@@@"
    p text
    text_arr = h(text).split("\r\n")
    funky_text = text_arr.map do |line|
      "&#9835; " + line
    end.join("<br>")
    funky_text = "<pre>#{funky_text}</pre>"
    funky_text.html_safe
  end
end
