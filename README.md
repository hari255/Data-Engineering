# "Data Automation (ELT)"

Excited to share my recent data project — "Data Automation (ELT)." 
🚀 Let's break it down:

# 1. ELT Script:
Created a powerful script (elt_script.py) that smoothly moves data from one PostgreSQL database to another. Think of it as a digital courier— picking up data, transforming it, and delivering it to its new home. 💻

# 2. Airflow DAG: 
_Apache Airflow is an open-source platform designed to programmatically author, schedule, and monitor workflows._

Meet the brain behind the operation— the Airflow DAG (elt_and_dbt). It's like my personal data manager. 🧠 Two main tasks:

run_elt_script Task: Runs the ELT script, ensuring data flows seamlessly.
dbt_run Task: Uses dbt in a container for modeling and analysis. Turns raw data into useful insights.

# 3. dbt Project Configuration:
In the background, the dbt project (custom_postgres) is carefully set up in dbt_project.yml. It tells dbt where to find models, analyses, tests, etc. Also, it defines how the example model should appear—like shaping raw data into a neat table. 📊

This project is my way of making data tasks simpler and more automated. 🤖 Excited about the potential impact! Stay tuned for more updates. 👨‍💻 #DataAutomation #DataEngineering #dbt #Airflow #TechJourney 

**References**
Chau, J. (n.d.). The all-in-one workspace for your notes, tasks, wikis, and databases. Notion.
    https://transparent-trout-f2f.notion.site/FreeCodeCamp-Data-Engineering-Course-Resources-e9d2b97aed5b4d4a922257d953c4e759
