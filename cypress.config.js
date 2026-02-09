const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const { addCucumberPreprocessorPlugin } = require("@badeball/cypress-cucumber-preprocessor");
const { createEsbuildPlugin } = require("@badeball/cypress-cucumber-preprocessor/esbuild");

module.exports = defineConfig({
  waitForAnimations: false,
  animationDistanceThreshold: 50,
  chromeWebSecurity: false,
  e2e: {
    specPattern: "cypress/e2e/features/*.feature",
    baseUrl: "https://demoqa.com/automation-practice-form",

    async setupNodeEvents(on, config) {
      // 1. PRIMERO: Registrar el plugin de Cucumber
      await addCucumberPreprocessorPlugin(on, config);

      // 2. SEGUNDO: Configurar el bundler con el plugin de esbuild
      on(
        "file:preprocessor",
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        })
      );

      // 3. MUY IMPORTANTE: Retornar el objeto config modificado
      return config;
    },
  }, 
});