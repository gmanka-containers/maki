### build container

```bash
podman build -f Containerfile -t localhost/maki:latest
```

### run container

```bash
podman run --rm -it \
  --volume=$HOME/.cache/maki:/root/.cache/maki:z \
  --volume=$HOME/.config/maki:/root/.config/maki:z \
  --volume=$HOME/.local/share/maki:/root/.local/share/maki:z \
  --volume=$HOME/.local/state/maki:/root/.local/state/maki:z \
  --volume=$PWD:$PWD:z \
  --workdir=$PWD \
  localhost/maki:latest
```
