from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "message": "CNDP DevOps API is running burrraahh.."
    })

@app.route("/health")
def health():
    return jsonify({
        "status": "healthy"
    })

@app.route("/api/status")
def status():
    return jsonify({
        "service": "cndp-api",
        "version": "1.0"      })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
    