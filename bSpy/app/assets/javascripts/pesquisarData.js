$(document).ready(function(){
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
});