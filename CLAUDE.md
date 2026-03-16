# FitCoach AI — Project Notes

## What this project is
A single-file HTML fitness app (`FitCoach_AI.html`) for a lean bulk journey from 71kg → 76kg.
Training: Mon–Thu at Planet Fitness. Work shifts: Fri–Sun (13-hour shifts).

## App structure
Single HTML file — all CSS and JS inline, no build step, no backend.
State persisted to `localStorage` key `fitcoach_ai_v2`.

## Pages
| Page | Purpose |
|------|---------|
| Dashboard | Macro rings, today's meals + workout preview |
| Diet Plan | 3 tabs: Meal Plan / Nutrition Guide / Quick Recipes |
| Food Log | Log food with category filters (Chicken / Eggs / Veggies / Carbs) |
| Workout | 4-day split checklist (Mon–Thu) |
| Progress | Weight log + 7-day calorie chart |
| AI Coach | Claude API chat with fitness context |

## Diet rules
Foods restricted to: **chicken, eggs, and vegetables only** (plus essential carbs: rice, oats, sweet potato, banana).
No beef, salmon, tuna, dairy, nuts — those were removed in the last redesign.

## Workout split
- Mon: Chest + Triceps (PUSH)
- Tue: Back + Biceps (PULL)
- Wed: Legs + Glutes (LEGS)
- Thu: Shoulders + Abs (DELTS)
- Fri–Sun: Rest (work shifts)

## Daily targets (lean bulk)
- Calories: 2800 kcal (+250–300 surplus)
- Protein: 155g
- Carbs: 340g
- Fats: 75g

## AI Coach
Uses Anthropic Claude API (`claude-sonnet-4-6`) directly from the browser.
API key stored in localStorage. User enters their own key in the app.
System prompt injects today's macros, workout status, weight log context.

## Tech stack
- Vanilla HTML/CSS/JS (no frameworks)
- Chart.js 4.4.1 (CDN) — calorie bar chart
- Google Fonts: Barlow + Barlow Condensed
- Anthropic Messages API v1 (direct browser fetch)

## Design tokens
```
--bg: #080810      (page background)
--bg2: #0f0f1a     (card background)
--bg3: #161625     (input/section background)
--orange: #ff6b35  (primary accent)
--green: #22d07a   (protein / success)
--gold: #f5a623    (carbs)
--purple: #9b6dff  (fats)
--blue: #4a9eff    (calories)
```

## Last updated
2026-03-16 — Added Diet Plan page (Meal Plan + Nutrition Guide + Quick Recipes tabs), updated food database to chicken/eggs/vegetables only, added food category filters.
