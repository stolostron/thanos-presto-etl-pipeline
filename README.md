# thanos to presto extract/transform/load pipeline

Red Hat Summer 2022 Interns for Advanced Cluster Management for Kubernetes data project. Wraps up and lays the functionality for bringing efficient clustering, predictive analytics, and other ML workloads into the realm of ACM cluster observability. 

The project is divided into three subdirectories corresponding to the 3 stages of the pipeline: data **retrieval**, data **manipulation**, and data **visualization**. The general architecture of the project can be described as pulling long-term persistent cluster data from Thanos, storing said metrics as parquet files in amazon s3 (configurable with other cloud object stores as well), manipulating these metrics to derive insight (eventually storing the results back in s3), and finally exposing these metrics through Apache Trino and Superset.
