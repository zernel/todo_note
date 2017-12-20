// Make sure it will execute after page render
$(function() {

  // Make sure it's the task list page
  var newTaskForm = $('#tasks-list');
  if(newTaskForm.length > 0) {

    // Bind click event for the task items
    $('.task-item').on('click', function() {
      var self = this;
      var content = $(self).text();
      var taskId = $(self).data('task-id');
      var finishTaskUrl = '/tasks/' + taskId + '/finish';

      // Check if current task is finished
      if($(self).hasClass('finished')) {
        // do nothing
      } else {
        // Send request to finish current task by Ajax
        $.ajax({
          method: "PATCH",
          url: finishTaskUrl,
          data: {}
        }).done(function(rsp) {
          // Add 'finished' class to the task element
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
