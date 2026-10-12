from fastapi import FastAPI

app = FastAPI(title="Sameday STRO API")

@app.get("/health")
def health():
    return {"status": "ok"}
