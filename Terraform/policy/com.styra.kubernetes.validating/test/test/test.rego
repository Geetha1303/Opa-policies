package policy["com.styra.kubernetes.validating"].test.test

test_image_safety {
    unsafe_image := {"request": {
        "kind": {"kind": "Pod"},
        "object": {"spec": {"containers": [
            {"image": "hooli.com/nginx"},
            {"image": "busybox"}
        ]}}
    }}
    
}
