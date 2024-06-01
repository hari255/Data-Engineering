# "Data Automation (ELT)"


## 1. ELT Script:
Created a powerful ELT script that smoothly moves data from one PostgreSQL database to another. 

![image](https://github.com/hari255/Data-Engineering/assets/59302293/2ad50cb9-e134-4d9f-9a7e-62b77d3fef02)



# 2. Airflow DAG
_Apache Airflow is an open-source platform designed to programmatically author, schedule, and monitor workflows._

| Operations | Description |
| ------:| -----------:|
| run_elt_script Task| Runs the ELT script, ensuring data flows seamlessly. |
|dbt_run Task |  Uses dbt in a container for modeling and analysis. Turns raw data into useful insights. |


# 3. Data Build Tools (DBT)
In the background, the dbt project (custom_postgres) is carefully set up in dbt_project.yml. It tells dbt where to find models, analyses, tests, etc. Also, it defines how the example model should appear—like shaping raw data into a neat table. 📊

This project is my way of making data tasks simpler and more automated. 🤖 Excited about the potential impact! Stay tuned for more updates. 👨‍💻 #DataAutomation #DataEngineering #dbt #Airflow #TechJourney 

# 4. Docker

```
Docker allows us to package our application and its dependencies into a single, portable container. This means that we can run our ELT pipeline consistently on any system that supports Docker, eliminating the "it works on my machine" problem. Using Docker Compose, we can define and manage multiple interdependent services with ease.
```

![image](https://github.com/hari255/Data-Engineering/assets/59302293/5330b3d5-9d51-4356-a4de-31e1fd5d1317)


## PostgreSQL Containers

We use separate PostgreSQL containers for the source and destination databases. This separation allows us to simulate a real-world data pipeline where data is extracted from a source system, transformed, and loaded into a destination system.

## Apache Airflow

Apache Airflow is deployed to manage and orchestrate the data workflows. We use Docker to run the Airflow webserver and scheduler, ensuring that all dependencies and configurations are handled automatically.

## Docker Compose
Docker Compose is used to define and run multi-container Docker applications. In our docker-compose.yaml file, we define the services required for our ELT pipeline, including the databases and Airflow components. Docker Compose simplifies the process of setting up and managing these services.



**The docker-comppose.yaml file sets up an environment for an ELT (Extract, Load, Transform) pipeline using PostgreSQL databases and Apache Airflow for workflow orchestration, it is like a backbone of the whole setup**

Here's the break down of docker-compose file.

## Services

### 1. source_postgres:

 + Runs a PostgreSQL container as the source database.
 + Initializes the database with an SQL script.

### 2. destination_postgres:

 + Runs a PostgreSQL container as the destination database.

### 3. postgres:

 + Runs a PostgreSQL container to store Airflow's metadata.
 
### 4. init-airflow:

 + Initializes the Airflow database and creates an admin user.
 + Ensures that the postgres service is ready before starting.

### 5. webserver:

 + Runs the Airflow webserver.
 + Connects to the necessary networks and mounts volumes for configurations and DAGs.

### 5. scheduler:

 + Runs the Airflow scheduler.
 + Connects to the necessary networks and mounts volumes for configurations and DAGs.
   
## Networks

***elt_network**: A custom Docker network that allows all services to communicate with each other.

## Volumes

**destination_db_data**: Volume to persist data for the destination PostgreSQL database.




---


**References**
Chau, J. (n.d.). The all-in-one workspace for your notes, tasks, wikis, and databases. Notion.
    https://transparent-trout-f2f.notion.site/FreeCodeCamp-Data-Engineering-Course-Resources-e9d2b97aed5b4d4a922257d953c4e759
