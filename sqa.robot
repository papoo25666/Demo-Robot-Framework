*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SERVER}    www.google.co.th
${BROWSER}    chrome
${WELCOME URL}    http://${SERVER}
${DELAY}    0
${URL}    www.cs.kku.ac.th


*** Test Cases ***
Open Welcome Page
   Open Browser    ${WELCOME URL}    ${BROWSER}
   Set Selenium Speed    ${DELAY}
   
Test Open URL:
    input text    q    ${URL}
	Click Button	btnK
	Page should Contain    ${URL}
   
   
