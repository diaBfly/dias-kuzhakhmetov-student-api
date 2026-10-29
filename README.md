# Asan Abai Student API Midterm Project

Spring Boot CRUD API for the DevOps midterm. The API stores students in PostgreSQL and is designed to run locally with Docker Compose.

## Personal details

- Student: Asan Abai
- Repository: `asan-abai-student-api`
- Image: `asan-abai-student-api:v1.0-asan-abai`
- Jenkins job: `Asan_Abai_Student_API`

## API endpoints

| Method | Endpoint | Purpose |
|---|---|---|
| POST | `/api/students` | Create a student |
| GET | `/api/students` | List students |
| GET | `/api/students/{id}` | Get one student |
| PUT | `/api/students/{id}` | Update a student |
| DELETE | `/api/students/{id}` | Delete a student |

Start the stack after setting a local password:

```bash
export POSTGRES_PASSWORD='use-a-local-secret'
docker compose up --build -d
```

Example CRUD demonstration:

```bash
curl -i -X POST http://localhost:8080/api/students \
  -H 'Content-Type: application/json' \
  -d '{"fullName":"Asan Abai","email":"asan.abai@example.com"}'
curl -i http://localhost:8080/api/students
curl -i http://localhost:8080/api/students/1
curl -i -X PUT http://localhost:8080/api/students/1 \
  -H 'Content-Type: application/json' \
  -d '{"fullName":"Asan Abai Updated","email":"asan.updated@example.com"}'
curl -i -X DELETE http://localhost:8080/api/students/1
curl -i http://localhost:8080/api/students/999
```

`GET /api/students/999` returns HTTP 404, demonstrating handling for a nonexistent student.

## Linux evidence

```bash
./scripts/Asan_Abai_system_report.sh
ls -l scripts/Asan_Abai_system_report.sh backups/README_Asan_Abai.bak
ps aux | grep '[j]ava' || true
./scripts/Asan_Abai_log_analysis.sh
```

In Linux, `>` replaces a file's contents, while `>>` appends content to the end of the file.

## Docker evidence

```bash
docker compose ps
docker compose logs app
docker inspect asan-abai-student-api
docker compose exec app sh
docker compose stop app
docker compose start app
docker compose up --build -d
```

PostgreSQL data persists because it is stored in the named `postgres-data` volume.

## Git workflow to demonstrate

```bash
git init
git config user.name 'Asan Abai'
git config user.email 'asan.abai@example.com'
git add .
git commit -m 'Initial commit: Asan Abai Student API'
git switch -c feature/asan-abai-crud
# make CRUD changes
git add . && git commit -m 'Add Asan Abai student CRUD endpoint'
git add README.md && git commit -m 'Document Asan Abai API testing'
git switch main && git merge --no-ff feature/asan-abai-crud
git switch -c feature/asan-abai-documentation
# resolve a deliberately created README conflict manually, then commit
git tag v1.0-asan-abai
git remote add origin https://github.com/YOUR_USERNAME/asan-abai-student-api.git
git push -u origin main --tags
```

Do not commit `.env`, passwords, or database credentials. Use local environment variables and Jenkins Credentials instead.

