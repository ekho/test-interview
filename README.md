# Introducing

The main aim of this test task is to create small API, with token authentication and fetching data from DB.

All constants value writing below in `UPPER_CASE` you can find in .env file.  

# Install

We have already prepared docker environment with nginx, php 7.4 and mysql database.
To run this project you only need to run command below.  
```bash
make install
``` 
If you not familiar with makefile or you haven't install it on you machine you can build docker manually. 

# Tasks

You need to implement two endpoint: authentication and fetching data

**Auth endpoint:**

```url
POST /api/auth
``` 

This endpoint must receive json object
```json
{
  "user": USER_LOGIN,
  "password": USER_PASSWORD
}
```
Please, check if the auth data correct (do not save user in DB, use simple string comparison) and if yes return to client this json object:
```json
{
  "token": "<token_value>"
}
```
where `token_value` is the base64 encoded string which consist of 2 strings concatenated by dot `.`; Example:
```string
1609333176.f42f8d6288329b6cd3e2c2ae8256f5aba5e073a1d2b0c835f517efdc7b45ab2c
``` 
The first part is the timestamp when request was made.<br>The second part is SHA256 HMAC hash of the timestamp value computed with `APP_SECRET_KEY`


**Data endpoint**

```url
GET /api/stats
```

All request to this endpoint must contain header:
```http
Authorization: Bearer <token_value>
```
Token must be valid during `TOKEN_LIFETIME` seconds. If token is invalid or expired return 403 http code.

In `hiring` database you can find table `interviews`. The schema of this table:
```mysql
create table interviews (
  id int NOT NULL AUTO_INCREMENT,
  position_id int,
  candidate_id int,
  scheduled timestamp,
  score int,
  PRIMARY KEY (id)
);
```

Please, select without joins and subqueries ALL positions which has been closed between May and September 2020 with score > 7.

Return data as json array.

# P.S.
It would be good if your implementation would allow you to add new endpoints quickly and easy.
Please, do not use any frameworks. The main aim of this project is to look at you style and architectural approach.
If you have any question or you need some clarification about this task you are welcome to write us by email `ekho@ekho.name` or https://t.me/ekho_0
  
When you'll be ready create pull request. May the Force be with you.


