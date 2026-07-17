---
layout: page
title: Participants
subtitle:  
permalink: /participants/
---

<!-- _Edit the list in `_data/participants.yml` — you do not need to touch this page._ -->

<table>
  <thead>
    <tr><th>Name</th><th>Affiliation</th><th>Role</th></tr>
  </thead>
  <tbody>
  {% for p in site.data.participants %}
    <tr>
      <td class="sched-speaker">
        {% if p.url and p.url != "" %}<a href="{{ p.url }}">{{ p.name }}</a>{% else %}{{ p.name }}{% endif %}
      </td>
      <td>{{ p.affiliation }}</td>
      <td>{{ p.role }}</td>
    </tr>
  {% endfor %}
  </tbody>
</table>
