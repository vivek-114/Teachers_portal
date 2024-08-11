Teachers Portal Application

Introduction

The Teachers Portal application is a web-based platform that enables teachers to manage their students' details, including subjects, marks, and other relevant information. It provides a simple interface for teachers to log in, view, edit, and add student details via a user-friendly modal interface.

Features

    Login: Secure teacher login system.
    Student Management: Add, edit, and delete student records.
    Responsive Design: A clean and responsive user interface.
    Modal Dialogs: Seamless modal for editing and adding student details.
    Session Management: Secure session handling with logout functionality.

Prerequisites

    Ruby: Version 2.7.0 or higher
    Rails: Version 6.0.0 or higher
    Node.js: Version 12 or higher
    Yarn: Version 1.x or higher
    PostgreSQL: For database management

Setup Instructions

1. Clone the Repository
   git clone https://github.com/vivek-114/Teachers_portal.git
   cd teachers_portal
2. Install Dependencies
   bundle install
   yarn install
3. Database Setup

   // After installing PostgreSQL run these commands to create a postgresql user.//
   sudo -u postgres psql
   CREATE ROLE administrator WITH LOGIN PASSWORD 'administrator';
   ALTER ROLE administrator CREATEDB;

   rails db:create
   rails db:migrate
   rails db:seed

4. Setup and Compile Assets
   rake assets precompile
   or
   rails webpacker:install
5. Start the Server
   rails server
6. Access the Application
   Open your browser and navigate to http://localhost:3000.

Use the credentials provided in the seed file to log in as a teacher.
The seed file creates a default teacher account that can be used to log in.
Email: teacher@example.com
Password: password

Now you can 1) Add Student 2)Edit Student 3)Delete Student

Logging Out
Click on the 'Logout' button in the top right corner to end the session.

To Create a new user update the email and password in seed file and run the below command again.
rails db:seed
