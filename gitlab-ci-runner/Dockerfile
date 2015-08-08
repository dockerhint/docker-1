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

# Default Gitlab CI Url
ENV GITLAB_CI_URL https://ci.gitlab.com

ENTRYPOINT expect -c '\

    spawn gcr; \

    expect "GitLab CI url:"; \
    send   "$env(GITLAB_CI_URL)\r"; \

    expect "GitLab CI Registration Token:"; \
    send   "$env(GITLAB_CI_REGISTRATION_TOKEN)\r"; \

    interact; \

'