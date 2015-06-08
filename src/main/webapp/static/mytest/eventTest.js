$(function() {
//	window.onbeforeunload = onbeforeunload_handler;
//	window.onunload = onunload_handler;
//	function onbeforeunload_handler() {
//		var warning = "确认退出?";
//		return warning;
//	}
//
//	function onunload_handler() {
//		var warning = "谢谢光临";
//		alert(warning);
//	}

//	window.onbeforeunload = function() // author: meizz
//	{
//		
//		var n = window.event.screenX - window.screenLeft;
//		console.log(n);
////		alert('n值：' + n);
//		var b = n > document.documentElement.scrollWidth - 20;
//		console.log(b);
//		if (b && window.event.clientY < 0 || window.event.altKey) {
//			alert("是关闭而非刷新");
//			//ajax请求设置成同步的
//			console.log(33333);
//			window.event.returnValue = ""; // 这里可以放置你想做的操作代码
//		}
//		
//		return '退出吗？';
//	}
	
	window.onbeforeunload = function() {
		
	}
});