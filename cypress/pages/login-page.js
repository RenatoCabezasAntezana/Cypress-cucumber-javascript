class homeSaucePage {
    elements = {
        userNameInput: () => cy.get('#user-name'),
        passwordInput: () => cy.get('#password'),
        loginBtn: () => cy.get('#login-button'),
        errorMessage: () => cy.get('h3[data-test="error"]')
    }

    typeUserName(username) {
        this.elements.userNameInput().type(username);
    }

    typePassword(password) {
        this.elements.passwordInput().type(password);
    }

    clickLogin() {
        this.elements.loginBtn().click();
    }

    submitLogin(username, password) {
        this.elements.userNameInput().type(username);
        this.elements.passwordInput().type(password);
        this.elements.loginBtn().click();
    }
}

module.exports = new homeSaucePage();