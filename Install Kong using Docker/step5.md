Use Kong and verify it is running:

`
curl -i http://docker:8001/
`{{execute}}


#ACCESS KONG BASH

Access the Kong container bash

`docker exec -ti b25bdb809a8b /bin/sh~{{execute}}

Run a Kong Version 
`kong version`{{execute}}

Run a Kong Check
`kong check`{{execute}}

Run a Kong Health
`kong health`{{execute}}