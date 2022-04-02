Welcome to your new dbt project!

## Purpose


## Project structure

* .deployment - boilerplate for DevOps pipelines to execute DBT
* .devcontainer - dbt VS and docker setup
* benchmark_analysis - dbt project, JMeter data and other great stuff

### Using the dbt project to analyse results

[Detailed instructions to setup dbt locally](benchmark_analysis/DBT.md)

Once completed, change directory to *benchmark_analysis* (dbt project location)

And try running the following commands:
- dbt seed --threads 8
- dbt run --model staging --threads 8
- dbt snapshot
- dbt run --model core
- dbt run --model agg --threads 8
- dbt test

### JMeter setup

TODO


