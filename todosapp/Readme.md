#My Rails Todo App

##Description:
Creating, updating, reading and deleting tasks in a Todo list, using Ruby 2.2.3

##Note:
This app uses TASKS not TODO for a tables name, change URL accordingly

For Hard Mode: Task was changed to id 2 as 1 was deleted. 

See below:

###The Following URL requirements were tested in the Rails Todo app:
```http://localhost:3000/tasks should display all the tasks as JSON
http://localhost:3000/tasks/new should display an empty (new) task as JSON
http://localhost:3000/tasks/1 should display just that single tasks as JSON
http://localhost:3000/tasks/8989898 should display an error message as JSON
Sending a POST request to http://localhost:3000/tasks with the params of { "task": "Finish Homework" } I should see my task returned to me as json (Using Postman)
Sending a DELETE request to http://localhost:3000/tasks/1 should delete that task from the database and return the message “deleted” as json (Using Postman)

Sending a PUT request to http://localhost:3000/tasks/2 with the params of { completed: true } should update the task in the database and display to me the newly changed task as json (Using Postman)```

