<!DOCTYPE html>
<html lang='en'>
<head>
    {% block head %}
        <meta charset="utf-8" />
        <link rel="stylesheet" href="static/stilsida.css">
        <title>{% block title %}{% endblock %} - vefþ3</title>
    {% endblock %}
</head>
<body>
    {% include "haus.tpl" ignore missing %}

    <main>{% block title %}{% endblock %}</main>

    {% include "haus.tpl" ignore missing %}
</body>
</html>