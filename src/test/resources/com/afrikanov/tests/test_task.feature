Feature: Web Form Sender
  Fill form with parameters values and click to "Submit" form

  Scenario Outline: Fill and submit web-from

    Given Select 'ttl': '<ttl_select>'
    Given Set value for 'ttl' radio button: '<ttl>'
    Given Set text to 'Message' input: '<Message>'
    Given Set text to 'Comments' input: '<Comments>'
    Given Set text to 'Your Comments' input: '<Your_Comments>'
    Given Set text to 'Say It Here' input: '<Say_It_Here>'
    Given Set text to 'Resume' input: '<Resume>'
    Given Set 'Are you 18 or over' check-box: '<Age_checkbox>'
    Given Set 'Advertise on home page' check-box: '<Is_Advertise_On_Home_Page>'
    Given Set 'Marital Status Radio' : '<Marital_Status_Radio>'
    Given Select 'Marital Status Selection': '<Marital_Status_Selection>'
    Given Set text for picture of colored square : '<Colored_Square_Text>'
    Given Set text to 'My ID' input: '<My_ID>'
    Given Select 'Income': '<Income>'
    Given Select 'Your annual salary' : '<Salary>'

    When Sumbit form

    Examples:
      | ttl_select | ttl | Message                    | Comments                   | Your_Comments              | Say_It_Here                | Resume                     | Age_checkbox | Is_Advertise_On_Home_Page | Marital_Status_Radio | Marital_Status_Selection | Colored_Square_Text        | My_ID                      | Income  | Salary |
      | Mr         | Dr  | A                          | BB                         | CCC                        | DDDD                       | EEEE                       | true         | false                     | Married              | Widow                    | FFFFF                      | GGGGGG                     | 0006000 | 1      |
      | Mrs        | Mr  | AA                         | BBB                        | CCCC                       | DDDDD                      | EEEEE                      | false        | true                      | Single               | Divorced                 | FFFFFF                     | GGGGGGG                    | 0013500 | 2      |
      | Dr         | Mrs | !@#$%^&*()<>\/?-+=±§`~][{} | BBBB                       | CCCCC                      | DDDDDD                     | EEEEEE                     | true         | true                      | Divorced             | Single                   | FFFFFFF                    | G                          | 0017500 | 3      |
      | Mr         | Ms  | A                          | !@#$%^&*()<>\/?-+=±§`~][{} | C                          | D                          | E                          | false        | false                     | Widow                | Married                  | F                          | G                          | 0030000 | 1      |
      | Mr         | Mr  | A                          | BB                         | !@#$%^&*()<>\/?-+=±§`~][{} | DDDD                       | EEEE                       | true         | false                     | Married              | Married                  | FFFFF                      | GGGGGG                     | 0050000 | 2      |
      | Mrs        | Mrs | A                          | B                          | CCC                        | !@#$%^&*()<>\/?-+=±§`~][{} | EEEE                       | false        | true                      | Single               | Single                   | FFFFF                      | GGGGGG                     | 0070000 | 3      |
      | Dr         | Dr  | A                          | BB                         | C                          | D                          | !@#$%^&*()<>\/?-+=±§`~][{} | true         | false                     | Divorced             | Divorced                 | FFFFF                      | GGGGGG                     | 0090000 | 1      |
      | Mr         | Ms  | A                          | BB                         | CCC                        | D                          | EEEE                       | false        | true                      | Widow                | Widow                    | !@#$%^&*()<>\/?-+=±§`~][{} | GGGGGG                     | 0150000 | 2      |
      | Mrs        | Ms  | A                          | BB                         | CCC                        | DDDD                       | E                          | true         | true                      | Married              | Divorced                 | FFFFF                      | !@#$%^&*()<>\/?-+=±§`~][{} | 0300000 | 3      |
      | Mrs         | Mr  | A                          | B                          | C                          | D                          | E                          | false        | false                     | Divorced             | Widow                    | F                          | G                          | 0750000 | 1      |
      | Dr         | Mr  | 1                          | 22                         | 333                        | 4444                       | 55555                      | true         | false                     | Married              | Widow                    | 666666                     | 7777777                    | 1000000 | 2      |
      | Mr         | Dr  |                            |                            |                            |                            |                            | false        | false                     |                      |                          |                            |                            |         |        |
# Test long (256 characters) texts in text inputs
#      | Mrs        | Dr  | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                                                  | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                         | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                        | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                       | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                      | true         | false                     | Married              | Widow                    | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                     | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                    | 1000000 | 2      |
