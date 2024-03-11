    package org.example.assignment1;

    import java.io.*;
    import java.util.Enumeration;

    import jakarta.servlet.ServletException;
    import jakarta.servlet.http.*;
    import jakarta.servlet.annotation.*;
    import org.example.assignment1.entity.Employee;
    import org.example.assignment1.utility.EmployeeList;

    @WebServlet(name = "helloServlet", value = "/hello-servlet")
    @MultipartConfig(
            fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
            maxFileSize = 1024 * 1024 * 10,       // 10MB
            maxRequestSize = 1024 * 1024 * 50      // 50MB
    )
    public class HelloServlet extends HttpServlet {
        private String message;
        EmployeeList employeeList;

        public void init() {
            message = "Employee Registration Form";
            employeeList = new EmployeeList();

        }

        public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
            response.setContentType("text/html");

            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h1>" + message + "</h1>");
            out.println("</body></html>");
        }
        public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Employee employee = new Employee();

            String name = request.getParameter("exampleInputname");
            String email = request.getParameter("exampleInputEmail");
            String contactNoStr = request.getParameter("exampleInputContact");
    //        Integer contactNo = Integer.valueOf(request.getParameter("exampleInputContact"));
            String password = request.getParameter("exampleInputPassword1");
            String PMS = request.getParameter("missionStatement");
            String skills = request.getParameter("skills");
            String certifications = request.getParameter("certificates");
            String languages = request.getParameter("languages");
            String personalInterest = request.getParameter("interests");
            String workCompany = request.getParameter("workCompany");
            String workPosition = request.getParameter("workPosition");
            String workYears = request.getParameter("workYears");
            String workDescription = request.getParameter("workDescription");
            String educationInstitution = request.getParameter("educationInstitution");
            String educationDegree = request.getParameter("educationDegree");
            String educationMajor = request.getParameter("educationMajor");
            String educationYear = request.getParameter("educationYear");
            String referenceName = request.getParameter("referenceName");
            String referenceCompany = request.getParameter("referenceCompany");
            String referencePosition = request.getParameter("referencePosition");
            String referenceContact = request.getParameter("referenceContact");

            Integer contactNo = Integer.parseInt(contactNoStr);
            Part filePart = request.getPart("profilePicture");
            byte[] pictureData = null;
            if (filePart != null && filePart.getSize() > 0) {
                InputStream fileContent = filePart.getInputStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                pictureData = outputStream.toByteArray();
                outputStream.close();
            }



            employee.setName(name);
            employee.setEmail(email);
            employee.setContactNo(contactNo);
            employee.setPassword(password);
            employee.setPMS(PMS);
            employee.setSkills(skills);
            employee.setCertifications(certifications);
            employee.setLanguages(languages);
            employee.setPersonalInterest(personalInterest);
            employee.setPhoto(pictureData);
            employee.setWorkCompany(workCompany);
            employee.setWorkPosition(workPosition);
            employee.setWorkYears(workYears);
            employee.setWorkDescription(workDescription);
            employee.setInstitute(educationInstitution);
            employee.setDegree(educationDegree);
            employee.setMajor(educationMajor);
            employee.setYear(educationYear);
            employee.setCompany(referenceCompany);
            employee.setPosition(referencePosition);
            employee.setContact(referenceContact);
            employee.setRname(referenceName);
            employeeList.insert(employee);
            employee = null;
            request.setAttribute("employeeList", employeeList);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        public void destroy() {
        }
    }
