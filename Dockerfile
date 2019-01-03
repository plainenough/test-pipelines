from jenkins/jenkins:2.150.1

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh email-ext
RUN /usr/local/bin/install-plugins.sh mailer
RUN /usr/local/bin/install-plugins.sh slack

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

#Pipeline install
RUN /usr/local/bin/install-plugins.sh ace-editor
RUN /usr/local/bin/install-plugins.sh ant
RUN /usr/local/bin/install-plugins.sh antisamy-markup-formatter
RUN /usr/local/bin/install-plugins.sh apache-httpcomponents-client-4-api
RUN /usr/local/bin/install-plugins.sh authentication-tokens
RUN /usr/local/bin/install-plugins.sh bouncycastle-api
RUN /usr/local/bin/install-plugins.sh branch-api
RUN /usr/local/bin/install-plugins.sh build-timeout
RUN /usr/local/bin/install-plugins.sh cloudbees-folder
RUN /usr/local/bin/install-plugins.sh command-launcher
RUN /usr/local/bin/install-plugins.sh credentials
RUN /usr/local/bin/install-plugins.sh credentials-binding
RUN /usr/local/bin/install-plugins.sh display-url-api
RUN /usr/local/bin/install-plugins.sh docker-commons
RUN /usr/local/bin/install-plugins.sh docker-workflow
RUN /usr/local/bin/install-plugins.sh durable-task
RUN /usr/local/bin/install-plugins.sh git
RUN /usr/local/bin/install-plugins.sh github
RUN /usr/local/bin/install-plugins.sh github-api
RUN /usr/local/bin/install-plugins.sh github-branch-source
RUN /usr/local/bin/install-plugins.sh gradle
RUN /usr/local/bin/install-plugins.sh handlebars
RUN /usr/local/bin/install-plugins.sh jackson2-api
RUN /usr/local/bin/install-plugins.sh jdk-tool
RUN /usr/local/bin/install-plugins.sh jquery-detached
RUN /usr/local/bin/install-plugins.sh jsch
RUN /usr/local/bin/install-plugins.sh junit
RUN /usr/local/bin/install-plugins.sh ldap
RUN /usr/local/bin/install-plugins.sh lockable-resources
RUN /usr/local/bin/install-plugins.sh mapdb-api
RUN /usr/local/bin/install-plugins.sh matrix-auth
RUN /usr/local/bin/install-plugins.sh matrix-project
RUN /usr/local/bin/install-plugins.sh momentjs
RUN /usr/local/bin/install-plugins.sh pam-auth
RUN /usr/local/bin/install-plugins.sh pipeline-build-step
RUN /usr/local/bin/install-plugins.sh pipeline-github-lib
RUN /usr/local/bin/install-plugins.sh pipeline-graph-analysis
RUN /usr/local/bin/install-plugins.sh pipeline-input-step
RUN /usr/local/bin/install-plugins.sh pipeline-milestone-step
RUN /usr/local/bin/install-plugins.sh pipeline-model-api
RUN /usr/local/bin/install-plugins.sh pipeline-model-declarative-agent
RUN /usr/local/bin/install-plugins.sh pipeline-model-definition
RUN /usr/local/bin/install-plugins.sh pipeline-model-extensions
RUN /usr/local/bin/install-plugins.sh pipeline-rest-api
RUN /usr/local/bin/install-plugins.sh pipeline-stage-step
RUN /usr/local/bin/install-plugins.sh pipeline-stage-tags-metadata
RUN /usr/local/bin/install-plugins.sh pipeline-stage-view
RUN /usr/local/bin/install-plugins.sh plain-credentials
RUN /usr/local/bin/install-plugins.sh resource-disposer
RUN /usr/local/bin/install-plugins.sh scm-api
RUN /usr/local/bin/install-plugins.sh script-security
RUN /usr/local/bin/install-plugins.sh ssh-credentials
RUN /usr/local/bin/install-plugins.sh structs
RUN /usr/local/bin/install-plugins.sh subversion
RUN /usr/local/bin/install-plugins.sh timestamper
RUN /usr/local/bin/install-plugins.sh token-macro
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
RUN /usr/local/bin/install-plugins.sh workflow-api
RUN /usr/local/bin/install-plugins.sh workflow-basic-steps
RUN /usr/local/bin/install-plugins.sh workflow-cps
RUN /usr/local/bin/install-plugins.sh workflow-cps-global-lib
RUN /usr/local/bin/install-plugins.sh workflow-durable-task-step
RUN /usr/local/bin/install-plugins.sh workflow-job
RUN /usr/local/bin/install-plugins.sh workflow-multibranch
RUN /usr/local/bin/install-plugins.sh workflow-scm-step
RUN /usr/local/bin/install-plugins.sh workflow-step-api
RUN /usr/local/bin/install-plugins.sh workflow-support
RUN /usr/local/bin/install-plugins.sh ws-cleanup

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

# install Maven
USER root
RUN apt-get update && apt-get install -y maven
USER jenkins