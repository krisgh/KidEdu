var baseText = null;

/**
 * 显示弹窗和结果
 * 
 * @param w
 *            弹窗宽度
 * @param h
 *            弹窗高度
 * @returns null
 */

function showPopup(w, h) {
	var popUp = document.getElementById("popupcontent");

	popUp.style.top = "200px";
	popUp.style.left = "200px";
	popUp.style.width = w + "px";
	popUp.style.height = h + "px";

	var sbar = document.getElementById("statusbar");
	sbar.style.marginTop = (parseInt(h) - 40) + "px";
	popUp.style.visibility = "visible";

}

function hidePopup() {
	var popUp = document.getElementById("popupcontent");
	popUp.style.visibility = "hidden";
}
/**
 * 计算结果，并显示通知弹窗
 * 
 * @param r
 *            从隐藏input对象中获取结果值
 * @param w
 *            弹窗宽度
 * @param h
 *            弹窗高度
 * @returns null
 */
function determine(r, w, h) {

	// result validation
	var rslt = document.getElementById("formularesult").value;
	if (r - rslt == 0) {
		// document.getElementById("resultstage").innerHTML =
		// "<div>厉害了，回答正确!</div>";
		document.getElementById("div-right").innerHTML = "<img src=\"imgs/right.png\" class=\"am-img-responsive\"/>";
		showResult();
		// showResultImgs();
		disableBtns();
		enableNext();

	} else {
		// document.getElementById("resultstage").innerHTML =
		// "<div>错了，别灰心，再接再厉!</div>";
		document.getElementById("div-right").innerHTML = "<img src=\"imgs/wrong.png\" class=\"am-img-responsive\" />";
		// showResultImgs();
	}

	// showPopup(w, h);
}

// disable button
function disableBtns() {
	var selectBtns = document.getElementsByClassName("btn-select");
	for (var i = 0; i < selectBtns.length; i++) {
		selectBtns[i].disabled = true;
	}
}

// show result
function showResult() {
	var imgRslt = document.getElementById("img-result");
	imgRslt.style.display = "inline-block";
}

// show result imgs
function showResultImgs() {
	var rsltstage = document.getElementsByClassName("formularesult");
	for (var i = 0; i < rsltstage.length; i++) {
		rsltstage[i].style.visibility = "visible";
	}
}

// enable next button
function enableNext() {
	var btnNext = document.getElementById("btn-next");
	btnNext.href="FormulaAction";
}
