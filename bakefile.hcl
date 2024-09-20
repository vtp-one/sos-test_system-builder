variable "NAMESPACE" {
    default = "sos/test_system"
}

variable "VERSION" {
    default = "v0.0.1"
}

variable "CONTEXT_ROOT" {
    default = ""
}

variable "PLATFORM" {
    default = ""
}

variable "BACKEND_WORKING_DIR" {
    default = ""
}

variable "FRONTEND_WORKING_DIR" {
    default = ""
}

group "default" {
    targets = [
    "backend",
    "frontend"
    ]
}

target "backend" {
    dockerfile = "Dockerfile"
    tags = ["${NAMESPACE}/backend:${VERSION}"]
    context = "${CONTEXT_ROOT}/docker/test-backend"
    contexts ={
        backend-source = "${BACKEND_WORKING_DIR}"
    }
}

target "frontend" {
    dockerfile = "Dockerfile"
    tags = ["${NAMESPACE}/frontend:${VERSION}"]
    context = "${CONTEXT_ROOT}/docker/test-frontend"
    contexts ={
        frontend-source = "${FRONTEND_WORKING_DIR}"
    }
}