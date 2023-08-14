#!/bin/bash
curl -s 'https://catfact.ninja/breeds' | jq -r '.data[] | .breed + "; " + .country' >result.txt


