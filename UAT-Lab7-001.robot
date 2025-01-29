*** setting ***
Resource          resource.robot

*** Test Cases ***
Open Form
    [Tags]    UAT007-001No.1
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Valid Form
    [Tags]    UAT007-001No.1
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phonenumber    081-111-1234
    Submit FormSubmit
    Complete Page Should Be Open
    [Teardown]    Close Browser