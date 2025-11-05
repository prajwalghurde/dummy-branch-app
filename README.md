🧩 Branch Loan API — DevOps Intern Take-Home

A containerized Python Flask API for managing loan records, integrated with PostgreSQL and Alembic migrations.

🚀 Quick Start (Docker)
# Clone repository
git clone https://github.com/<your-username>/branch-loan-api
cd branch-loan-api

# Start containers
docker compose up --build

# Apply DB migrations
docker compose exec api alembic upgrade head

✅ Verify Setup
Endpoint	Method	Example Response
/health	GET	{ "status": "ok" }
/api/loans	GET	[]
/api/loans	POST	Creates a new loan

Example:

curl -X POST http://localhost:5000/api/loans \
-H "Content-Type: application/json" \
-d '{
  "borrower_id": "B123",
  "amount": 10000,
  "currency": "USD",
  "term_months": 12,
  "interest_rate_apr": 5.5
}'

🧰 Tech Stack

Python 3.11

Flask

SQLAlchemy + Alembic

PostgreSQL 16

Docker & Docker Compose

🎯 Final Verification

✅ docker compose up → starts API + DB
✅ alembic upgrade head → creates loans table
✅ /health → works
✅ /api/loans → returns []
✅ /api/loans (POST) → creates entry