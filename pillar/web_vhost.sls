{% if 'memberweb' in grains['roles'] and grains['env'] == 'prod' %}
member_vhost:
  - my.tomtop.com
{% elif 'memberweb' in grains['roles'] and grains['env'] == 'uat' %}
member_vhost:
  - myuat.tomtop.com
{% elif 'memberweb' in grains['roles'] and grains['env'] == 'test' %}
member_vhost:
  - mytest.tomtop.com
{% endif %}

{% if 'tomtopweb' in grains['roles'] and grains['env'] == 'prod' %}
tomtop_vhost:
  - www.tomtop.com
  - m.tomtop.com
{% elif 'tomtopweb' in grains['roles'] and grains['env'] == 'uat' %}
tomtop_vhost:
  - uat.tomtop.com
  - muat.tomtop.com
{% elif 'tomtopweb' in grains['roles'] and grains['env'] == 'test' %}
tomtop_vhost:
  - test.tomtop.com
  - mtest.tomtop.com
{% endif %}

{% if 'chicuuweb' in grains['roles'] and grains['env'] == 'prod' %}
chicuu_vhost:
  - www.chicuu.com
  - m.chicuu.com
{% elif 'chicuuweb' in grains['roles'] and grains['env'] == 'uat' %}
chicuu_vhost:
  - uat.chicuu.com
  - muat.chicuu.com
{% elif 'chicuuweb' in grains['roles'] and grains['env'] == 'test' %}
chicuu_vhost:
  - test.chicuu.com
  - mtest.chicuu.com
{% endif %}

{% if 'rcmomentweb' in grains['roles'] and grains['env'] == 'prod' %}
rcmoment_vhost:
  - www.rcmoment.com
  - m.rcmoment.com
{% elif 'rcmomentweb' in grains['roles'] and grains['env'] == 'uat' %}
rcmoment_vhost:
  - uat.rcmoment.com
  - muat.rcmoment.com
{% elif 'rcmomentweb' in grains['roles'] and grains['env'] == 'test' %}
rcmoment_vhost:
  - test.rcmoment.com
  - mtest.rcmoment.com
{% endif %}

{% if 'koogeekweb' in grains['roles'] and grains['env'] == 'prod' %}
koogeek_vhost:
  - www.koogeek.com
{% elif 'koogeekweb' in grains['roles'] and grains['env'] == 'uat' %}
koogeek_vhost:
  - uat.koogeek.com
{% elif 'koogeekweb' in grains['roles'] and grains['env'] == 'test' %}
koogeek_vhost:
  - test.koogeek.com
{% endif %}

{% if 'camfereweb' in grains['roles'] and grains['env'] == 'prod' %}
camfere_vhost:
  - www.camfere.com
  - m.camfere.com
{% elif 'camfereweb' in grains['roles'] and grains['env'] == 'uat' %}
camfere_vhost:
  - uat.camfere.com
  - muat.camfere.com
{% elif 'camfereweb' in grains['roles'] and grains['env'] == 'test' %}
camfere_vhost:
  - test.camfere.com
  - mtest.camfere.com
{% endif %}

{% if 'tooartsweb' in grains['roles'] and grains['env'] == 'prod' %}
tooarts_vhost:
  - www.tooarts.com
  - m.tooarts.com
{% elif 'tooartsweb' in grains['roles'] and grains['env'] == 'uat' %}
tooarts_vhost:
  - uat.tooarts.com
  - muat.tooarts.com
{% elif 'tooartsweb' in grains['roles'] and grains['env'] == 'test' %}
tooarts_vhost:
  - test.tooarts.com
  - mtest.tooarts.com
{% endif %}

{% if 'dodocoolweb' in grains['roles'] and grains['env'] == 'prod' %}
dodocool_vhost:
  - www.dodocool.com
{% elif 'dodocoolweb' in grains['roles'] and grains['env'] == 'uat' %}
dodocool_vhost:
  - uat.dodocool.com
{% elif 'dodocoolweb' in grains['roles'] and grains['env'] == 'test' %}
dodocool_vhost:
  - test.dodocool.com
{% endif %}

{% if 'interougehomeweb' in grains['roles'] and grains['env'] == 'prod' %}
interougehome_vhost:
  - www.interougehome.com
  - m.interougehome.com
{% elif 'interougehomeweb' in grains['roles'] and grains['env'] == 'uat' %}
interougehome_vhost:
  - uat.interougehome.com
  - muat.interougehome.com
{% elif 'interougehomeweb' in grains['roles'] and grains['env'] == 'test' %}
interougehome_vhost:
  - test.interougehome.com
  - mtest.interougehome.com
{% endif %}

{% if 'cafagoweb' in grains['roles'] and grains['env'] == 'prod' %}
cafago_vhost:
  - www.cafago.com
  - m.cafago.com
{% elif 'cafagoweb' in grains['roles'] and grains['env'] == 'uat' %}
cafago_vhost:
  - uat.cafago.com
  - muat.cafago.com
{% elif 'cafagoweb' in grains['roles'] and grains['env'] == 'test' %}
cafago_vhost:
  - test.cafago.com
  - mtest.cafago.com
{% endif %}

{% if 'lovdockweb' in grains['roles'] and grains['env'] == 'prod' %}
lovdock_vhost:
  - www.lovdock.com
  - m.lovdock.com
{% elif 'lovdockweb' in grains['roles'] and grains['env'] == 'uat' %}
lovdock_vhost:
  - uat.lovdock.com
  - muat.lovdock.com
{% elif 'lovdockweb' in grains['roles'] and grains['env'] == 'test' %}
lovdock_vhost:
  - test.lovdock.com
  - mtest.lovdock.com
{% endif %}
