FROM archlinux:latest

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh" "${{ inputs.deploy_key }}" "${{ inputs.package_name }}"]