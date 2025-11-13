# Setup absolute paths 
$rootPath   = Split-Path -Parent $MyInvocation.MyCommand.Path
$newmanPath = Join-Path $rootPath "newman\reports"
$envFile    = Join-Path $rootPath "environments\Integration-Env.postman_environment.json"

# Ensure reports directory exists 
if (!(Test-Path $newmanPath)) {
    New-Item -ItemType Directory -Path $newmanPath -Force | Out-Null
}

# Define collection files 
$collections = @(
    "collections\Auth_Service_Tests.postman_collection.json",
    "collections\Inventory Test suite.postman_collection.json",
    "collections\User-Profile_manager.postman_collection.json",
    "collections\Notify-Service Tests.postman_collection.json"
)

#  Run each collection and generate reports 
foreach ($collection in $collections) {
    $collectionPath = Join-Path $rootPath $collection
    $name = [System.IO.Path]::GetFileNameWithoutExtension($collection)

    Write-Host "Running collection: $name ..."

    newman run $collectionPath `
        -e $envFile `
        -r cli,htmlextra `
        --reporter-htmlextra-export (Join-Path $newmanPath "$name.postman_report.html")
}

Write-Host "`n✅ All Postman collections executed successfully."
