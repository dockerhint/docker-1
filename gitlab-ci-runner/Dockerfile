# Debian
FROM debian

# Curl, Git, Expect
RUN apt-get update && apt-get install -y \
    curl \
    git \
    expect

# Node.js
RUN curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get update && apt-get install -y nodejs

# Gitlab CI Runner 
RUN npm install -g gcr

# Docker Gitlab CI Runner
ADD https://raw.githubusercontent.com/zartdinov/docker/master/gitlab-ci-runner/run.sh /

# Chmod
RUN chmod +x /run.sh

# Default Gitlab CI Url
ENV GITLAB_CI_URL https://ci.gitlab.com

ENTRYPOINT ["/run.sh"]
