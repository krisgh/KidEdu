// Empty JS for your own code to be here

function rslt_choose(result){
	show_choose(result);
	judge_right(result);
}

function show_choose(result){
	var rslt = document.getElementById("mj-result");
	rslt.src="imgs/"+result+".png";
	document.getElementById("mj-div-result").style.visibility="visible";
}

function judge_right(result){
	var right =document.getElementById("mj-div-result").getAttribute("value");
	var sorry= document.getElementById("div-right");
	if(result-right==0) {
		show_right_window(result);
		sorry.src="";
	}
	else{
		sorry.src="imgs/wrong.png";
	}
}

function show_right_window(result){
	$('#doc-modal-answer').modal();
}
