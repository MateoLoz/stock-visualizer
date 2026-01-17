# 📦 Stock Visualizer (WIP)

Este proyecto es un backend experimental construido en Go, enfocado en aprender:

- Arquitectura backend
- Tooling real (bash, CI, health checks)
- Fundamentos de cloud y automatización
- Buenas prácticas sin sobreingeniería
- El proyecto se desarrolla de forma incremental.

## 🧠 Objetivo del Proyecto

Construir un backend que:

- Exponga información de stocks
- Implemente health checks
- Incorpore rate limiting
- Utilice polling para actualización de datos
- Sea fácil de extender a cloud (AWS / API Gateway)

## 🛠️ Tech Stack

- Go
- Bash scripts (orquestación local)
- GitHub Actions (CI)
- Linux-first tooling

## 📁 Estructura del proyecto

```
├─ cmd/
│  └─ server/        # Entry point
├─ internal/
│  └─ api/           # Handlers & logic
├─ scripts/
│  ├─ start.sh       # Start server
│  ├─ health.sh      # Health check
│  └─ dev.sh         # Local orchestration
├─ go.mod
└─ README.md
```

## Local Development

Start Server

```bash
./scripts/start.sh
```

Full Dev flow

```bash
./scripts/dev.sh
```

Health Check

```bash
./scripts/health-check.sh
```

## CI Pipeline

The project includes a GitHub Actions pipeline that:

- Instalar Go
- construir el proyecto
- Ejecutar scripts de bash
- Asegurar que el proyecto se pueda construir a medida que crece.

📌 Notes

- La api se encuentra en progreso
- Enfocado en aprender y correctitud, no en la completitud de las funcionalidades
- La arquitectura evolucionara a medida que el proyecto crezca

## 🧠 filosofia de aprendizaje

Aprender por construir, romper y arreglar — no por memorizar documentación.
