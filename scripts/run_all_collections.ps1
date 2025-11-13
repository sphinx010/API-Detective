$newmanPath = "newman\reports"
$envFile = "environments\Integration-Env.postman_environment.json" 

if (!(Test-Path $newmanPath)) {
    New-Item -ItemType Directory -Force -Path $newmanPath | Out-Null
}

$collections = @(
    "collections\Auth_Service_Tests.postman_collection.json",
    "collections\Inventory Test suite.postman_collection.json",
    "collections\User-Profile_manager.postman_collection.json",
    "collections\Notify-Service Tests.postman_collection.json"
)

foreach ($collection in $collections) {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($collection)
    $reportPath = "$newmanPath\$name"

    if (!(Test-Path $reportPath)) {
        New-Item -ItemType Directory -Path $reportPath -Force | Out-Null
    }

    Write-Host "Running collection: $name ..."
    
    newman run $collection `
      -e $envFile `
      -r htmlextra `
      --reporter-htmlextra-export "$reportPath\$name.postman_report.html"
}
