from app import create_app

print("🚀 Running Branch Loan API via wsgi.py ...")
app = create_app()

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
