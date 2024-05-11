# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the base image for FTP:
  FROM arthurcadore/vsftp-fh:1.0

  # Add startup script to container:
  COPY docker/startup.sh /usr/sbin/startup.sh
  RUN chmod +x /usr/sbin/startup.sh
    
  # Starts and Mantain container running:
  CMD ["/usr/sbin/startup.sh"]
  