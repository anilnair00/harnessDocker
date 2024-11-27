FROM plugins/harness_terraform_vm AS custom-root

# Install dependencies and Azure CLI 
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN rpm -Uvh 'https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm'
# RUN microdnf install -y azure-cli
# RUN microdnf clean all
RUN choco install azure-cli --confirm
