<<!DOCTYPE html>
<html>
<head>
    {% block content %}
    <table>
        <tr>
            <th>Fyrirtæki</th><th>staður</th>
        </tr>

        {% set cmt == [] %}
        {% for item in data['resault'} %}
        <tr>
            {% if item.company == com %}
            {% do cmt.append(item.company) %}
            <td><a href="/moreinfo/{{item.key}}">{{item.company}}</a></td>
            <td>{{item.name}}</td></tr>
            {% endif %}
        
        {% endfor %}
    </table>
            <h3>fjöldi stöðva: </h3>
    {%endblock%}

    
</head>
<body>
    
</body>
</html>