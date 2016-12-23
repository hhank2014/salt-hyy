include:
  - services.tomcat.install
  - services.logstash.install

tomcat-cart:
  cmd.run:
    - cwd: /usr/local/src
    - name: cp -r apache-tomcat-8.0.26 /usr/local/tomcat-cart
    - unless: test -d /usr/local/tomcat-cart
    - require:
      - cmd: tomcat_source

/usr/local/tomcat-cart/conf/server.xml:
  file.managed:
    - source: salt://cart/files/server-cart.xml
    - user: root
    - mode: 644

/usr/local/tomcat-cart/bin/setenv.sh:
  file.managed:
    - source: salt://cart/files/setenv.sh
    - user: root
    - mode: 755
    - template: jinja

/data/www/cart:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/data/logs/cart:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/usr/local/tomcat-cart/webapps/ROOT:
  file.symlink:
  - target: /data/www/cart

/usr/local/tomcat-cart/logs:
  file.symlink:
  - target: /data/logs/cart

tomcat-cart_service:
  file.managed:
    - name: /usr/lib/systemd/system/tomcat-cart.service
    - source: salt://cart/files/tomcat-cart.service
    - user: root
    - mode: 755
  service.running:
    - name: tomcat-cart
    - enable: True
    - restart: True
    - watch:
      - file: /usr/local/tomcat-cart/conf/server.xml

/etc/logstash/conf.d/shipper-cart.conf:
  file.managed:
    - source: salt://cart/files/shipper-cart.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: logstash_service