<%@ page import="org.example.assignment1.utility.EmployeeList" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.example.assignment1.entity.Employee" %>
<%@ page import="java.util.Base64" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .containers {
            display: flex;
            width: 100%;

        }

        .column {
            flex: 1 0 0px;
            padding: 20px;
            box-sizing: border-box;
            text-align: left;
            width: 100%;
        }
        label{
            margin-bottom: 5px;
            margin-top: 5px;
        }

        .column:nth-child(1) {
            background-color: #f2f2f2;

        }

        .column:nth-child(2) {
            background-color: #f2f2f2;
        }

        .column:nth-child(3) {
            background-color: #f2f2f2;
        }
        .column:nth-child(4) {
            background-color: #f2f2f2;
        }
        .column:nth-child(5) {
            background-color: #f2f2f2;
        }

        .containers {
            display: flex;
            width: 100%;
        }

        .column {
            flex: 1 0 0px;
            padding: 20px;
            box-sizing: border-box;
            text-align: left;
            width: 100%;
        }

        label {
            margin-bottom: 5px;
            margin-top: 5px;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow:0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }

        .nav-tabs {
            border: none;
            margin-bottom: -1px;
            border-radius: 10px 10px 0 0;
        }

        .nav-link {
            border: 1px solid transparent;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            margin-right: 5px;
        }

        .nav-link.active {
            background-color: #f2f2f2;
            border-bottom: none;
            border-top: 1px solid #dee2e6;
        }

        .tab-content {
            padding: 20px;
            border-radius: 0 0 10px 10px;
            border: 1px solid #dee2e6;
            border-top: none;
        }

        .form-control {
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .work-experience-section,
        .education-section,
        .references-section {
            margin-left: 15px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark d-flex align-items-center justify-content-center">
    <a class="navbar-brand ml-3" href="#">Employee Management System</a>
</nav>
<div class="containers">
    <div class="column">
        <form action="hello-servlet" method="post" enctype="multipart/form-data" class="row">
            <div class="mb-3">
                <label> Full Name</label>
                <input type="name" class="form-control" name="exampleInputname" aria-describedby="emailHelp">
            </div>
            <!-- Email Input -->
            <div class="mb-3">
                <label>Email Address</label>
                <input type="email" class="form-control" name="exampleInputEmail">
            </div>
            <!-- Contact No Input -->
            <div class="mb-3">
                <label>Contact No</label>
                <input type="contactno" class="form-control" name="exampleInputContact" aria-describedby="emailHelp">
            </div>
            <!-- Password Input -->
            <div class="mb-3">
                <label >Password</label>
                <input type="password" class="form-control" name="exampleInputPassword1">
            </div>
            <!-- Personal Mission Statement Input -->
            <div class="mb-3">
                <label>Personal Mission Statement:</label>
                <textarea class="form-control" id="missionStatement" name="missionStatement" rows="3"></textarea>
            </div>
<%--    </div>--%>
</div>
    <div class="column">
        <!-- Inputs for Skills, Certificates, Languages, and Personal Interests -->
        <!-- Skills Input -->
        <div class="mb-3">
            <label>Skills:</label>
            <input type="text" class="form-control" id="skills" name="skills">
        </div>
        <!-- Certificates Input -->
        <div class="mb-3">
            <label>Certificates:</label>
            <input type="text" class="form-control" id="certificates" name="certificates">
        </div>
        <!-- Languages Input -->
        <div class="mb-3">
            <label for="languages">Languages:</label>
            <input type="text" class="form-control" id="languages" name="languages">
        </div>
        <!-- Personal Interests Input -->
        <div class="mb-3">
            <label for="interests">Personal Interests:</label>
            <input type="text" class="form-control" id="interests" name="interests">
        </div>

        <!-- Picture Upload Input -->
        <div class="mb-3">
            <label>Upload Picture:</label>
            <input type="file" class="form-control" id="profilePicture" name="profilePicture">
        </div>
        <!-- <input type="Submit" class="btn btn-primary" value="Submit"> -->

    </div>
    <div class="column">
        <div class="work-experience-section">
            <h5>Work Experience</h5>
            <div class="form-group">
                <label for="workCompany">Company:</label>
                <input type="text" class="form-control" id="workCompany" name="workCompany">
            </div>
            <div class="form-group">
                <label for="workPosition">Position:</label>
                <input type="text" class="form-control" id="workPosition" name="workPosition">
            </div>
            <div class="form-group">
                <label for="workYears">Years:</label>
                <input type="text" class="form-control" id="workYears" name="workYears">
            </div>
            <div class="form-group">
                <label for="workDescription">Description:</label>
                <textarea class="form-control" id="workDescription" name="workDescription" rows="3"></textarea>
            </div>
        </div>

        <!-- <input type="Submit" class="btn btn-primary" value="Submit"> -->

    </div>
    <div class="column">                    <!-- Education -->
        <div class="education-section">
            <h5>Education</h5>
            <div class="form-group">
                <label for="educationInstitution">Institution:</label>
                <input type="text" class="form-control" id="educationInstitution" name="educationInstitution">
            </div>
            <div class="form-group">
                <label for="educationDegree">Degree:</label>
                <input type="text" class="form-control" id="educationDegree" name="educationDegree">
            </div>
            <div class="form-group">
                <label for="educationMajor">Major:</label>
                <input type="text" class="form-control" id="educationMajor" name="educationMajor">
            </div>
            <div class="form-group">
                <label for="educationYear">Year:</label>
                <input type="number" class="form-control" id="educationYear" name="educationYear">
            </div>
        </div>

    </div>

    <div class="column">

        <!-- References -->
        <div class="references-section">
            <h5>References</h5>
            <div class="form-group">
                <label for="referenceName">Name:</label>
                <input type="text" class="form-control" id="referenceName" name="referenceName">
            </div>
            <div class="form-group">
                <label for="referencePosition">Position:</label>
                <input type="text" class="form-control" id="referencePosition" name="referencePosition">
            </div>
            <div class="form-group">
                <label for="referenceCompany">Company:</label>
                <input type="text" class="form-control" id="referenceCompany" name="referenceCompany">
            </div>
            <div class="form-group">
                <label for="referenceContact">Contact:</label>
                <input type="text" class="form-control" id="referenceContact" name="referenceContact">
            </div>
        </div>

        <input type="Submit" class="btn btn-primary mt-5" value="Submit" style="width: 50%;">
    </div>
</div>
</form>
</div>

</div>

</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark d-flex align-items-center justify-content-center">
    <a class="navbar-brand ml-3" href="#">Employee Information</a>
</nav>
<div class="container mt-3">
    <!-- <h2>Employee Information</h2> -->
    <%
        EmployeeList employeeList = (EmployeeList) request.getAttribute("employeeList");
        if (employeeList != null) {
            ArrayList<Employee> employees = employeeList.getAllEmployees();
            for (int i = 0; i < employees.size(); i++) {
                Employee employee = employees.get(i);
    %>
    <div class="card">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Personal Information</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Skills and Certificates</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Work Experience</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="education-tab" data-bs-toggle="tab" data-bs-target="#education-tab-pane" type="button" role="tab" aria-controls="education-tab-pane" aria-selected="false">Education</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="references-tab" data-bs-toggle="tab" data-bs-target="#references-tab-pane" type="button" role="tab" aria-controls="references-tab-pane" aria-selected="false">References</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                <div class="p-3">
                    <div class="mb-3">
                    <img src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(employee.getPhoto()) %>" alt="Profile Picture" style="width: 10%; height: 10%">
                    </div>
                    <p><strong>Full Name:</strong> <%= employee.getName() %></p>
                    <p><strong>Email Address:</strong> <%= employee.getEmail() %></p>
                    <p><strong>Contact No:</strong> <%= employee.getContactNo() %></p>
                    <p><strong>Password:</strong> <%= employee.getPassword() %></p>
                    <p><strong>Personal Mission Statement:</strong> <%= employee.getPMS() %></p>
                </div>
            </div>
            <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
                <div class="mb-3">
                    <label><strong>Skills:</strong></label>
                    <p id="skillsDisplay"><%= employee.getSkills() %></p>
                </div>
                <div class="mb-3">
                    <label><strong>Certificates:</strong></label>
                    <p id="certificatesDisplay"><%= employee.getCertifications() %></p>
                </div>
                <div class="mb-3">
                    <label for="languages"><strong>Languages:</strong></label>
                    <p id="languagesDisplay"><%= employee.getLanguages() %></p>
                </div>
                <div class="mb-3">
                    <label for="interests"><strong>Personal Interests:</strong></label>
                    <p id="interestsDisplay"><%= employee.getPersonalInterest() %></p>
                </div>
            </div>
            <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
                <div class="work-experience-section">
<%--                    <h5>Work Experience</h5>--%>
                    <div class="form-group">
                        <label for="workCompany"><strong>Company:</strong></label>
                        <p id="workCompanyDisplay"><%= employee.getWorkCompany() %></p>
                    </div>
                    <div class="form-group">
                        <label for="workPosition"><strong>Position:</strong></label>
                        <p id="workPositionDisplay"><%= employee.getWorkPosition() %></p>
                    </div>
                    <div class="form-group">
                        <label for="workYears"><strong>Years:</strong></label>
                        <p id="workYearsDisplay"><%= employee.getWorkYears() %></p>
                    </div>
                    <div class="form-group">
                        <label for="workDescription"><strong>Description:</strong></label>
                        <p id="workDescriptionDisplay"><%= employee.getWorkDescription() %></p>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="education-tab-pane" role="tabpanel" aria-labelledby="education-tab" tabindex="0">
                <div class="education-section">
<%--                    <h5>Education</h5>--%>
                    <div class="form-group">
                        <label for="educationInstitution"><strong>Institution:</strong></label>
                        <p id="educationInstitutionDisplay"><%= employee.getInstitute() %></p>
                    </div>
                    <div class="form-group">
                        <label for="educationDegree"><strong>Degree:</strong></label>
                        <p id="educationDegreeDisplay"><%= employee.getDegree() %></p>
                    </div>
                    <div class="form-group">
                        <label for="educationMajor"><strong>Major:</strong></label>
                        <p id="educationMajorDisplay"><%= employee.getMajor() %></p>
                    </div>
                    <div class="form-group">
                        <label for="educationYear"><strong>Year:</strong></label>
                        <p id="educationYearDisplay"><%= employee.getYear() %></p>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="references-tab-pane" role="tabpanel" aria-labelledby="references-tab" tabindex="0">
                <div class="references-section">
<%--                    <h5>References</h5>--%>
                    <div class="form-group">
                        <label for="referenceName"><strong>Name:</strong></label>
                        <p id="referenceNameDisplay"><%= employee.getRname() %></p>
                    </div>
                    <div class="form-group">
                        <label for="referencePosition"><strong>Position:</strong></label>
                        <p id="referencePositionDisplay"><%= employee.getPosition() %></p>
                    </div>
                    <div class="form-group">
                        <label for="referenceCompany"><strong>Company:</strong></label>
                        <p id="referenceCompanyDisplay"><%= employee.getCompany() %></p>
                    </div>
                    <div class="form-group">
                        <label for="referenceContact"><strong>Contact:</strong></label>
                        <p id="referenceContactDisplay"><%= employee.getContact() %></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <% } } %>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>