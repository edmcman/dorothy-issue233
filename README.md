This is a container to help replicate bevry/dorothy#233.

## Instructions

```
docker build -t issue233 .
docker run --rm -it issue233 2>&1 | tee log
cat log | fgrep 'fake sudo' | wc -l
```
