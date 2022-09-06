Sys.setlocale("LC_TIME", "Russian")

dates <- (readline(prompt = "Введите время начала (ЧЧ ММ CC): "))
hours <- as.numeric(substr(dates, 1, 2))
minutes <- as.numeric(substr(dates, 4, 5))
seconds <- as.numeric(substr(dates, 7,8))

datef <- (readline(prompt = "Введите время  конца (ЧЧ ММ CC): "))
hourf <- as.numeric(substr(datef, 1, 2))
minutef <- as.numeric(substr(datef, 4, 5))
secondf <- as.numeric(substr(datef, 7,8))

if(hours != "NA" & minutes != "NA"  & seconds != "NA" ) { 
	if(hourf != "NA" & minutef != "NA"  & secondf != "NA" ) { 
		if(hours < 0 | hours > 24) {
			print("Вы вели не правильное время начала")
		}
		if(minutes < 0 | minutes > 60) {
			print("Вы вели не правильное время начала")
		}
		if(seconds < 0 | seconds > 60) {
			print("Вы вели не правильное время начала")
		}
		if(hourf < 0 | hourf > 24) {
			print("Вы вели не правильное время конца")
		}
		if(minutef < 0 | minutef > 60) {
			print("Вы вели не правильное время конца")
		}
		if(secondf < 0 | secondf > 60) {
			print("Вы вели не правильное время конца")
		} else {
			print("COOL")
		}
		
	}
}