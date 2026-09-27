# helm-test
specifically for testing helm

--create new helm chart--
helm create alpine

--publish helm chart--
helm package alpine

--move helm chart to charts--
mv alpine charts/.

--update index--
cd charts
helm repo index .

--make commit and push--

--plain manifests (for UIs that apply raw Kubernetes YAML from git)--
manifests/<chart>.yaml are pre-rendered from each chart. Regenerate after chart changes:
for c in alpine alpine2 apache nats nginx; do helm template helm-test ./$c --skip-tests > manifests/$c.yaml; done
