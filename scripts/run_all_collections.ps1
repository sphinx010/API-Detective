$newmanPath = "newman\reports"
$envFile = "environments\Integration-Env.postman_environment.json" 

# List of all collection files
$collections = @(
    "collections\Auth_Service_Tests.postman_collection.json",
    "collections\Inventory Test suite.postman_collection.json",
    "collections\User-Profile_manager.postman_collection.json",
    "collections\Notify-Service Tests.postman_collection.json"
)

foreach ($collection in $collections) {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($collection)
    Write-Host "Running collection: $name ..."
    
    newman run $collection `
      -e $envFile `
      -r htmlextra `
      --reporter-htmlextra-export "$newmanPath\$name.postman_report.html"
}

