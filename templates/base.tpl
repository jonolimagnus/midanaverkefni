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
    {% include "company.tpl" ignore missing %}

    <main> 
    {% block content %}{% endblock %}
    </main>


</body>
</html>