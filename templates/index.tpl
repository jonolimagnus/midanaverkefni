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
		 	<div class='box'><a href="/company/Atlandsolia.html"> Atlandsolía</a></div>
		 	<div class='box'><a href="/company/Costco Iceland.html"> Costco Ísland</a></div>
		 	<div class='box'><a href="/company/Dælan.html"> Dælan</a></div>
		 	<div class='box'><a href="/company/N1.html"> N1</a></div>
		 	<div class='box'><a href="/company/ÓB.html"> ÓB</a></div>
		 	<div class='box'><a href="/company/Olís.html"> Olís</a></div>
		 	<div class='box'><a href="/company/Orkan.html"> Orkan</a></div>
		    <div class='box'><a href="/company/Orkan X.html"> Orkan X</a></div>

            {% for i in data['results'] %}
                <div class='box'> {{ i['companny'] }} </div>
            {% endfor %}


            {% raw %}
                {%- if (data['results'][i]['company'] !=data['results'][i+]['company']) %}
                    <div class='box'><a hrefa="/company/{{data['results'][i]['company']}}"></div>
                    <div class='box'><a hrefa="/company/{{data['results'][c+1]['company']}}"></div>
                {% endif %}
            {% endraw %}
        </div>
    </body>
</html> 