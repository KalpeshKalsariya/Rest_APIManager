//
//  APIConstant.swift
//  Rest_APIManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation
import UIKit

struct APIConstants {
    static let baseURL = "" // put your base url
    static let getCustomersEndpoint = "" // put your API end point
}

struct ConstantMessage {
    static let badRequest = "Bad Request: The server could not understand the request."
    static let unauthorized = "Unauthorized: Authentication is required to access this resource."
    static let forbidden = "Forbidden: You do not have permission to access this resource."
    static let notFound = "Not Found: The requested resource was not found on the server."
    static let methodNotAllowed = "Method Not Allowed: The requested HTTP method is not supported for this resource."
    static let internalServerError = "Internal Server Error: An unexpected error occurred on the server."
    static let notImplemented = "Not Implemented: The server does not support the functionality required to fulfill the request."
    static let badGateway = "Bad Gateway: The server, while acting as a gateway or proxy, received an invalid response from the upstream server."
    static let serviceUnavailable = "Service Unavailable: The server is currently unable to handle the request due to temporary overloading or maintenance of the server."
    static let gatewayTimeout = "Gateway Timeout: The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server."
    static let unknownError = "Unknown Error: An unexpected error occurred."
}

struct Constant {
    
    //colorLiteral: RGB with Alpha
    struct Colors {
        static let toastErrorBG = #colorLiteral(red: 0.9725490196, green: 0.8431372549, blue: 0.8549019608, alpha: 1)
        static let toastSuccessBG = #colorLiteral(red: 0.831372549, green: 0.9294117647, blue: 0.8549019608, alpha: 1)
        static let toastErrorText = #colorLiteral(red: 0.4470588235, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        static let toastSuccessText = #colorLiteral(red: 0.08235294118, green: 0.3411764706, blue: 0.1411764706, alpha: 1)
    }
}

struct ValidationMessage {
    struct Email {
        static let empty = "Please enter an email address."
        static let invalid = "Please enter a valid email address."
        static let short = "Your email must be at least 5 characters long."
        static let long = "Your email must be no more than 254 characters long."
        static let required = "Email address is required."
    }
    
    struct Password {
        static let empty = "Please enter a password."
        static let short = "Your password must be at least 8 characters long."
        static let long = "Your password must be no more than 100 characters long."
        static let weak = "Your password must contain at least one number, one uppercase letter, one lowercase letter, and one special character."
        static let required = "Password is required."
    }
    
    struct Username {
        static let empty = "Please enter a username."
        static let short = "Your username must be at least 3 characters long."
        static let long = "Your username must be no more than 30 characters long."
        static let invalid = "Your username can only contain alphanumeric characters and underscores."
        static let required = "Username is required."
    }
    
    struct FullName {
        static let empty = "Please enter your full name."
        static let short = "Your full name must be at least 2 characters long."
        static let long = "Your full name must be no more than 50 characters long."
        static let invalid = "Please enter a valid name."
        static let required = "Fullname is required."
    }
    
    struct Phone {
        static let empty = "Please enter a phone number."
        static let invalid = "Please enter a valid phone number."
        static let short = "Your phone number must be at least 10 digits long."
        static let long = "Your phone number must be no more than 15 digits long."
        static let required = "Phone number is required."
    }
    
    struct Address {
        static let empty = "Please enter an address."
        static let short = "Your address must be at least 5 characters long."
        static let long = "Your address must be no more than 100 characters long."
        static let required = "Address is required."
    }
    
    struct DateOfBirth {
        static let empty = "Please enter a date of birth."
        static let invalid = "Please enter a valid date of birth."
        static let required = "Date of birth is required."
    }
    
    struct CreditCard {
        static let empty = "Please enter a credit card number."
        static let invalid = "Please enter a valid credit card number."
        static let required = "Credit card is required."
    }
    
    struct ExpiryDate {
        static let empty = "Please enter an expiry date."
        static let invalid = "Please enter a valid expiry date."
        static let expired = "Your credit card has expired."
        static let required = "Credit card expiry date is required."
    }
    
    struct CVV {
        static let empty = "Please enter the CVV of your credit card."
        static let invalid = "Please enter a valid CVV."
        static let required = "CVV number is required."
    }
    
    struct ZipCodePostalCode {
        static let empty = "Please enter your zip code."
        static let invalid = "Please enter a valid zip code."
        static let required = "Postal/Zip code is required."
    }
    
    struct SecurityQuestion {
        static let empty = "Please select a security question."
    }
    
    struct SecurityAnswer {
        static let empty = "Please provide an answer to your security question."
    }
    
    struct CompanyName {
        static let empty = "Please enter your company name."
        static let short = "Your company name must be at least 2 characters long."
        static let long = "Your company name must be no more than 50 characters long."
        static let required = "Company name is required."
    }
    
    struct Location {
        static let empty = "Please enter your location."
        static let short = "Your location must be at least 2 characters long."
        static let long = "Your location must be no more than 50 characters long."
        static let required = "Location is required."
    }
    
    struct SelectLocation {
        static let empty = "Please select your location."
        static let invalid = "Please select a valid location."
        static let required = "Location selection is required."
    }
    
    struct Industry {
        static let empty = "Please enter your industry."
        static let short = "Your industry must be at least 2 characters long."
        static let long = "Your industry must be no more than 50 characters long."
        static let required = "Industry is required."
    }
    
    struct Position {
        static let empty = "Please enter your position."
        static let short = "Your position must be at least 2 characters long."
        static let long = "Your position must be no more than 50 characters long."
        static let required = "Position is required."
    }
    
    struct Nationality {
        static let empty = "Please enter your nationality."
        static let short = "Your nationality must be at least 2 characters long."
        static let long = "Your nationality must be no more than 50 characters long."
        static let required = "Nationality is required."
    }
    
    struct SelectNationality {
        static let empty = "Please select your nationality."
        static let invalid = "Please select a valid nationality."
        static let required = "Nationality selection is required."
    }
    
    struct Residency {
        static let empty = "Please enter your residency."
        static let short = "Your residency must be at least 2 characters long."
        static let long = "Your residency must be no more than 50 characters long."
        static let required = "Residency is required."
    }
    
    struct SelectResidency {
        static let empty = "Please select your residency."
        static let invalid = "Please select a valid residency."
        static let required = "Residency selection is required."
    }
    
    struct Qualification {
        static let empty = "Please enter your qualification."
        static let short = "Your qualification must be at least 2 characters long."
        static let long = "Your qualification must be no more than 50 characters long."
        static let required = "Qualification is required."
    }
    
    struct SelectQualification {
        static let empty = "Please select your qualification."
        static let invalid = "Please select a valid qualification."
        static let required = "Qualification selection is required."
    }
    
    struct Experience {
        static let empty = "Please enter your experience."
        static let short = "Your experience must be at least 1 character long."
        static let long = "Your experience must be no more than 50 characters long."
        static let required = "Experience is required."
    }
    
    struct SelectExperience {
        static let empty = "Please select your experience."
        static let invalid = "Please select a valid experience."
        static let required = "Experience selection is required."
    }
    
    struct EmploymentType {
        static let empty = "Please enter your employment type."
        static let short = "Your employment type must be at least 2 characters long."
        static let long = "Your employment type must be no more than 50 characters long."
        static let required = "Employment type is required."
    }
    
    struct SelectEmploymentType {
        static let empty = "Please select your employment type."
        static let invalid = "Please select a valid employment type."
        static let required = "Employment type selection is required."
    }
    
    struct ExpectedSalary {
        static let empty = "Please enter your expected salary."
        static let invalid = "Please enter a valid expected salary."
        static let low = "Your expected salary must be at least 1."
        static let high = "Your expected salary must be no more than 1000000."
        static let required = "Expected salary is required."
    }
    
    struct SelectExpectedSalary {
        static let empty = "Please select your expected salary."
        static let invalid = "Please select a valid expected salary."
        static let required = "Expected salary selection is required."
    }
    
    struct SelectIndustryLookingFor {
        static let empty = "Please select the industry you're looking for."
        static let invalid = "Please select a valid industry."
        static let required = "Industry selection is required."
    }
    
    struct UploadCV {
        static let empty = "Please upload your CV/resume."
        static let invalid = "Please upload a valid CV/resume file."
        static let format = "Your CV/resume must be a .doc, .docx, .pdf, or .txt file."
        static let size = "Your CV/resume file size must be no more than 5MB."
        static let required = "CV/resume is required."
    }
    
    struct UploadProfilePicture {
        static let empty = "Please upload your profile picture."
        static let invalid = "Please upload a valid profile picture file."
        static let format = "Your profile picture must be a .jpg, .jpeg, .png, or .gif file."
        static let size = "Your profile picture file size must be no more than 5MB."
        static let required = "Profile picture is required."
    }
    
    struct SelectProfilePicture {
        static let empty = "Please select your profile picture."
        static let invalid = "Please select a valid profile picture."
        static let required = "Profile picture selection is required."
    }
    
    struct Age {
        static let empty = "Please enter your age."
        static let invalid = "Please enter a valid age."
        static let low = "Your age must be at least 18."
        static let high = "Your age must be no more than 100."
        static let required = "Age is required."
    }
    
    struct SelectAge {
        static let empty = "Please select your age."
        static let invalid = "Please select a valid age."
        static let required = "Age selection is required."
    }
    
    struct JobTitle {
        static let empty = "Please enter your job title."
        static let short = "Your job title must be at least 2 characters long."
        static let long = "Your job title must be no more than 50 characters long."
        static let required = "Job title is required."
    }
    
    struct SelectJobTitle {
        static let empty = "Please select your job title."
        static let invalid = "Please select a valid job title."
        static let required = "Job title selection is required."
    }
    
    struct WorkPlaceType {
        static let empty = "Please enter your workplace type."
        static let short = "Your workplace type must be at least 2 characters long."
        static let long = "Your workplace type must be no more than 50 characters long."
        static let required = "Workplace type is required."
    }
    
    struct SelectWorkPlaceType {
        static let empty = "Please select your workplace type."
        static let invalid = "Please select a valid workplace type."
        static let required = "Workplace type selection is required."
    }
    
    struct JobLocation {
        static let empty = "Please enter your job location."
        static let short = "Your job location must be at least 2 characters long."
        static let long = "Your job location must be no more than 50 characters long."
        static let required = "Job location is required."
    }
    
    struct SelectJobLocation {
        static let empty = "Please select your job location."
        static let invalid = "Please select a valid job location."
        static let required = "Job location selection is required."
    }
    
    struct WorkPhone {
        static let empty = "Please enter your work phone number."
        static let invalid = "Please enter a valid work phone number."
        static let required = "Work phone is required."
    }
    
    struct CellPhone {
        static let empty = "Please enter your cell phone number."
        static let invalid = "Please enter a valid cell phone number."
        static let required = "Cell phone is required."
    }
    
    struct BusinessAddress {
        static let empty = "Please enter your business address."
        static let short = "Your business address must be at least 5 characters long."
        static let long = "Your business address must be no more than 100 characters long."
        static let required = "Business address is required."
    }
    
    struct CompanyWebsite {
        static let empty = "Please enter your company website URL."
        static let invalid = "Please enter a valid company website URL."
        static let required = "Company website is required."
    }
    
    struct CompanyFacebookPage {
        static let empty = "Please enter your company Facebook page URL."
        static let invalid = "Please enter a valid company Facebook page URL."
        static let required = "Company facebook page is required."
    }
    
    struct TwitterProfile {
        static let empty = "Please enter your Twitter profile URL."
        static let invalid = "Please enter a valid Twitter profile URL."
        static let required = "Twitter profile is required."
    }
    
    struct LinkedinProfile {
        static let empty = "Please enter your LinkedIn profile URL."
        static let invalid = "Please enter a valid LinkedIn profile URL."
        static let required = "Linkedin profile is required."
    }
    
    struct StackoverflowProfile {
        static let empty = "Please enter your StackOverflow profile URL."
        static let invalid = "Please enter a valid StackOverflow profile URL."
        static let required = "Stackoverflow profile is required."
    }
    
    struct GithubProfile {
        static let empty = "Please enter your GitHub profile URL."
        static let invalid = "Please enter a valid GitHub profile URL."
        static let required = "GitHub profile is required."
    }
    
    struct Gender {
        static let empty = "Please select your gender."
        static let invalid = "Please select a valid gender."
        static let required = "Gender selection is required."
    }
    
    struct FirstName {
        static let empty = "Please enter your first name."
        static let short = "Your first name must be at least 2 characters long."
        static let long = "Your first name must be no more than 50 characters long."
        static let required = "First name is required."
    }
    
    struct LastName {
        static let empty = "Please enter your last name."
        static let short = "Your last name must be at least 2 characters long."
        static let long = "Your last name must be no more than 50 characters long."
        static let required = "Last name is required."
    }
    
    struct MiddleName {
        static let empty = "Please enter your middle name."
        static let short = "Your middle name must be at least 2 characters long."
        static let long = "Your middle name must be no more than 50 characters long."
        static let required = "Middle name is required."
    }
    
    struct RetypePassword {
        static let empty = "Please re-enter your password."
        static let mismatch = "Your passwords do not match."
        static let short = "Your re-entered password must be at least 8 characters long."
        static let long = "Your re-entered password must be no more than 50 characters long."
        static let required = "Re-enter password is required."
    }
    
    struct Comments {
        static let empty = "Please enter your comment."
        static let short = "Your comment must be at least 2 characters long."
        static let long = "Your comment must be no more than 500 characters long."
        static let required = "Comment is required."
    }
    
    struct Description {
        static let empty = "Please enter the description."
        static let short = "The description must be at least 10 characters long."
        static let long = "The description must be no more than 1000 characters long."
        static let required = "Description is required."
    }
    
    struct RadioButtons {
        static let required = "Please select one option."
    }
    
    struct FileUpload {
        static let required = "Please upload a file."
        static let type = "Invalid file type. Allowed types are: JPG, JPEG, PNG, GIF, PDF, DOC, DOCX, TXT."
        static let size = "File size exceeds the limit of 5MB."
    }
    
    struct TextArea {
        static let length = "Maximum character count exceeded."
    }
    
    struct Logout {
        static let logoutConfirmation = "Are you sure you want to logout?"
    }
    
    struct DeleteItem {
        static let deleteItemConfirmation = "Are you sure you want to delete this item?"
    }
    
    struct DeleteAllItems {
        static let deleteAllItemsConfirmation = "Are you sure you want to delete all items?"
    }
    
    struct ClearCart {
        static let clearCartConfirmation = "Are you sure you want to clear your cart?"
    }
    
    struct Warnning {
        static let functionalityNotImplemented = "The functionality you are trying to access is not yet implemented."
    }
}
