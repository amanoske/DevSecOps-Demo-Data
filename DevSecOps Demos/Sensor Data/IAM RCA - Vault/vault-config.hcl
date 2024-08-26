# From: https://discuss.hashicorp.com/t/vault-agent-injector-acl-policy-wildcard/52595
# Secret created:

$ vault secrets enable -path=demo kv-v2
$ vault kv put demo/dummy DEMO_SECRET="this is secret"

# Enable k8s cluster to auth to Vault:

$ vault auth enable -path=demo kubernetes

$ vault policy write vault-agent-injector - <<EOF
path "secret/metadata/demo/*" {
  capabilities = ["read", "list"]
}

path "secret/data/demo/*" {
  capabilities = ["read", "list"]
}
EOF

$ vault write auth/demo/config \
        token_reviewer_jwt="$TOKEN_REVIEW_JWT" \
        kubernetes_host="$KUBE_HOST" \
        kubernetes_ca_cert="$KUBE_CA_CERT" \
        issuer="https://kubernetes.default.svc.cluster.local"

$ vault write auth/demo/role/vault-agent-injector \
        bound_service_account_names=vault-agent-injector \
        bound_service_account_namespaces='*' \
        policies=vault-agent-injector \
        ttl=24h
