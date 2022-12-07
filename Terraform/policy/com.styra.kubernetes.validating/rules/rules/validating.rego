package policy["com.styra.kubernetes.validating"].rules.rules


host_process[decision] {
hostProcess := input.spec.securityContext.windowsOptions.hostProcess

msg := sprintf("Resource %v has hostprocess is set true in pod spec and this is not allowed.", [hostProcess])

decision := {
"allowed": false,
"message": msg
}
}