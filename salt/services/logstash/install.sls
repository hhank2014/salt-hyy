/etc/yum.repos.d/logstash.repo:
  file.managed:
    - source: salt://services/logstash/files/logstash.repo
    - user: root
    - group: root
    - mode: 644

logstash_jdk_pkg:
  pkg.installed:
    - pkgs: 
      - java-1.8.0-openjdk
      - java-1.8.0-openjdk-devel
      - logstash

logstash_service:
  service.running:
    - name: logstash
    - enable: True
    - restart: True