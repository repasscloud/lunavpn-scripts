# Set the API endpoint
$apiEndpoint = "https://xx/api/LunaCIP"

# Set the Bearer token
$token = "xx"

$jsonString = '{
    "application": "wg",
    "region": "AMERICAS",
    "country": "United States",
    "city": "",
    "cip": "Vultr",
    "flag_code": "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/us.svg",
    "api_payload": "x"
  }'
  
# Convert the JSON string to a PowerShell object
$object = ConvertFrom-Json $jsonString

#United States
"Miami" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "mia:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Atlanta" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "atl:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Chicago" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "ord:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Dallas" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "dfw:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Los Angeles" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "lax:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"New York (NJ)" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "ewr:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Seattle" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "sea:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Silicon Valley" | ForEach-Object {
    $i = $_
    $object.city = $i
    $object.api_payload = "sjc:vc2-1c-1gb:2076:us"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Mexico
"Mexico City" | ForEach-Object {
    $i = $_
    $object.region = "AMERICAS"
    $object.country = "Mexico"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/mx.svg"
    $object.api_payload = "mex:vc2-1c-1gb:2076:mx"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Canada
"Toronto" | ForEach-Object {
    $i = $_
    $object.region = "AMERICAS"
    $object.country = "Canada"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/ca.svg"
    $object.api_payload = "yto:vc2-1c-1gb:2076:ca"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Brazil
"Sao Paulo" | ForEach-Object {
    $i = $_
    $object.region = "AMERICAS"
    $object.country = "Brazil"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/br.svg"
    $object.api_payload = "sao:vc2-1c-1gb-sc1:2076:br"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Chile
"Santiago" | ForEach-Object {
    $i = $_
    $object.region = "AMERICAS"
    $object.country = "Chile"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/cl.svg"
    $object.api_payload = "scl:vc2-1c-1gb:2076:cl"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# United Kingdom
"Manchester" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "United Kingdom"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/gb.svg"
    $object.api_payload = "man:vc2-1c-1gb:2076:gb"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"London" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "United Kingdom"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/gb.svg"
    $object.api_payload = "lhr:vc2-1c-1gb:2076:gb"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Germany
"Frankfurt" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "Germany"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/de.svg"
    $object.api_payload = "fra:vc2-1c-1gb:2076:de"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Spain
"Madrid" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "Spain"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/es.svg"
    $object.api_payload = "mad:vc2-1c-1gb:2076:es"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# France
"Paris" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "France"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/fr.svg"
    $object.api_payload = "cdg:vc2-1c-1gb:2076:fr"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Sweden
"Stockholm" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "Sweden"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/se.svg"
    $object.api_payload = "sto:vc2-1c-1gb:2076:se"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Poland
"Warsaw" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "Poland"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/pl.svg"
    $object.api_payload = "waw:vc2-1c-1gb:2076:pl"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Australia
"Melbourne" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "Australia"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/au.svg"
    $object.api_payload = "mel:vc2-1c-1gb:2076:au"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Sydney" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "Australia"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/au.svg"
    $object.api_payload = "syd:vc2-1c-1gb:2076:au"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Japan
"Osaka" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "Japan"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/jp.svg"
    $object.api_payload = "itm:vc2-1c-1gb:2076:jp"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}
"Tokyo" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "Japan"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/jp.svg"
    $object.api_payload = "nrt:vc2-1c-1gb:2076:jp"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# India
"Bangalore","Delhi NCR" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "India"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/in.svg"
    $object.api_payload = "del:vc2-1c-1gb:2076:in"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# South Korea
"Seoul" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "South Korea"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/kr.svg"
    $object.api_payload = "icn:vc2-1c-1gb:2076:kr"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Singapore
"Singapore" | ForEach-Object {
    $i = $_
    $object.region = "APAC"
    $object.country = "Singapore"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/sg.svg"
    $object.api_payload = "sgp:vc2-1c-1gb:2076:sg"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# Israel
"Tel Aviv" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "Israel"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/il.svg"
    $object.api_payload = "tlv:vc2-1c-1gb:2076:il"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
}

# South Africa
"Johannesburg" | ForEach-Object {
    $i = $_
    $object.region = "EMEA"
    $object.country = "South Africa"
    $object.city = $i
    $object.flag_code = "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.2/flags/4x3/za.svg"
    $object.api_payload = "jnb:vc2-1c-1gb:2076:za"
    $object

    # Invoke the HTTP POST request
    $response = Invoke-RestMethod -Uri $apiEndpoint -Method Post -Headers @{
        "Authorization" = "Bearer $token"
    } -Body ($object | ConvertTo-Json) -ContentType "application/json" -AllowInsecureRedirect

    # Display the response
    $response
    Start-Sleep -Seconds 1
}

# sshpass -p '' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o PreferredAuthentications=password -o PubkeyAuthentication=no root@0.0.0.0