# Library Management System

This project is a Library Management System built with Node.js, Express, and PostgreSQL. It allows users to manage book inventory, user accounts, borrowing records, and payments.

## Database Schema

The database schema for this project is designed using DB Designer. You can view the schema by following the link below:

[View Database Schema on DB Designer](https://dbdesigner.page.link/h4PB2udakEM8hZ1s8)

## Instructions

### Prerequisites

Before you begin, ensure you have the following installed on your machine:
- Node.js
- PostgreSQL
- Docker (optional, if using Docker for database management)

### Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/shrutmakde/library-management.git
   cd library-management


2. **Download node from its website and all the dependencies through the command**:
   ```sh
   npm install express body-parser pg sequelize dotenv jsonwebtoken bcrypt
- express: Web framework for Node.js.
- body-parser: Middleware to parse JSON bodies.
- pg: PostgreSQL client for Node.js.
- sequelize: ORM (Object-Relational Mapping) to interact with the database.
- dotenv: Load environment variables from a .env file.
- jsonwebtoken: For user authentication.
- bcrypt: For hashing passwords.**


3. **Download & install docker desktop and deploy a container for postgres database by pulling the respective image and running the container**:
   ```sh
   docker pull postgres
   docker run --name postgres-db -e POSTGRES_PASSWORD=yourpassword -p 5432:5432 -d postgres

4. **[OPTIONAL] You can also run a container for pgadmin GUI for the database management**:
   ```sh
   docker pull dpage/pgadmin4
   docker run --name pgadmin-container -p 5050:80 -e PGADMIN_DEFAULT_EMAIL=user@domain.com -e PGADMIN_DEFAULT_PASSWORD=catsayourpassword -d dpage/pgadmin4

5. **Connect your database and register it to pgadmin by adding it.**

6. **Check on your containers if they're running well by**:
   ```sh
   docker ps
   docker inspect [name of your container]


7. **Databse has been connected to the application in the db.js file and main applicatin is the index.js file.**

8. **Make an .env file for the credentials of how to connect to the database. Example shown in .env.example file.**
   ```makefile
   DB_NAME=library
   DB_USER=postgres
   DB_PASSWORD=yourpassword
   DB_HOST=localhost
   DB_PORT=5432
   JWT_SECRET=your_secret_key

9. **Run the index.js file using**:
   ```sh
   node index.js
Open a browser and type []


10. 




# [COuldn't complete the assignment fully as the local machine wasn't able to communicate with the database container for some reason. As an almost novice for frontend and DBMS, watching all the crash courses and trying to finish the assigment within the span of a week has been proven quite tough for me. I'm delivering what I could to you.]