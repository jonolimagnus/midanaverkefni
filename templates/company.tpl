<<!DOCTYPE html>
<html>
<head>
{% extends "base.tpl" %}
    {% block title %}Bensínstöðvar{% endblock %}
    {% block content %}
        <table>
        <caption>Allar Bensínstöðvar fyrirtækisins>/caption>
            <tr>
                <th>Fyrirtæki</th><th>staður</th>
            </tr>

            {% set cmt = [] %}
                {% for item in data['results'] %}
                <tr>
                    {% if item.company == com %}
                    {% do cmt.append(item.company) %}
                    <td><a href="/moreinfo/{{item.key}}">{{item.company}}</a></td>
                    <td>{{item.name}}</td></tr>
                    {% endif %}
                
                {% endfor %}
        </table>
                <h3>fjöldi stöðva: {{ cmt | length }}</h3>
    {% endblock %}

</head>
<body>
    
</body>
</html>