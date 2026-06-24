---
layout: default
title: Home
---

<section class="hero">
  <h1>{{ site.title }}</h1>
  <p class="hero-sub">{{ site.tagline }}</p>
  <p class="hero-meta">{{ site.location }} &middot; {{ site.event_dates }}</p>
  <a class="btn" href="{{ '/registration/' | relative_url }}">Register</a>
</section>

<div class="home-body" markdown="1">

## Welcome

The **West Coast Optimization Meeting (WCOM)** is an informal, single-track
gathering of researchers in optimization and its applications across the
West Coast. WCOM Fall 2026 will be hosted at the **University of Washington
Tacoma** and organized by **{{ site.organizers }}**.

The meeting brings together faculty, postdocs, and students for a day of
talks spanning optimization theory, algorithms, and applications, with plenty
of time for discussion over coffee and lunch.

<div class="cards">
  <div class="card" markdown="1">
### 🗓 Schedule
A full day of talks and breaks.
[See the schedule →]({{ '/schedule/' | relative_url }})
  </div>
  <div class="card" markdown="1">
### 👥 Participants
Speakers and attendees from across the region.
[See participants →]({{ '/participants/' | relative_url }})
  </div>
  <div class="card" markdown="1">
### 📍 Travel & Venue
Getting to UW Tacoma, parking, and hotels.
[Plan your trip →]({{ '/travel/' | relative_url }})
  </div>
</div>

## Important dates

| | |
|---|---|
| Registration opens | *TBD* |
| Abstract submission deadline | *TBD* |
| Meeting | {{ site.event_dates }} |

> _This site is a draft. All content marked **TBD** or *placeholder* is editable
> in plain markdown — see the `README.md` in the repository for how._

</div>
