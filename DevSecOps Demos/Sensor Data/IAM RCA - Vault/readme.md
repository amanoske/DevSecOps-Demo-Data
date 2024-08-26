*** Preforming RCA on Vault Secret Injection into Kubernetes

In this real world example, HashiCorp Vault is configured to inject secrets to a Kubernetes pod via the Kubernetes Sidecar. 

Unfortunately, the IAM role for Vault is misconfigured in its ACL path. As a result, the pod fails to draw on its intended secrets. 

