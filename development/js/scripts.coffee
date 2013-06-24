$("input").bind "keyup paste", ->
	runQuery()


runQuery = ->
	one = Number($("#1").val())
	two = Number($("#2").val())
	three = Number($("#3").val())
	four = Number($("#4").val())
	five = Number($("#5").val())
	six = Number($("#6").val())
	seven = Number($("#7").val())
	eight = Number($("#8").val())
	nine = Number($("#9").val())
	ten = Number($("#10").val())
	eleven = Number($("#11").val())
	twelve = Number($("#12").val())

	sum = one + two + three + four + five + six + seven + eight + nine + ten + eleven + twelve
	percent = Math.round((sum/12))

	fixResults percent, sum



fixResults = (percent, sum) ->
	if percent < 30
		$("#grade").text("FAIL")
		$("#needed").text("#{(.3*1200) - sum} marks to min peformance")
	else if percent < 40
		$("#grade").text("MIN")
		$("#needed").text("#{(.4*1200) - sum} marks to a pass")
	else if percent < 50
		$("#grade").text("PASS")
		$("#needed").text("#{(.5*1200) - sum} marks to a 2.2")
	else if percent < 60
		$("#grade").text("2.2")
		$("#needed").text("#{(.6*1200) - sum} marks to a 2.1")
	else if percent < 70
		$("#grade").text("2.1")
		$("#needed").text("#{(.7*1200) - sum} marks to a 1st class")
	else if percent > 70
		$("#grade").text("1st")
		$("#needed").text("Well Done! :)")


	$("#percent").text(percent)


runQuery()
