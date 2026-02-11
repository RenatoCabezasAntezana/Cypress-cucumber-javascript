const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const {
  addCucumberPreprocessorPlugin,
} = require("@badeball/cypress-cucumber-preprocessor");
const {
  createEsbuildPlugin,
} = require("@badeball/cypress-cucumber-preprocessor/esbuild");

module.exports = defineConfig({
  waitForAnimations: false,
  animationDistanceThreshold: 50,
  chromeWebSecurity: false,
  e2e: {
    specPattern: "cypress/e2e/features/*.feature",
    baseUrl: "https://demoqa.com/automation-practice-form",
    reporter: "cypress-junit-reporter",
    reporterOptions: {
      mochaFile: "cypress/results/results-[hash].xml", // Estructura del nombre
      toConsole: true, // Para ver el progreso en la terminal
      attachments: true,
    }, // Si quieres que Xray intente vincular pantallazos
    async setupNodeEvents(on, config) {
      // 1. PRIMERO: Registrar el plugin de Cucumber
      await addCucumberPreprocessorPlugin(on, config);

      // 2. SEGUNDO: Configurar el bundler con el plugin de esbuild
      on(
        "file:preprocessor",
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        }),
      );

      // 3. MUY IMPORTANTE: Retornar el objeto config modificado
      return config;
    },
  },
});
