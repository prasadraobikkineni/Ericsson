package com.afrikanov.tests;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        features = { "src/test/resources" },
        glue = {"com.afrikanov.tests" })

public class SimpleTest {}

