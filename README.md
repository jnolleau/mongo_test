# mongo_test
First implementation of mongoDB for education
The project includes 3 containers:  
- `mongodb`: the mongoDB process to store databases
- `mongo-express`: an UI to monitor databases
- `node`: small Node.js (Express) api to CRUD a `User` collection into `apinode` db

## To run the application:
NB: the installation process may take some times
```sh
$ cd mongo_test
$ docker-compose up --build
```
The first time you run the application, the database is empty, you may want to seed the db with some Open Data (Restaurants  from New York City):
```sh
$ ./seed_mongo.sh
```

## To CRUD Users with the api:
The `id` can be found in documents of mongo db apinode > users (ie. `_id`). 

### CREATE  
>PUT http://localhost:8080/v1/users/add  
> body:
>```json
>{
>    "name": "Doe",
>    "firstname": "John",
>    "email": "john.doe@test.com",
>    "password": "password"
>}
>```
### READ  
>GET http://localhost:8080/v1/users/{:id}  
### UPDATE  
>PATCH http://localhost:8080/v1/users/update  
> body:
>```json
>{
>    "name": "Doe",
>    "firstname": "Bob",
>    "email": "bob.doe@xxx.com",
>    "password": "blablabla"
>}
>```
### DELETE
>DELETE http://localhost:8080/v1/users/delete  
> body:
>```json
>{
>    "id": "{_id}",
>}
>```