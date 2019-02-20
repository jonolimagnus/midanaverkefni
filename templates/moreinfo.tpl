{% extends "base.tpl" %}

{%block title %}Nánari upplýsingar bensínstöðvar{% endblock %}
{% block content %}
    <h2>Nánari upplýsingar bensínstöðvar</h2>
    {% for item in data['results'] %}
        {% if item.key == k %}
            <h3>söluaðili: {{item.company}}</h3>
            <h3>staður: {{item.name}}</h3>
            <h3>verð á 1. lítrar af bensíni, 95 okran: {{item.bensin95}} kr.</h3>
            <h3>verð á 1. lítrar af dísel olíu: {{item.disel}} kr. </h3>
        {% endif %}
    {% endfor %}
{% endblock %}

