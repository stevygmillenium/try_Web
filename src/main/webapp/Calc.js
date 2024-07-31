/**
 * @author
 */
function sum(a,b){
	var c=parseFloat(a)+parseFloat(b);
	window.alert(c);
	document.getElementById('c').value=c;
}
function avg(a,b){
	var c=parseFloat(a)+parseFloat(b);
	var d=c/2;
	window.alert(d);
	document.getElementById('c').value=d;
}
function check_Range(a,b){
	var nums=new Array(2*5);
	for(var i=0;i<nums.length;i++){
		nums[i]=Math.random()*(parseFloat(b)-parseFloat(a))+parseFloat(a);
	}
	nums.sort();
	window.alert(nums.join(","));
	document.getElementById('f').value=nums.join(",");
}
function exchangerates(amt){
	var json=new XMLHttpRequest();
	json.open('get','https://api.exchangerate-api.com/v4/latest/JMD');
	json.onreadystatechange= function() {
    if (this.readyState == 4 && this.status == 200){
		var j_data=JSON.parse(json.responseText);
		window.alert(parseFloat(amt)*j_data["rates"]["USD"]);
		}
	};
	json.send();
}