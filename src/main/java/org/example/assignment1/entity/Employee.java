package org.example.assignment1.entity;

import java.util.Arrays;

public class Employee {
    private String name;
    private String email;
    private Integer contactNo;
    private String password;
    private String PMS;
    private String skills;
    private String certifications;
    private String languages;
    private String personalInterest;
    private byte[] photo;
    private String workCompany;
    private String workPosition;
    private String workYears;
    private String workDescription;
    private String institute;
    private String degree;
    private String major;
    private String year;
    private String company;
    private String position;
    private String contact;
    private String Rname;



    public Employee() {
    }

    public Employee(String name, String email, Integer contactNo, String password, String PMS, String skills, String certifications, String languages, String personalInterest, byte[] photo, String workCompany, String workPosition, String workYears, String workDescription, String institute, String degree, String major, String year, String company, String position, String contact, String Rname) {
        this.name = name;
        this.email = email;
        this.contactNo = contactNo;
        this.password = password;
        this.PMS = PMS;
        this.skills = skills;
        this.certifications = certifications;
        this.languages = languages;
        this.personalInterest = personalInterest;
        this.photo = photo;
        this.workCompany = workCompany;
        this.workPosition = workPosition;
        this.workYears = workYears;
        this.workDescription = workDescription;
        this.institute = institute;
        this.degree = degree;
        this.major = major;
        this.year = year;
        this.company = company;
        this.position = position;
        this.contact = contact;
        this.Rname = Rname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getContactNo() {
        return contactNo;
    }

    public void setContactNo(Integer contactNo) {
        this.contactNo = contactNo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPMS() {
        return PMS;
    }

    public void setPMS(String PMS) {
        this.PMS = PMS;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getCertifications() {
        return certifications;
    }

    public void setCertifications(String certifications) {
        this.certifications = certifications;
    }

    public String getLanguages() {
        return languages;
    }

    public void setLanguages(String languages) {
        this.languages = languages;
    }

    public String getPersonalInterest() {
        return personalInterest;
    }

    public void setPersonalInterest(String personalInterest) {
        this.personalInterest = personalInterest;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public String getWorkCompany() {
        return workCompany;
    }

    public void setWorkCompany(String workCompany) {
        this.workCompany = workCompany;
    }

    public String getWorkPosition() {
        return workPosition;
    }

    public void setWorkPosition(String workPosition) {
        this.workPosition = workPosition;
    }

    public String getWorkYears() {
        return workYears;
    }

    public void setWorkYears(String workYears) {
        this.workYears = workYears;
    }

    public String getWorkDescription() {
        return workDescription;
    }

    public void setWorkDescription(String workDescription) {
        this.workDescription = workDescription;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getRname() {
        return Rname;
    }

    public void setRname(String rname) {
        Rname = rname;
    }

    public void insert(String name, String email, Integer contactNo, String password, String PMS, String skills, String certifications, String languages, String personalInterest, byte[] photo, String workCompany, String workPosition, String workYears, String workDescription, String institute, String degree, String major, String year, String company, String position, String contact, String Rname) {
        Employee employee = new Employee(name, email, contactNo, password, PMS, skills, certifications, languages, personalInterest, photo, workCompany, workPosition, workYears, workDescription, institute, degree, major, year, company, position, contact, Rname);
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", contactNo=" + contactNo +
                ", password='" + password + '\'' +
                ", PMS='" + PMS + '\'' +
                ", skills='" + skills + '\'' +
                ", certifications='" + certifications + '\'' +
                ", languages='" + languages + '\'' +
                ", personalInterest='" + personalInterest + '\'' +
                ", photo=" + Arrays.toString(photo) +
                ", workCompany='" + workCompany + '\'' +
                ", workPosition='" + workPosition + '\'' +
                ", workYears='" + workYears + '\'' +
                ", workDescription='" + workDescription + '\'' +
                ", institute='" + institute + '\'' +
                ", degree='" + degree + '\'' +
                ", major='" + major + '\'' +
                ", year='" + year + '\'' +
                ", company='" + company + '\'' +
                ", position='" + position + '\'' +
                ", contact='" + contact + '\'' +
                ", Rname='" + Rname + '\'' +
                '}';
    }
}
