from fastapi import FastAPI
from pydantic import BaseModel
from typing import List,Optional
from uuid import UUID,uuid4

app = FastAPI()

# In-memory storage for tasks
tasks = []

# Pydantic model for Task
class Task(BaseModel):
    id: int
    title: str
    description: str
    completed: bool = False

# Create a new task
@app.post("/createtasks/",response_model=Task)
def create_task(task: Task):
    task.id=int()
    tasks.append(task)
    return {"message": "Task added successfully!"}

# Get all tasks
@app.get("/tasks/", response_model=List[Task])
def get_tasks():
    return tasks

# Update a task
@app.put("/tasks/{task_id}")
def update_task(task_id: int, updated_task: Task):
    for i, task in enumerate(tasks):
        if task.id == task_id:
            tasks[i] = updated_task
            return {"message": "Task updated successfully!"}
    return {"error": "Task not found."}

# Delete a task
@app.delete("/tasks/{task_id}")
def delete_task(task_id: int):
    for i, task in enumerate(tasks):
        if task.id == task_id:
            tasks.pop(i)
            return {"message": "Task deleted successfully!"}
    return {"error": "Task not found."}