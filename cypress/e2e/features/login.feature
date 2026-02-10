Feature: Login

  @SB-4
  Scenario: Inicio de sesion exitoso
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

  @SB-13
  Scenario: Inicio de sesion invalido v2
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
    
  @SB-34
  Scenario: Inicio de sesion exitoso
    Given A web browser is at the demoqa page
    When The user is select form 2
    Then A user enters the firstname "Renato"
    Then A user enters the lastname "Cabezas"
    Then The user enters his current address "Av. Miraflores 150, Miraflores - Lima - Peru"
    Then The user select picture "C:\Users\renat\Downloads\VoucherEnero2023.jpeg"
    Then The user select his hobbies "Checkbox 1, Checkbox 2 and Checkbox 3"
    Then The user select his gender "radio 3"
    Then A user select multiple items "Selection Item 1andSelection Item 2"
    Then A user select dropdown "Drop Down Item 5"
    Then A user confirm form
