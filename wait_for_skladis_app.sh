#!/bin/bash
while [ "`docker inspect -f {{.State.Running}} skladis-backend`" != "true" ]; do sleep 1; done
