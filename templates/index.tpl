<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>bensínstöðvar</title>
        <link rel="stylesheet" type="text/css" href="static/stilsida.css">
    </head>
    <body>
        <h1>Söluaðilar eldsneytis á Íslandi</h1>
        <div class='imgwrapper'>
            <img src="/static/ao.png">
            <img src="/static/n1.png">
            <img src="/static/daelan.png">
            <img src="/static/costco.png">
            <img src="/static/olis.png">
            <img src="/static/ob.png">
            <img src="/static/orkan.png">
            <img src="/static/orkanx.png">
        </div>
        <br>
        <div class="wrapper">
		 	{% set one = [] %}
            {% for item in data['results']%}
                {% if item.company not in one %}
                    {% do one.append(item.company) %}
                    <div class='box'><a href="/company/{{ item.company }}">{{ item.company }}</a></div>
                {% endif %}
            {% endfor %}
            
            <div class="kort">
                <h2>Besta verðið</h2>
                <h4> Ódýrasta bensínið: <i>{{minipriceP}} kr.</i> er hjá {{companyP}}<h4>
                <h4> Ódýrasta dísel olian: <i>{{minipriceP}} kr.</i> er hjá {{companyP}}<h4>
                <div>
                    <p>Síðast uppfært: {{ data.timestampPriceCheck }}</p>
                </div>
            </div>
        </div>
    </body>
</html> 