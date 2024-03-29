to debottomify(bottomText)
	set plainText to ""
	--split by "👉👈"
	set bottomArray to {}
	set bottomChar to ""
	repeat with c in every character of bottomText
		if id of c is equal to id of "👉" then
			set end of bottomArray to bottomChar
			set bottomChar to ""
		else if id of c is equal to id of "👈" then
		else
			set bottomChar to bottomChar & c
		end if
	end repeat
	--decode bottom
	repeat with c in bottomArray
		set plainCharId to 0
		if c is "❤️" then
			set plainCharId to plainCharId + 0
		else
			repeat with e in every character in c
				if id of e is equal to id of "🫂" then
					set plainCharId to plainCharId + 200
				else if id of e is equal to id of "💖" then
					set plainCharId to plainCharId + 50
				else if id of e is equal to id of "✨" then
					set plainCharId to plainCharId + 10
				else if id of e is equal to id of "🥺" then
					set plainCharId to plainCharId + 5
				else if id of e is equal to id of "," then
					set plainCharId to plainCharId + 1
				end if
			end repeat
		end if
		set plainText to plainText & character id plainCharId
	end repeat
	return plainText
end debottomify
