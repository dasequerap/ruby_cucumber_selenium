Feature: Logging-in into website
  Scenario Outline: Verify that the user can login into the website
    Given I open the website in a browser
    When I login with credentials "<username>" and "<password>"
    Then Login page is displayed with title "<page_title>"

    Examples:
      | username | password | page_title |
      | selenium | selenium | Login: Mercury Tours |
      | tutorial | tutorial | Login: Mercury Tours |

  Scenario Outline: Verify that the user can login into the website with record
    Given I open the website in a browser
    When I login with credential set <record>
    Then Login page is displayed with "<page_title>" for <record>

    Examples:
      | record | page_title |
      | user_one | login_page_title |
      | user_two | login_page_title |
