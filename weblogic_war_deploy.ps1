# Set the variables for the deployement
#USE t3 INSTEAD OF http IF YOU HAVE NOT ENABLED THE TUNNELING. IF YOU WANT TO ENABLE TUNNELING IN SERVER>PROTOCALS>GENERAL>ENABLE TUNNELING
$adminUrl = "t3://localhost:7001"
$username = "weblogic"
$password = "weblogic@123"
$appPath = "D:\Jenkin_new\tools\workspace\Weblogic\target\devopstool.war"
$target = "AdminServer"

# Deploy the application using weblogic.Deployer
#"YOU CAN FIND WEBLOGIC.JAR IN GIVEN PATH:- Oracle_Home\wlserver\server\lib\weblogic.jar (WEBLOGIC.DEPLOYER IS PRESENT IN THE WEBLOGIC.JAR AS A CLASSPATH(CP))"
java -cp "D:\Weblogic\Installation\wlserver\server\lib\weblogic.jar" weblogic.Deployer `
 -verbose `
 -noexit `
 -adminurl $adminUrl `
 -username $username `
 -password $password `
 -deploy $appPath `
 -targets $target `
 -name devopstool

Write-Host "Application Deployed successfully."
