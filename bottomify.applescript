to bottomify(plainText)
	set bottomText to ""
	if length of plainText is equal to 1 then
		set bottomText to bottomify(id of plainText, bottomText) & "👉👈"
	else
		repeat with charId in (id of plainText)
			set bottomChar to ""
			--bottomify char
			if charId is equal to 0 then
				set bottomChar to bottomChar & "❤️"
			else
				repeat while charId is greater than 0
					if charId is greater than or equal to 200 then
						set bottomChar to bottomChar & "🫂"
						set charId to charId - 200
					else if charId is greater than or equal to 50 then
						set bottomChar to bottomChar & "💖"
						set charId to charId - 50
					else if charId is greater than or equal to 10 then
						set bottomChar to bottomChar & "✨"
						set charId to charId - 10
					else if charId is greater than or equal to 5 then
						set bottomChar to bottomChar & "🥺"
						set charId to charId - 5
					else if charId is greater than or equal to 1 then
						set bottomChar to bottomChar & ","
						set charId to charId - 1
					end if
				end repeat
			end if
			set bottomText to bottomText & bottomChar
			set bottomText to bottomText & "👉👈"
		end repeat
	end if
	return bottomText
end bottomify