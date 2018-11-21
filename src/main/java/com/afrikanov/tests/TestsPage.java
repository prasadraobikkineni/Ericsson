package com.afrikanov.tests;

import com.codeborne.selenide.Selenide;

import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.apache.commons.lang3.StringUtils;

import static com.codeborne.selenide.Condition.value;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class TestsPage {

    private final static String PAGE_URL = "https://www.roboform.com/filling-test-custom-fields";

    @Before
    public TestsPage open() {
        Selenide.open(PAGE_URL);
        return this;
    }

    @Then("Sumbit form")
    public void submitForm() {
        $("input[value='Submit'").click();
    }

    @Given("^Select 'ttl': '(.*)'")
    public void selectTtlDropdownValue(String setValue) {
        if (!StringUtils.isEmpty(setValue)) {
            $("select[name='ttl_select']")
                    .scrollIntoView(false)
                    .selectOption(setValue);
        }
    }

    @Given("^Set value for 'ttl' radio button: '(.*)'")
    public void selectTtlRadioButton(String radioButtonName) {
        $$("input[name='ttl']")
                .find(value(radioButtonName))
                .scrollIntoView(false)
                .click();
    }

    @Given("Set text to 'Message' input: '(.*)'")
    public void setTextToMessageInput(String text) {
        $(byText("Message"))
                .parent()
                .$("input")
                .scrollIntoView(false)
                .sendKeys(text);
    }

    @Given("Set text to 'Comments' input: '(.*)'")
    public void setTextToCommentsInput(String text) {
        $(byText("Comments"))
                .parent()
                .$("input")
                .scrollIntoView(false)
                .sendKeys(text);
    }

    @Given("Set text to 'Your Comments' input: '(.*)'")
    public void setTextToYourCommentsInput(String text) {
        $("input[name=field3]")
                .scrollIntoView(false)
                .sendKeys(text);

        /*
        // We can use alternative way -  search by label (like a user search field)
        $(byText("Your Comments"))
                .parent()
                .$("input")
                .scrollIntoView(false)
                .sendKeys(text);
        */
    }

    @Given("Set text to 'Say It Here' input: '(.*)'")
    public void setTextToSayItHereInput(String text) {
        $("input[name=field4]")
                .scrollIntoView(false)
                .sendKeys(text);
    }

    @Given("Set text to 'Resume' input: '(.*)'")
    public void setTextResumeInput(String text) {
        $("textarea")
                .scrollIntoView(false)
                .sendKeys(text);
    }

    @Given("Set 'Are you 18 or over' check-box: '(.*)'")
    public void setAgeCheckBox(String isChecked) {
        if (Boolean.valueOf(isChecked)) {
            $("input[name=field6]")
                    .scrollIntoView(false)
                    .click();
        }
    }

    @Given("Set 'Advertise on home page' check-box: '(.*)'")
    public void setAdvertiseOnHomePageCheckBox(String isChecked) {
        if (Boolean.valueOf(isChecked)) {
            $("input[name=field7]")
                    .scrollIntoView(false)
                    .click();
        }
    }

    @Given("Set 'Marital Status Radio' : '(.*)'")
    public void setMaritalStatusRadioButton(String text) {
        if (!StringUtils.isEmpty(text)) {
            $$("input[name=msradio]")
                    .find(value(text))
                    .scrollIntoView(false)
                    .selectRadio(text);
        }
    }

    @Given("^Select 'Marital Status Selection': '(.*)'")
    public void selectMaritalStatusSelectionDropdownValue(String setValue) {
        if (!StringUtils.isEmpty(setValue)) {
            $("select[name=field4]")
                    .scrollIntoView(false)
                    .selectOption(setValue);
        }
    }

    @Given("^Set text for picture of colored square : '(.*)'")
    public void selectColoredSquareText(String text) {
        $("input[name='attitude']")
                .scrollIntoView(false)
                .sendKeys(text);
    }

    @Given("Set text to 'My ID' input: '(.*)'")
    public void setMyIdText(String text) {
        $("input[name=field_9]")
                .scrollIntoView(false)
                .sendKeys(text);
    }

    @Given("^Select 'Income': '(.*)'")
    public void selectIncomeDropdownValue(String setValue) {
        if (!StringUtils.isEmpty(setValue)) {
            $("select[name=Income]")
                    .scrollIntoView(false)
                    .selectOptionByValue(setValue);
        }
    }

    @Given("Select 'Your annual salary' : '(.*)'")
    public void setSalaryRadioButton(String text) {
        $$("input[name='OpenField4_01']")
                .find(value(text))
                .scrollIntoView(false)
                .click();
    }
}
