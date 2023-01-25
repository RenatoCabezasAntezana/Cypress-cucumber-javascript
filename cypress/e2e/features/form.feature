Feature: Form Page

  Scenario: The user is the page
    Given A web browser is at the demoqa page
    When The user is select form
    Then A user enters the firstname "Renato"
    Then A user enters the lastname "Cabezas"
    Then The user enters his current address "Av. Miraflores 150, Miraflores - Lima - Peru"
    Then The user select picture "C:\Users\renat\Downloads\VoucherEnero2023.jpeg"
    Then The user select his hobbies "Checkbox 1, Checkbox 2 and Checkbox 3"
    Then The user select his gender "radio 3"
    Then A user select multiple items "Selection Item 1andSelection Item 2"
    Then A user select dropdown "Drop Down Item 5"
    Then A user confirm form

  @ScenarioTable
  Scenario Outline: The user is the page
    Given A web browser is at the demoqa page
    When The user is select form
    Then A user enters the firstname "<firstname>"
    Then A user enters the lastname "<lastname>"
    Then The user enters his current address "<currentAddress>"
    Then The user select picture "<picture>"
    Then The user select his hobbies "<hobbies>"
    Then The user select his gender "<gender>"
    Then A user select multiple items "<items>"
    Then A user select dropdown "<dropdown>"
    Then A user confirm form
    Examples:
      | firstname | lastname | currentAddress               | picture                                        | hobbies                               | gender  | items                               | dropdown         |
      | Juan      | PErez    | Calle Las begonias SJm       | C:\Users\renat\Downloads\VoucherEnero2023.jpeg | Checkbox 1, Checkbox 2 and Checkbox 3 | radio 3 | Selection Item 1andSelection Item 2 | Drop Down Item 5 |
      | Gustavo   | Cubas    | San Martin de Porres 120 SMP | C:\Users\renat\Downloads\VoucherEnero2023.jpeg | Checkbox 1 and Checkbox 2             | radio 1 | Selection Item 2andSelection Item 3 | Drop Down Item 5 |
#  Then A user enters the email "renato@gmail.com"

# Then The user enters his cell phone number "9876543331"
# Then the user select the date of birth "02 February 1998"
# Then The user enters his subject "Maths{enter}"


#Then The user enters his current address "Av. Miraflores 150"
