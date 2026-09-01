from fastapi import FastAPI

app = FastAPI(
    title="FastAPI Template",
    version="0.1.0",
)


@app.get("/health")
def health():
    return {"detail": "API is healthy", "status": "ok"}
