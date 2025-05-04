FROM cgr.dev/chainguard/python:latest-dev AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt


FROM cgr.dev/chainguard/python:latest
WORKDIR /app

# Copiar os pacotes do builder
COPY --from=builder /home/nonroot/.local /home/nonroot/.local

# Copiar o app
COPY app.py .
COPY templates templates/
COPY static static/

# Variáveis de ambiente
ENV PYTHONPATH="/home/nonroot/.local/lib/python3.11/site-packages"
ENV PATH="/home/nonroot/.local/bin:$PATH"

USER nonroot

EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
