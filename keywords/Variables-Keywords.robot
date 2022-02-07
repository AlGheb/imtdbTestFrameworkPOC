*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}  Chrome
${URL}  http://localhost/
${SignUp}  css= a[href='/signup']
${Login}  css= a[href='/login']
${ProfileLink}    css= a[href='/profile']
${Username}  css= input[id="username"]
${Password}  css= input[id="password"]
${PasswordRepeat}  css= input[id="repeat-password"]
${SignupSubmit}  css= button[class= "login__submit"]
${CreatedUser}  css= h2
${MovieList}  css=  button
${AllMovies}  css= h2
${Searchbar}    css= input[class="search-movie__input"]
${SearchButton}    css= button[class="search-movie__button"]
${MovieTitle}    css= li h3
*** Keywords ***
Open Browser On Homepage
    Open Browser    ${URL}    ${Browser}
Login
    Click Element  ${Login}
    Input Text  ${Username}  Nummertwee
    Input Text  ${Password}  Ditwerkt
    Click Button  ${SignupSubmit}

Validate User Is Logged In
    wait until element is visible    ${ProfileLink}

Enter Searchterm
    Input Text  ${Searchbar}  Space
    Click Button    ${SearchButton}

Check Movietitles From Search Result
    @{MovieList}=    Get WebElements  ${MovieTitle}
    ${ThisList}=    Create List
    FOR    ${MovieTitle}    IN    @{MovieList}
        ${MovieTitles}=    Get Text    ${MovieTitle}
        Append To List    ${ThisList}    ${MovieTitles}
        Should Contain    ${MovieTitles}  Space
        Log    ${ThisList}
    END

# At this moment I have combined all the keywords and variables in one file. In the case of a larger set of tests spanning
# more pages that are clearly distinguishable I would give each component/page its own file for variables and keywords.
# I prefer to keep input data for tests in a single place to keep tests easy to maintain.

