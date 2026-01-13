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
