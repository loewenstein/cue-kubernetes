package example

import (
    appsv1 "k8s.io/api/apps/v1"
    corev1 "k8s.io/api/core/v1"

    
)

objectsByKindAndName: "Service": "my-service": corev1.#Service
objectsByKindAndName: "Service": "my-service": metadata: {
  name: "my-service"
}

objectsByKindAndName: "Deployment": "my-deployment": appsv1.#Deployment
objectsByKindAndName: "Deployment": "my-deployment": metadata: {
  name: "my-deployment"
}