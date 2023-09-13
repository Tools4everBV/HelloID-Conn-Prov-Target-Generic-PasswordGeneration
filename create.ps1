#Initialize default properties
$p = $person | ConvertFrom-Json;
$m = $manager | ConvertFrom-Json;
$success = $False;
$auditLogs = [System.Collections.Generic.List[PSCustomObject]]::new()

function New-RandomPassword($PasswordLength)
{
    if($PasswordLength -lt 4) {$PasswordLength = 4}
        
    # Used to store an array of characters that can be used for the password
    $CharPoolLower = [System.Collections.ArrayList]::new()
    $CharPoolUpper = [System.Collections.ArrayList]::new()
    $CharPoolSpecial = [System.Collections.ArrayList]::new()
    $CharPoolNumber = [System.Collections.ArrayList]::new()

    # Add characters a-z to the arraylist
    for ($index = 97; $index -le 122; $index++) { [Void]$CharPoolLower.Add([char]$index) }

    # Add characters A-Z to the arraylist
    for ($index = 65; $index -le 90; $index++) { [Void]$CharPoolUpper.Add([Char]$index) }

    # Add digits 0-9 to the arraylist
    $CharPoolNumber.AddRange(@("0","1","2","3","4","5","6","7","8","9"))
        
    # Add a range of special characters to the arraylist
    $CharPoolSpecial.AddRange(@("!","""","#","$","%","&","'","(",")","*","+","-",".","/",":",";","<","=",">","?","@","[","\","]","^","_","{","|","}","~","!"))
        
    $password=""
    $UpperCount = Get-Random -Maximum 2 -Minimum 1;
    $SpecialCount = Get-Random -Maximum 2 -Minimum 1;
    $NumberCount = Get-Random -Maximum 2 -Minimum 1;
    $PasswordLength = $PasswordLength - ($UpperCount + $SpecialCount + $NumberCount);
    $rand= [System.Random]::new();
        
    # Generate password by appending a random value from the array list until desired length of password is reached
    1..$UpperCount | foreach { $password = $password + $CharPoolUpper[$rand.Next(0,$CharPoolUpper.count)] }  
    1..$SpecialCount | foreach { $password = $password + $CharPoolSpecial[$rand.Next(0,$CharPoolSpecial.count)] }  
    1..$NumberCount | foreach { $password = $password + $CharPoolNumber[$rand.Next(0,$CharPoolNumber.count)] } 
    1..$PasswordLength | foreach { $password = $password + $CharPoolLower[$rand.Next(0,$CharPoolLower.count)] }   
        
    #print password
    $password = ($password -split '' | Sort-Object {Get-Random}) -join ''
    $password;
}

try{


    #Change mapping here
	$account = [PSCustomObject]@{
		password = New-RandomPassword(8);
}

    $auditLogs.Add([PSCustomObject]@{
            Action  = "CreateAccount"
            Message = "Generated random password"
            IsError = $false
            })
}

catch{

        $auditLogs.Add([PSCustomObject]@{
            Action  = "CreateAccount"
            Message = "Failed to generate password"
            IsError = $True
        })

}
finally {

    # Check if auditLogs contains errors, if no errors are found, set success to true
    if (-NOT($auditLogs.IsError -contains $true)) {
        $success = $true
    }
    
$aRef = [guid]::NewGuid().GUID

#build up result
$result = [PSCustomObject]@{
    Success          = $success
    AccountReference = $aRef
    AuditLogs        = $auditLogs
    Account          = $account

    # Optionally return data for use in other systems
    ExportData       = [PSCustomObject]@{
			Password = $account.password
        }
    }
};


#send result back
Write-Output $result | ConvertTo-Json -Depth 10
