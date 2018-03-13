def code_word(error)
	message = ""
	error_hash = {404 => "Page not found.", 1292 => "Not even close.", 402 => "Page almost found."}
	error_hash.each_key { |key|
		if key == error
			message = error_hash[key]
		end
	}
	message
end