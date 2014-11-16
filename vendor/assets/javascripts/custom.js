jQuery(document).ready(function($) {
    $('#myModal').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget);
		var recipient = button.data('name');
		var modal = $(this);
		modal.find('.modal-title').text('Chi tiết cầu thủ ' + recipient);
		modal.find('.player-info .name').html('Tên: <span class="label label-primary name">'+button.data('name')+'</span>');
		modal.find('.player-info .team').html('Câu lạc bộ: <span class="label label-danger team">'+button.data('team')+'</span>');
		modal.find('.player-info .no').html('Áo số <span class="label label-success no">'+button.data('no')+'</span>');
		modal.find('.player-info .position').html('Vị trí <span class="label label-info position">'+button.data('position')+'</span>');
		modal.find('.player-info .dob').html('Ngày sinh <span class="label label-warning dob">'+button.data('dob')+'</span>');
		modal.find('.player-info .nation').html('Quốc tịch <span class="label label-danger nation">'+button.data('nation')+'</span>');
		modal.find('.player-info .height').html('Chiều cao <span class="label label-default height">'+button.data('height')+" cm"+'</span>');
		modal.find('.player-info .weight').html('Cân nặng <span class="label label-primary weight">'+button.data('weight')+" kg"+'</span>');
		modal.find('.player-info .leg').html('Thuận chân <span class="label label-info leg">'+button.data('leg')+'</span>');
		modal.find('.player-info .index').html('Chỉ số <span class="label label-success index">'+button.data('index')+'</span>');
		modal.find('.index.progress-bar').attr({
			'style': 'width: '+button.data('index')+'%',
			'aria-valuenow': button.data('index')
		});
		modal.find('.index.progress-bar').text(button.data('index'));
		modal.find('.avatar').attr('src', 'images/players/'+button.data('avatar'));
	});
});


