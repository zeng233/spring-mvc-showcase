$(function() {
	$('#singleBtn').click(function() {
		$.ajax({
			url: 'confirm/single',
			type: 'post',
			dataType: 'text',//输入中文，前台返回乱码 TODO
//			dataType: 'json',
			data: {
				userName: $('#userName').val()
			},
			success: function(data) {
				$('#repResult').html(data);
			},
			error: function(data) {
				alert('error method result is : ' + data);
			}
		});
	});
	
	
	$('#objBtn').click(function() {
		$.ajax({
			url: 'confirm/obj',
			type: 'post',
			dataType: 'json',
			data: {
				userName: $('#objUserName').val()
			},
			success: function(data) {
				$('#repResult').html(data.userName);
			},
			error: function(data) {
				alert('error method result is : ' + data);
			}
		});
	});
	
	$('#viewBtn').click(function() {
		$.ajax({
			url: 'confirm/view',
			type: 'post',
			dataType: 'html',
			data: {
				userName: $('#viewUserName').val()
			},
			success: function(data) {
				$('#repResult').html(data);
			},
			error: function(data) {
				alert('error method result is : ' + data);
			}
		});
	});
});