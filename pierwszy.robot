*** Settings ***
Library  SSHLibrary

*** Variables ***
${HOST}  localhost
${USERNAME}  tester01
${PASSWORD}  tester01

*** Test Cases ***
JJ Test_1
  My log_1  Justyna

JJ Test_2
  My log_1  poprawnie przekazany tekst.

JJ Test_3
  Open connection and log in

JJ Test_4
  Open connection and log in
  Info about OS  Linux

JJ Test_5
  Open connection and log in
  ${output}=  Execute Command   uname -a
  Log To Console  ${output}
  Should Contain   ${output}    86

*** Keywords***
My Log_1
  [Arguments]  ${a}
  Log to console  ${a}

Open connection and log in
  Open connection  ${HOST}
  Login  ${USERNAME}  ${PASSWORD}

Info about OS
  [Arguments]  ${Uname zmienna}
  ${Uname zmienna}=  Execute Command  uname -a
