Sys.setlocale("LC_TIME", "Russian")
dates <- (readline(prompt = "Введите время начала (ЧЧ:ММ:СС): "))
if(nchar(dates) != 8) {
	print("Неправильно указали время начала.\n")
} else {
	datef <- (readline(prompt = "Введите время конца (ЧЧ:ММ:СС): "))
	if (nchar(datef) !=8) {
		print("Неправильно указали время конца.\n")
	} else {
		hours <- as.numeric(substr(dates, 1, 2))
		minutes <- as.numeric(substr(dates, 4, 5))
		seconds <- as.numeric(substr(dates, 7,8))

		hourf <- as.numeric(substr(datef, 1, 2))
		minutef <- as.numeric(substr(datef, 4, 5))
		secondf <- as.numeric(substr(datef, 7,8))

		if(hours != "NA" & minutes != "NA"  & seconds != "NA" ) { 
			if(hourf != "NA" & minutef != "NA"  & secondf != "NA" ) { 
				if(hours < 0 | hours > 24) {
					print("Неправильно указали час начала.\n")
				} else if(minutes < 0 | minutes > 60) {
					print("Неправильно указали минуту начала.\n")
				} else if(seconds < 0 | seconds > 60) {
					print("Неправильно указали секунду начала.\n")
				} else if(hourf < 0 | hourf > 24) {
					print("Неправильно указали час конца.\n")
				} else if(minutef < 0 | minutef > 60) {
					print("Неправильно указали минуту конца.\n")
				} else if(secondf < 0 | secondf > 60) {
					print("Неправильно указали секунду конца.\n")
				} else {
					newtime <- (secondf + minutef * 60 + hourf * 3600)
					newtime <- (newtime  - 
						(seconds + minutes * 60 + hours * 3600))			
					newsecond <- newtime %% 60
					newminute <- (newtime %% 3600) %/% 60
					newhour <- newtime %/% 3600 
					cat(sprintf("%02d %02d %02d",
						newhour, newminute, newsecond))
				}
			
			} else {
				print("Неправильно указали время конца.\n")
			}
		} else {
			print("Неправильно указали время начала.\n")
		}
	}
}
