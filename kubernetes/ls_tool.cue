package kubernetes

import (
    // appsv1 "k8s.io/api/apps/v1"
    // corev1 "k8s.io/api/core/v1" 

    "text/tabwriter"
	"tool/cli"
	"tool/file"  
)

command: ls: {
	task: print: cli.Print & {
		text: tabwriter.Write([
			for x in objects {
				"\(x.kind)  \t\(x.metadata.labels.component)  \t\(x.metadata.name)"
			},
		])
	}

	task: write: file.Create & {
		filename: "foo.txt"
		contents: task.print.text
	}
}