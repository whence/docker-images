# Create Base Concourse container

1. Create a base-credentials.yml file here with the following details:
    repo-username: <github repo username>
    private-repo-key: |
        -----BEGIN RSA PRIVATE KEY-----
        ABCDEFGHIJKLM...
        -----END RSA PRIVATE KEY-----
    docker_registry: <dockerrepo repository>
    dockeruser: <dockerhub login>
    dockerpass: "<quoted dockerhub password>"
2. Login to concourse-ci using fly `fly -t concourse-ci login -c https://<concourse url>/`
3. Run `./base_container_job.sh` to upload pipeline and build
