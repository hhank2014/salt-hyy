{% if grains['env']  == 'test' %}
/etc/hosts:
  file.managed:
    - source: salt://base/files/test_hosts
{% endif %}

{% if grains['env']  == 'uat' %}
/etc/hosts:
  file.managed:
    - source: salt://base/files/uat_hosts
{% endif %}