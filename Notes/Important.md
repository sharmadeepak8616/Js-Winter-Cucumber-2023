WEBDRIVER-IO DOCS:
    https://webdriver.io/docs/gettingstarted


EXECUTION:
    To run all feature files:
        npx wdio wdio.conf.js
    
    To run a specific feature file:
        npx wdio wdio.conf.js --spec ./feature-file-relative-path
    eg:
        npx wdio wdio.conf.js --spec ./Tests/Facebook/signUp.feature

    To run scenario using tagName:
        npx wdio wdio.conf.js --cucumberOpts.tagExpression '@tagName'

    eg:
        npx wdio wdio.conf.js --cucumberOpts.tagExpression '@test'
        npx wdio wdio.conf.js --cucumberOpts.tagExpression '@login-1'
        npx wdio wdio.conf.js --cucumberOpts.tagExpression '@test and @invalidLogin'
                (run scenario which are having test-tag AND invalidLogin-tag)
        npx wdio wdio.conf.js --cucumberOpts.tagExpression '@test or @invalidLogin'
                (run scenario which are either having test-tag or invalidLogin-tag)
        npx wdio wdio.conf.js --cucumberOpts.tagExpression 'not @test'
                (run scenario which are NOT having test-tag)

ALLURE REPORT:

    Add Allure report:
        npm install @wdio/allure-reporter --save-dev
        npm install -g allure-commandline --save-dev

    in wdio.conf.js:
        reporters: [['allure',
                        {
                            outputDir: 'Reports/allure-results',
                            disableWebdriverStepsReporting: true,
                            useCucumberStepReporter: true,
                            disableWebdriverScreenReporting: false,
                        }
                ]],

    To generate Allure report:
        allure generate --clean <allure-results-path>
        eg: allure generate --clean Reports/allure-results
    
    To open allure report:
        allure open
        Note: make sure to be in the folder which contains allure-report
        