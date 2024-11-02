CREATE INDEX "student" ON "students" ("id","name");
CREATE INDEX "student_courses" ON "courses" ("id","semester","title");
CREATE INDEX "student_enrollment" ON "enrollments" ("student_id","course_id");
CREATE INDEX "computer_science_courses" ON "courses" ("id","department");
CREATE INDEX "Advanced_Databases_idx" ON "satisfies" ("course_id");


