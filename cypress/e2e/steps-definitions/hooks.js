import { After } from "@badeball/cypress-cucumber-preprocessor";

After(function (scenario) {
  if (scenario?.result?.status === "FAILED") {
    const screenshotName = `${Cypress.spec.name}/${this.test.title} (failed).png`;
    return cy
      .readFile(`cypress/screenshots/${screenshotName}`, "base64")
      .then((imgData) => {
        if (this.attach) this.attach(imgData, "image/png");
      })
      .catch(() => {
        // ignore missing screenshot file
      });
  }
});
