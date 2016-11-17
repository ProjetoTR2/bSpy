$(document).ready(function(){
	var diaSelecionado;
	/*$("#date1").datepicker({
		dateFormat:"dd/mm/yy",
		changeMonth: true,
		changeYear: true,
		dayNames: ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"],
		dayNamesShort: ["Dom", "Seg","Ter","Qua","Qui","Sex"],
		dayNamesMin: ["D","S","T","Q","Q","S","S"],
		monthNames: ["Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"],
		monthNamesShort: ["Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"]
	});*/

	$(".datepicker").pickadate({
		selectMonths: true,
		selectYears: 15,
		monthsFull: [ 'janeiro', 'fevereiro', 'março', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro' ],
    	monthsShort: [ 'jan', 'fev', 'mar', 'abr', 'mai', 'jun', 'jul', 'ago', 'set', 'out', 'nov', 'dez' ],
    	weekdaysFull: [ 'domingo', 'segunda-feira', 'terça-feira', 'quarta-feira', 'quinta-feira', 'sexta-feira', 'sábado' ],
    	weekdaysShort: [ 'dom', 'seg', 'ter', 'qua', 'qui', 'sex', 'sab' ],
    	today: 'hoje',
    	clear: 'limpar',
    	close: 'fechar',
    	format: 'dd/mm/yyyy',
    	formatSubmit: 'yyyy/mm/dd',
    	hiddenSuffix: ''
	});

	// $("#enviarData").click(function(){
	// 	console.log($("#date1").val());

	// 	$.ajax({
	// 		type: "GET",
	// 		contentType: "application/json; charset=utf-8",
	// 		url: "/pesquisarData",

	// 	});
	// });
});