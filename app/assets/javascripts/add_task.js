$(function() {
  var newTaskForm = $('#tasks-list');
  if(newTaskForm.length > 0) {

    $('.task-item').on('click', function() {
      var self = this;
      var content = $(self).text();
      var taskId = $(self).data('task-id');
      var finishTaskUrl = '/tasks/' + taskId + '/finish';

      if($(self).hasClass('finished')) {
        // do nothing
      } else {
        $.ajax({
          method: "POST",
          url: finishTaskUrl,
          data: {}
        }).done(function(rsp) {
          if(rsp['status'] == 'success') {
            var task = $('a[data-task-id=' + rsp['task_id'] + ']');
            task.addClass('finished');
          } else {
            alert("Failed to finish this task: " + content);
          }
        });
      }
    })

  }
})
