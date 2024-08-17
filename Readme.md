# Movie NodeApp Dockerization

## Objective

The objective of this assignment was to familiarize students with containerization using Docker by dockerizing a three-tier application built with Node.js. The project involved replacing hard-coded values with environment variables, creating Dockerfiles for frontend and backend components, writing a Docker Compose file, initializing a sample SQL dataset, and pushing Docker images to DockerHub using GitHub Actions CI. This assessment also reinforced concepts such as networking and volume usage in Docker.

## Milestones

### 1. Code Analysis and Environment Variables
- **Identify Hard-Coded Values**: Locate and replace hard-coded values in the frontend and backend code with environment variables.

### 2. Dockerfile Creation
- **Frontend Dockerfile**: 
  - Base image selection
  - Application code copying
  - Dependency installation
  - Port exposure

- **Backend Dockerfile**: 
  - Base image selection
  - Application code copying
  - Dependency installation
  - Port exposure

### 3. Docker Compose Configuration
- **Define Services**: Configure services for frontend, backend, and database.
- **Network Communication**: Establish communication between services.
- **Volumes**: Set up volumes for data persistence.

### 4. Database Initialization
- **SQL Script**: Implement and execute a SQL script for initializing a sample dataset within the database container.

### 5. Image Building and Pushing
- **Build Images**: Construct Docker images for frontend and backend using `docker-compose build`.
- **Push Images**: Push Docker images to Docker Hub using `docker-compose push`.

### 6. GitHub Actions CI
- **CI/CD Setup**: Create a GitHub Actions CI workflow to automate Docker image building and pushing.

## Getting Started

### Clone the Repository
Clone the repository to your local machine:
```bash
git clone https://github.com/zimmermantr/devops_assessment3.git
cd devops_assessment3
```

### Set Up Environment Variables
Create a .env file in the root of the project with the following content:
```bash
printf "POSTGRES_PORT=5432\nPOSTGRES_DB=mydatabase\nPOSTGRES_USER=myuser\nPOSTGRES_PASSWORD=mypassword\nDB_TYPE=postgres\nDB_HOST=postgres\nFRONT_PORT=3000\nBACK_PORT=3001\nREST_API_URL=http://backend:3001/data\nCONNECTION_STRING=postgres://myuser:mypassword@postgres:5432/mydatabase\n" > .env
```
Replace the placeholders with your actual values:

	•	POSTGRES_PORT: e.g., 5432
	•	POSTGRES_DB: Your database name
	•	POSTGRES_USER: Your Postgres user
	•	POSTGRES_PASSWORD: Your Postgres password
	•	DB_TYPE: Database type (e.g., postgres)
	•	DB_HOST: The hostname of your database container (e.g., postgres)
	•	FRONT_PORT: Frontend port (e.g., 3000)
	•	BACK_PORT: Backend port (e.g., 3001)
	•	REST_API_URL: URL for REST API (e.g., http://backend:3001/data)
	•	CONNECTION_STRING: Connection string for your database (e.g., postgres://myuser:mypassword@postgres:5432/mydatabase)

### Run the provided script
Ensure the script is executable and run it to set up the project:
```bash
chmod +x script.sh
./ script.sh
```