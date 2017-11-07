# Deployz

A vanilla Phoenix app to use to test AWS CodePipeline/Build/Deploy.

## Directions

### Build a Release (current manual process)

From the root of the project:

```docker build --tag=deployz-build --file docker/Dockerfile.centos7.build .```

The release is built but we need to have the instance running, so:

```docker run -it deployz-build /bin/bash```

Get the ID of the image:

```docker ps --last 1 --quiet```

Copy the release tarball out:
```docker cp <imageid_from_above>:/app/_build/prod/rel/deployz/releases/0.0.1/deployz.tar.gz /tmp```

### Deploy

Copy the tarball to the remote server:

```scp -i creds.pem /tmp/deployz.tar.gz centos@some-long-identifier.amazonaws.com:/tmp```
