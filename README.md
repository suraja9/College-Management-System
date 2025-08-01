# 🎓 College Management System

A full-stack College Management System built with React.js, Node.js, Express, and MySQL. It provides admin and student interfaces to manage departments, students, programs, subjects, semesters, attendance tracking, and more.

---

## 🌐 Live Demo

- **Frontend**: [https://mediumseagreen-caterpillar-399085.hostingersite.com](https://mediumseagreen-caterpillar-399085.hostingersite.com)
- **Backend API**: [http://college-cms-backend-jrmg.onrender.com](http://college-cms-backend-jrmg.onrender.com)

---

## ✨ Features

- 🔐 Admin and Student login system
- 🏫 Department, Program, Semester, and Subject management
- 👨‍🎓 Student enrollment with program/semester association
- 📅 Subject-wise attendance tracking
- 📊 Real-time attendance dashboard
- 📁 Clean, modular REST API backend
- ✅ Role-based access control

---

## 🛠 Tech Stack

### Frontend
- React.js
- Bootstrap / CSS
- Axios

### Backend
- Node.js
- Express.js
- MySQL
- JWT (for authentication)
- dotenv (environment config)

### Hosting
- **Frontend**: Hostinger
- **Backend**: Render

---

## 🚀 Getting Started (Local Development)

### Clone the repository

```bash
git clone https://github.com/suraja9/College-Management-System.git
cd College-Management-System
```

---

### 📦 Backend Setup

```bash
cd backend
npm install
```

#### 🔐 Environment Variables

Create a `.env` file inside `backend`:

```env
DB_HOST=localhost
DB_USER=your_mysql_user
DB_PASSWORD=your_mysql_password
DB_NAME=your_database_name
JWT_SECRET=your_jwt_secret
PORT=5000
```

Start the backend server:

```bash
node server.js
```

---

### 💻 Frontend Setup

```bash
cd frontend
npm install
npm start
```

---

## 🧑‍💻 Author

- GitHub: [@suraja9](https://github.com/suraja9)


---

## 🙌 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
