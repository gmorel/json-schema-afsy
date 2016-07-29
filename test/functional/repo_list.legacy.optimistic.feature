Feature: Display a sorted GitHub organization repository list
    As an non authenticated User
    In order to easily search for an organization project
    I should be able to sort an organization repository list


    Background:
        Given I'm not authenticated


    Scenario: Should be able to sort by full_name
        When I send a GET request to "/users/rezzza/repos?sort=full_name"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON node "[0]->name" should be equal to "command-bus"
        And the JSON node "[1]->name" should be equal to "command-bus-bundle"
        And the JSON node "[2]->name" should be equal to "JobflowBundle"


    Scenario: Should be able to sort by created
        When I send a GET request to "/users/rezzza/repos?sort=created"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON node "[0]->name" should be equal to "JobflowBundle"
        And the JSON node "[1]->name" should be equal to "command-bus"
        And the JSON node "[2]->name" should be equal to "command-bus-bundle"

    Scenario: Should be able to sort by updated
        When I send a GET request to "/users/rezzza/repos?sort=updated"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON node "[0]->name" should be equal to "JobflowBundle"
        And the JSON node "[1]->name" should be equal to "command-bus-bundle"
        And the JSON node "[2]->name" should be equal to "command-bus"


    Scenario: Should be able to sort by full_name (default)
        When I send a GET request to "/users/rezzza/repos"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON node "[0]->name" should be equal to "command-bus"
        And the JSON node "[1]->name" should be equal to "command-bus-bundle"
        And the JSON node "[2]->name" should be equal to "JobflowBundle"
