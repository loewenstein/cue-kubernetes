## CUE definitions for Kubernetes resources

### How this was setup
1. `cue mod init github.com/loewenstein/cue-kubernetes`
2. `go mod init github.com/loewenstein/cue-kubernetes`
3. `go get k8s.io/api/core/v1 && cue get go k8s.io/api/core/v1`
4. `go get k8s.io/api/apps/v1 && cue get go k8s.io/api/apps/v1`
5. Add [`kubernetes/base.cue`](kubernetes/base.cue)
6. Add [`kubernetes/ls_tool.cue`](kubernetes/ls_tool.cue)
7. Add [`example/simple.cue`](example/simple.cue)