create table ToDo (
	ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ACTION VARCHAR(1024) NOT NULL,
	ASSIGNEDTO_ID INTEGER NOT NULL,
	CREATEDBY_ID INTEGER NOT NULL,
	CREATED TIMESTAMP NOT NULL,
	UPDATEDBY_ID INTEGER NOT NULL,
	UPDATED TIMESTAMP NOT NULL,
	FOREIGN KEY (assignedto_id) REFERENCES User(id),
	FOREIGN KEY (createdby_id) REFERENCES User(id),
	FOREIGN KEY (updatedby_id) REFERENCES User(id)
);

create table ToDoHistory (
	ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ACTION VARCHAR(1024) NOT NULL,
	UPDATEDBY_ID INTEGER NOT NULL,
	UPDATED TIMESTAMP NOT NULL,
	TODO_ID INTEGER NOT NULL,
	FOREIGN KEY (todo_id) REFERENCES ToDo(id),
	FOREIGN KEY (updatedby_id) REFERENCES User(id)
);
