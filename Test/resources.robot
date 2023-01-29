*** Settings ***
Library    Seleniumibrary
Library    SeleniumLibrary


*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome


*** Test Cases ***
Search Item
    open browser    ${url}      ${browser}      options=add_experimental_option("detach", True)
    maximize browser window
    input text    xpath://input[@id='Wikipedia1_wikipedia-search-input']    google.com
    click element    xpath://*[@id="Wikipedia1_wikipedia-search-form"]/div/span[2]/span[2]/input
Alert
    click button    xpath://button[@onclick='myFunction()']
    handle alert    accept
Date Picker
    input text    xpath://*[@id="datepicker"]       01/22/1998
Select Menu
    select from list by label    xpath://*[@id="speed"]     Medium
    select from list by label    xpath://*[@id="files"]    PDF file
    select from list by label    xpath://*[@id="number"]     3
    select from list by label    xpath://*[@id="products"]     Yahoo
    select from list by label    xpath://*[@id="animals"]     Avatar
Text Label
    title should be    xpath://*[@id="Text1"]       Text Labels
Voluteer Sign Up
    input text    xpath://*[@id="RESULT_TextField-1"]       Jan Altwin
    input text    xpath://*[@id="RESULT_TextField-2"]       Pineda
    input text    xpath://*[@id="RESULT_TextField-3"]       09454795846
    input text    xpath://*[@id="RESULT_TextField-4"]       Philippines
    input text    xpath://*[@id="RESULT_TextField-5"]       Tarlac
    input text    xpath://*[@id="RESULT_TextField-6"]       janaltwinp@gmail.com
Double Click
    double click element    xpath://*[@id="HTML10"]/div[1]/button
Drag and Drop
    drag and drop    xpath://*[@id="draggable"]/p       xpath://*[@id="droppable"]
    drag and drop    xpath://*[@id="gallery"]/li[1]/img     xpath://*[@id="trash"]
    drag and drop    xpath://*[@id="gallery"]/li[2]/img     xpath://*[@id="trash"]
Radio Input
    select radio button    name:RESULT_RadioButton-7       Female







*** Keywords ***


