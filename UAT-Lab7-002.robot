*** setting ***
Resource          resource.robot

*** Test Cases ***
Open Form
    [Tags]    UAT007-002No.1
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Empty Destination
    [Tags]    UAT007-002No.1
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phonenumber    081-111-1234
    Submit FormSubmit
    Page Should Contain    Please enter your destination.
    [Teardown]    Close Browser

Open Form
    [Tags]    UAT007-002No.2
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Empty Email
    [Tags]    UAT007-002No.2
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Phonenumber    081-111-1234
    Submit FormSubmit
    Page Should Contain    Please enter a valid email address.

Open Form
    [Tags]    UAT007-002No.3
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Invalid Email
    [Tags]    UAT007-002No.3
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@
    Input Phonenumber    081-111-1234
    Submit FormSubmit
    Page Should Contain    Please enter a valid email address.

Open Form
    [Tags]    UAT007-002No.4
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Empty Phonenumber
    [Tags]    UAT007-002No.4
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Submit FormSubmit
    Page Should Contain    Please enter a phone number.

Open Form
    [Tags]    UAT007-002No.5
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Invalid Phonenumber
    [Tags]    UAT007-002No.5
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phonenumber    191
    Submit FormSubmit
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)