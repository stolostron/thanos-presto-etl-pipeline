## Using Hive

## About

These directions will allow a user to create a database, a schema and table to successfully query data gathered from user's S3 bucket storage.

### Creating/Using Database

The following commands will create a local Hive database to store the user's future schemas and tables:

create database database_name;

<img width="554" alt="Screen Shot 2022-08-03 at 11 29 07 AM" src="https://user-images.githubusercontent.com/89415386/182682488-8a119135-ffa3-46de-81a1-2a4a72433f2c.png">

In this example I used the database name metrics.
These should be the results:

<img width="411" alt="Screen Shot 2022-08-04 at 6 45 32 AM" src="https://user-images.githubusercontent.com/89415386/182862632-3158efbb-2eb8-4720-8077-309ce5635159.png">

Once the database is created then it should be able to use by writing:

use database_name;

<img width="851" alt="Screen Shot 2022-08-04 at 7 29 30 AM" src="https://user-images.githubusercontent.com/89415386/182872507-e2526f7f-5809-404c-ac52-9d1ba3efaaf4.png">

<img width="565" alt="Screen Shot 2022-08-04 at 6 49 25 AM" src="https://user-images.githubusercontent.com/89415386/182863499-9c9b8c88-5066-4b6a-b645-883180c1e36b.png">

Once it is confirmed the database is being used the user can create their schema for their data. Given that the schema will change depending on the logical types each column has, this will vary from user to user. In this example the schema will be curated for parquet files.

### Creating Schemas/Tables

To create the schema the user should use each column represented in the file while making sure to use the exact value type for each column name. WARNING: Hive has very specific preferences in regards to the TIMESTAMP logical type so, if the user could change their timestamp values to strings, it is highly recommended. The schema written down below is how to create a table with the location pulling from the s3 bucket using the AWS credentials that were given.

<img width="655" alt="Screen Shot 2022-08-04 at 7 21 33 AM" src="https://user-images.githubusercontent.com/89415386/182870761-f1d1ed11-464e-4e69-97a6-f132d81be7a0.png">

Then load the data from the location into the table.

<img width="763" alt="Screen Shot 2022-08-04 at 7 24 16 AM" src="https://user-images.githubusercontent.com/89415386/182871343-414b427b-898d-4860-8c34-65fb231dd387.png">

You will be able to see the tables you created by using:

see tables;

<img width="681" alt="Screen Shot 2022-08-04 at 7 29 52 AM" src="https://user-images.githubusercontent.com/89415386/182872608-2ad0b021-3109-43ff-a845-c86f33307f65.png">

<img width="379" alt="Screen Shot 2022-08-04 at 7 26 21 AM" src="https://user-images.githubusercontent.com/89415386/182871838-ce30cc49-c949-478b-85d7-3955bb7f99e2.png">

Next, switch to the presto terminal to start querying!
