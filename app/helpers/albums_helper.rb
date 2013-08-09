module AlbumsHelper

  def list_tracks
	  html += "<ol>"
		html += "<% album.tracks.each do |track| %>"
		html +=  "<li> <%= track.name %> </li>"
		html += "<% end %>"
	  html += "</ol>"
    html.html_safe
  end

end
