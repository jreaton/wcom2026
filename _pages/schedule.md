---
layout: page
title: Schedule
subtitle: A single-track day of talks. Times are Pacific.
permalink: /schedule/
---

All talks take place in **[room TBD]**; breaks are in the **[room TBD]** adjacent
space. _Edit the program in `_data/schedule.yml` — you do not need to touch this page._

<table>
  <thead>
    <tr><th>Time</th><th>Speaker</th><th>Title</th></tr>
  </thead>
  <tbody>
  {% for item in site.data.schedule %}
    <tr class="row-{{ item.type | default: 'talk' }}">
      <td class="sched-time">{{ item.time }}</td>
      {% if item.type == "talk" %}
        <td>
          <span class="sched-speaker">{{ item.speaker }}</span><br>
          <span class="sched-affil">{{ item.affiliation }}</span>
        </td>
        <td>
          {% if item.abstract_id %}
            <a href="{{ '/abstracts/' | relative_url }}#{{ item.abstract_id }}">{{ item.title }}</a>
          {% else %}
            {{ item.title }}
          {% endif %}
        </td>
      {% else %}
        <td colspan="2">{{ item.title }}</td>
      {% endif %}
    </tr>
  {% endfor %}
  </tbody>
</table>

<p style="color:var(--muted)"><em>Schedule is provisional and subject to change.</em></p>
