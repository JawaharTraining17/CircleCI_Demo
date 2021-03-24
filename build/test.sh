sfdx force:source:push -u dev
sfdx force:apex:test:run --testlevel RunLocalTests --outputdir test-results --resultformat tap --targetusername dev
