# 🧠 Procrastinator — the app that sabotages your productivity

---

## 💡 What is it?

**Procrastinator** is a full-stack desktop app designed to help users recognize and track their procrastination — while intentionally making it harder to be productive. Think of it as a To-Do app meets time tracker, sprinkled with sarcasm, chaos, and distraction.

---

## 🎯 Project Purpose

To create a quirky, anti-productive task manager that:

- Helps users become more aware of their procrastination habits.
- Uses humor, gamification, and mock-sabotage to entertain.
- Blends analytics with chaos, reflection with distraction.

---

## 🔧 Core Features

| Feature                                 | Description                                                                                      |
| -------------------------------------- | ------------------------------------------------------------------------------------------------ |
| ✅ Task Management                     | Add classic To-Do items with snarky or provocative phrasing                                      |
| 🔀 Task Shuffling                      | Tasks randomly change order to simulate distraction and chaos                                    |
| 🙃 Fake Confirmations                  | Dialogs like “Are you *really* sure you want to do this?”                                        |
| ⏰ Delayed Reminders                   | Sarcastic notifications, sometimes rescheduling tasks on their own                              |
| 🎮 "Force Me to Procrastinate" Mode    | Sends users to YouTube, Instagram, etc. for *intentional* distraction                           |
| 📉 Procrastination Tracker             | Logs when, where, and how long the user avoids tasks                                             |
| 🧘 Habit-Based Coaching                | Personalized advice based on usage patterns (e.g., “You procrastinate most in the mornings”)     |
| 🎯 Custom Goals & Notifications       | Set your own goals and receive reminders (supportive or hilariously unhelpful)                  |

---

## 🧱 Technical Architecture

### Backend: **Ruby on Rails**

- **Models:** `User`, `Task`, `Notification`, `Penalty`, `Meme`
- REST API for task management, user accounts, stats
- Authentication: Devise or JWT
- File uploads via `Active Storage` (e.g. profile photos)
- Google Calendar API integration
- Core sabotage logic: shuffling, fake prompts, auto-deferrals

### Frontend: **React + TypeScript**

- SPA with interactive and animated task lists
- Meme pop-ups, modal prompts, and sarcastic dialogs
- Analytics dashboards via Chart.js / Recharts
- Optional dark mode and theme customizations
- Communicates with Rails backend via RESTful API

### Database: **PostgreSQL**

- Full-text search on tasks
- Logs of procrastination events
- Analytics and behavior tracking

---

## 🧑‍💻 Example User Flow

1. User adds tasks for the day.
2. Tasks are automatically shuffled.
3. When marking a task as done, a modal asks “Wait, why now?”
4. At peak work time, the app opens a YouTube tab.
5. At the end of the day, a dashboard shows tasks completed, excuses made, and time wasted.

---

## 🚀 Project Setup

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/ProcrastinatorApp.git
cd procrastinator

# 2. Install dependencies
bundle install
yarn install

# 3. Set up the database
rails db:create db:migrate db:seed

# 4. Start the server
bin/dev
