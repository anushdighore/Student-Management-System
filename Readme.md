# Student Management System

- Built with Java + Hibernate + JSP  
- Solves: A Digital Modern Solution to Student Management System.

## Live Demo
- Frontend: [https://my-app.netlify.app](https://my-app.netlify.app)  
- Backend: [https://my-api.onrender.com](https://my-api.onrender.com)


## ✨ Features

- ✅ Add new students
- ✅ View all students
- ✅ Update student information
- ✅ Delete student records
- ✅ Search students by various criteria
- ✅ Responsive web interface
- ✅ Data validation
- ✅ Error handling


## 🛠️ Technology Stack

- **Backend**: Java8, Hibernate ORM 6.5.2, Jakarta Persistence
- **Frontend**: JSP, HTML, CSS
- **Database**: MySQL
- **Server**: Apache Tomcat v11.0
- **Build Tool**: Maven
- **IDE**: Eclipse IDE
- Deployed on: Render (backend), Netlify (frontend)




## 🚀 Installation & Setup
	
1. Clone repo: `git clone ...`
2. Hibernate Config Edit: `src/main/resources/hibernate.cfg.xml`<br>

```xml
<property name="hibernate.connection.url">jdbc:mysql://localhost:3306/student_management</property>
<property name="hibernate.connection.username">root</property>
<property name="hibernate.connection.password">your_password</property>
```
3. Build project: `mvn clean install`
4. Deploy WAR to Tomcat's webapps
5. Start Tomcat server
6. Access via `http://localhost:8080/Student-Management-System/`








## 📖 Usage

### Access the Application

Once Tomcat is running, open your browser and navigate to:

```
http://localhost:8080/Student-Management-System/
```

### Main Operations

1. **View Dashboard**: Home page showing all students
2. **Add Student**: Click "Add Student" to create a new record
3. **Edit Student**: Click the edit icon next to a student
4. **Delete Student**: Click the delete icon to remove a student
5. **Search**: Use the search functionality to find specific students

## 🔌 API Endpoints


| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/dashboard` | View all students |
| GET | `/addStudentForm` | Show add student form |
| POST | `/addStudent` | Save new student |
| GET | `/editStudent?id=X` | Edit student form |
| POST | `/updateStudent` | Update student record |
| GET | `/deleteStudent?id=X` | Delete student record |


## 💾 Database Schema

### Students Table

| Column | Type | Constraint |
|--------|------|-----------|
| id | INT | PRIMARY KEY, AUTO_INCREMENT |
| name | VARCHAR(100) | NOT NULL |
| email | VARCHAR(100) | NOT NULL, UNIQUE |
| phone | VARCHAR(15) | Optional |
| address | VARCHAR(255) | Optional |
| enrollment_date | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |
| updated_at | TIMESTAMP | AUTO UPDATE |

## 🧪 Testing

Run unit tests using Maven:

```bash
mvn test
```



---

**Last Updated**: January 28, 2026