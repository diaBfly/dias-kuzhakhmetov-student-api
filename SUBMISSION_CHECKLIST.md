# DevOps Midterm Submission Checklist

## Part 1 Linux administration

- [ ] Run `mkdir -p asan-abai-student-api/{scripts,logs,backups,src}` in a Linux terminal and capture the command.
- [ ] Run the report script and capture the output log.
- [ ] Confirm `scripts/Asan_Abai_system_report.sh` has permission `-rwxr--r--` (744).
- [ ] Create the final README backup after editing README: `cp README.md backups/README_Asan_Abai.bak`.
- [ ] Run the log analysis script and show the generated analysis file.

## Part 2 Git and GitHub

- [ ] Replace the sample Git name, email and GitHub URL with your real values.
- [ ] Create three or more meaningful commits and retain the visible history.
- [ ] Create and merge both required feature branches, including a real README conflict.
- [ ] Push to a personal GitHub repository and show branches and tag `v1.0-asan-abai`.

## Part 3 Docker

- [ ] Start Docker Desktop, set `POSTGRES_PASSWORD`, then run `docker compose up --build -d`.
- [ ] Capture `docker compose ps`, `docker compose logs app`, `docker inspect` and `docker compose exec` output.
- [ ] Run all six curl examples in README and capture the HTTP responses.
- [ ] Restart the services and show that the record remains in PostgreSQL.

## Part 4 Jenkins

- [ ] Install/configure JDK 17, Gradle 8.10+, Docker and Git on a Docker-capable Jenkins agent.
- [ ] Configure a Pipeline job named `Asan_Abai_Student_API` pointing to your GitHub repository.
- [ ] Add repository credentials to Jenkins Credentials if the repository is private.
- [ ] Run the pipeline, deliberately fail it only on a personal test branch, repair it, and retain both console logs.
- [ ] Configure a GitHub webhook or polling, push one commit, and capture the automatically triggered build.

