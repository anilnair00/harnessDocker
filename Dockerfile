FROM plugins/harness_terraform_vm AS custom-root
RUN microdnf install -y wget

# FROM plugins/harness_terraform AS custom-rootless
## Switch to root temporarily so that we can install extra tools
# USER root
# Install dependencies and Azure CLI 
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN rpm -Uvh 'https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm'
RUN microdnf install -y azure-cli
RUN microdnf clean all

