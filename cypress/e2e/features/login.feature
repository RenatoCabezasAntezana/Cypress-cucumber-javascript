Feature: Login Page

    Feature Page where the users can login to their accounts
    Background:
        Given A web browser is at the saucelabs login Page
    Scenario:Success Login
        When A user enters the username "standard_user", the password "secret_sauce", and clicks on the login button
        Then the url will contains the inventory subdirectory
    Scenario:Blocked Login
        When A user enters the username "locked_out_user", the password "secret_sauce", and clicks on the login button
        Then The error message "Epic sadface: Sorry, this user has been locked out." is displayed
    Scenario:Incorrect Username Login
        When A user provides incorrect credentials, and clicks on the login button
            | username | password     |
            | testName | secret_sauce |
            | renato   | 1234         |
    Scenario:Incorrect Password Login
        When A user provides incorrect credentials, and clicks on the login button
            | username      | password     |
            | standard_user | testPassword |
        Then The error message "Epic sadface: Username and password do not match any user in this service" is displayed
