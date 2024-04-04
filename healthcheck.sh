#!/bin/sh
PORT=${FB_PORT:-$(jq --raw-output .port /.filebrowser.json)}
ADDRESS=${FB_ADDRESS:-$(jq --raw-output .address /.filebrowser.json)}
ADDRESS=${ADDRESS:-localhost}
curl -f http://$ADDRESS:$PORT/health || exit 1
