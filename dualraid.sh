#!/usr/bin/bash
./scripts/rpc.py bdev_malloc_create -b Malloc0 64 4096
./scripts/rpc.py bdev_malloc_create -b Malloc1 64 4096
./scripts/rpc.py bdev_malloc_create -b Malloc2 64 4096
./scripts/rpc.py bdev_malloc_create -b Malloc3 64 4096
./scripts/rpc.py bdev_malloc_create -b Malloc4 64 4096
./scripts/rpc.py bdev_raid_create -n raid5 -z 64 -r 5 -b "Malloc0 Malloc1 Malloc2 Malloc3 Malloc4"
