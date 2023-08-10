package kubernetes

import (
	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"

)

objects: [ for v in objectsByKind for x in v {x}]

objectsByKind: [string]: [ for v in objectsByKindAndName {v}]

objectsByKindAndName: [string]: [string]: corev1.#Object
objectsByKindAndName: [k=string]: [n=string]: {
	kind: k
	metadata: {
		name: n
	}
}

// objectsByKindAndName: services: [for s in services {s.metadata.name, s}]

services: *[] | [appsv1.#Service, ...]

deployments: *[] | [corev1.#Deployment, ...]
