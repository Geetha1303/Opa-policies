package policy["com.styra.kubernetes.validating"].rules.rules

monitor[decision] {
  data.library.v1.kubernetes.admission.workload.v1.check_image_pull_policy[message]
  decision := {
    "allowed": true,
    "message": message
  }
}
