# "Data Automation (ELT)"


## 1. ELT Script:
Created a powerful ELT script that smoothly moves data from one PostgreSQL database to another. 

![image](https://github.com/hari255/Data-Engineering/assets/59302293/2ad50cb9-e134-4d9f-9a7e-62b77d3fef02)



# 2. Airflow DAG: 
_Apache Airflow is an open-source platform designed to programmatically author, schedule, and monitor workflows._

| Operations | Description |
| ------:| -----------:|
| run_elt_script Task| Runs the ELT script, ensuring data flows seamlessly. |
|dbt_run Task |  Uses dbt in a container for modeling and analysis. Turns raw data into useful insights. |


# 3. dbt Project Configuration:
In the background, the dbt project (custom_postgres) is carefully set up in dbt_project.yml. It tells dbt where to find models, analyses, tests, etc. Also, it defines how the example model should appear—like shaping raw data into a neat table. 📊

This project is my way of making data tasks simpler and more automated. 🤖 Excited about the potential impact! Stay tuned for more updates. 👨‍💻 #DataAutomation #DataEngineering #dbt #Airflow #TechJourney 

# 4. Docker

**The docker-comppose.yaml file sets up an environment for an ELT (Extract, Load, Transform) pipeline using PostgreSQL databases and Apache Airflow for workflow orchestration**

## 1. Services

### source_postgres:

 + Runs a PostgreSQL container as the source database.
 + Initializes the database with an SQL script.

### destination_postgres:

 + Runs a PostgreSQL container as the destination database.

### postgres:

 +Runs a PostgreSQL container to store Airflow's metadata.
init-airflow:

Initializes the Airflow database and creates an admin user.
Ensures that the postgres service is ready before starting.
webserver:

Runs the Airflow webserver.
Connects to the necessary networks and mounts volumes for configurations and DAGs.
scheduler:

Runs the Airflow scheduler.
Connects to the necessary networks and mounts volumes for configurations and DAGs.
Networks

elt_network: A custom Docker network that allows all services to communicate with each other.
Volumes

destination_db_data: Volume to persist data for the destination PostgreSQL database.





**References**
Chau, J. (n.d.). The all-in-one workspace for your notes, tasks, wikis, and databases. Notion.
    https://transparent-trout-f2f.notion.site/FreeCodeCamp-Data-Engineering-Course-Resources-e9d2b97aed5b4d4a922257d953c4e759
