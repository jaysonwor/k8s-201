from locust import HttpLocust, TaskSet, task

class WebsiteTasks(TaskSet):
 
    def on_start(self):
    	self.client.verify = False
	
    @task
    def index(self):
        self.client.get("/", auth=($USER, $PASSWORD))
        
class WebsiteUser(HttpLocust):
    task_set = WebsiteTasks
    min_wait = 5000
    max_wait = 15000
