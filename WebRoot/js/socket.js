var websocket = null;
// 判断当前浏览器是否支持WebSocket
if ('WebSocket' in window) {
	websocket = new WebSocket("ws://192.168.0.14:8088/jwd/chat");
} else {
	alert('Not support websocket');
}

// 连接发生错误的回调方法
websocket.onerror = function() {
	setMessageInnerHTML("error");
};

// 接收到消息的回调方法
websocket.onmessage = function() {
	setMessageInnerHTML(event.data);
};

// 监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
window.onbeforeunload = function() {
	websocket.close();
};

// 发送消息
function send() {
	var item = $("#item").val();
	var StartTime = $("#StartTime").val();
	var EndTime = $("#EndTime").val();
	var text = $("#notice_text").val();
	var postv = $("#post option:selected").val();
	var getv = $("#get option:selected").val();
	var personv = $("#person option:selected").val();
	var longer = $("#longer").val();
	var str = item + "," + StartTime + "," + EndTime + "," + text + "," + postv
			+ "," + getv + "," + personv + "," + longer;
	websocket.send(str);
}

// 将消息显示在网页上
function setMessageInnerHTML(innerHTML) {
	var s = innerHTML.split(",");
	var item = s[0];
	var StartTime = s[1];
	var EndTime = s[2];
	var text = s[3];
	var postv = s[4];
	var getv = s[5];
	var personv = s[6];
	var group_id = getCookie("group_id");
	var user_id = getCookie("user_id");
	if (personv != 0) {
		if (personv == user_id) {
			alert(text);
		}
	} else {
		if (group_id == getv) {
			alert(text);
		}
	}

}
// 将消息显示在网页上
function tongZhi(innerHTML) {
	alert(innerHTML + "发布成功！");
}
