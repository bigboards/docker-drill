FROM bigboards/java-8-__arch__

MAINTAINER bigboards (hello@bigboards.io)

# drill
RUN \
  curl -s http://www-eu.apache.org/dist/drill/drill-1.6.0/apache-drill-1.6.0.tar.gz | tar -xz -C /opt && \
  ln -s /opt/apache-drill-1.6.0 /opt/apache-drill

EXPOSE 8047

CMD ["/bin/bash"]