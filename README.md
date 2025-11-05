🧩 Branch Loan API 

A fully containerized Python Flask API for managing loan records, integrated with PostgreSQL and Alembic migrations.
Built as part of the Branch International DevOps Intern Take-Home Assignment (2025).

🚀 Quick Start (Using Docker)
1️⃣ Clone the Repository
git clone https://github.com/prajwalghurde/dummy-branch-app.git
cd dummy-branch-app

2️⃣ Start Containers
docker compose up --build


This starts both:

loan_api — the Flask backend

loan_db — the PostgreSQL database

3️⃣ Apply Database Migrations
docker compose exec api alembic upgrade head


This runs Alembic migrations to create the required loans table.

✅ Verify Setup
Endpoint	Method	Description	Example Response
/health	GET	Health check for API	{ "status": "ok" }
/api/loans	GET	List all loans	[]
/api/loans	POST	Create a new loan	{ "id": 1, "borrower_id": "B123", "amount": 10000, ... }
Example: Create a Loan
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

🐍 Python 3.11

⚡ Flask

🗃️ PostgreSQL 16

🧱 SQLAlchemy + Alembic

🐳 Docker & Docker Compose

🧩 GitHub Actions (CI) — for build/test pipeline

🎯 Final Verification Checklist

✅ docker compose up — API & DB start successfully
✅ alembic upgrade head — creates loans table
✅ /health — returns { "status": "ok" }
✅ /api/loans (GET) — returns empty list []
✅ /api/loans (POST) — successfully creates loan entry
