*** Settings ***
Documentation    Keywords Desafio Final mobile - PrimeExperts


*** Keywords ***
Dado que esteja na tela inicial do youtube
    AppiumLibrary.Wait Until Element Is Visible    com.google.android.youtube:id/mobile_topbar_avatar

Quando clicar para realizar login
    AppiumLibrary.Wait Until Element Is Visible    //android.widget.ImageView[@content-desc="Account"]
    AppiumLibrary.Click Element                    //android.widget.ImageView[@content-desc="Account"]
    AppiumLibrary.Wait Until Element Is Visible    com.google.android.youtube:id/button
    AppiumLibrary.Click Element                    com.google.android.youtube:id/button
    AppiumLibrary.Wait Until Element Is Visible    com.google.android.youtube:id/name
    AppiumLibrary.Click Element                    com.google.android.youtube:id/name

    AppiumLibrary.Wait Until Element Is Visible    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText
    AppiumLibrary.Input Text                       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText    testrobotprime@gmail.com    
    AppiumLibrary.Click Element                    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button




    # AppiumLibrary.Wait Until Element Is Visible    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View
    AppiumLibrary.Input Text       00000000-0000-01e1-0000-06f7000002a6       ab54321ab
    AppiumLibrary.Click Element    id:passwordNext      

# E usar swipe no menu explorar



# E Clicar no video



# Entao o video sera reproduzido




