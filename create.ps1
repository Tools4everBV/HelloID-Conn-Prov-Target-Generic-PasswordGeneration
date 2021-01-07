#Initialize default properties
$p = $person | ConvertFrom-Json;
$m = $manager | ConvertFrom-Json;
$success = $False;
$auditMessage = "for person $($p.DisplayName)";

function New-RandomPassword($PasswordLength)
{
    if($PasswordLength -lt 4) {$PasswordLength = 4}
        
    # Used to store an array of characters that can be used for the password
    $CharPoolLower = New-Object System.Collections.ArrayList
    $CharPoolUpper = New-Object System.Collections.ArrayList
    $CharPoolSpecial = New-Object System.Collections.ArrayList
    $CharPoolNumber = New-Object System.Collections.ArrayList

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
    $rand=New-Object System.Random;
        
    # Generate password by appending a random value from the array list until desired length of password is reached
    1..$UpperCount | foreach { $password = $password + $CharPoolUpper[$rand.Next(0,$CharPoolUpper.count)] }  
    1..$SpecialCount | foreach { $password = $password + $CharPoolSpecial[$rand.Next(0,$CharPoolSpecial.count)] }  
    1..$NumberCount | foreach { $password = $password + $CharPoolNumber[$rand.Next(0,$CharPoolNumber.count)] } 
    1..$PasswordLength | foreach { $password = $password + $CharPoolLower[$rand.Next(0,$CharPoolLower.count)] }   
        
    #print password
    $password = ($password -split '' | Sort-Object {Get-Random}) -join ''
    $password;
}


#Change mapping here
$account = [PSCustomObject]@{
    password = New-RandomPassword(8);
}

 
$success = $True;
$auditMessage = "for person $($p.DisplayName)";

#build up result
$result = [PSCustomObject]@{ 
    Success= $success;
    AccountReference= $account.password;
    AuditDetails=$auditMessage;
        Account = $account;
    ExportData = [PSCustomObject]@{
            Password = $account.password;
    }
};


#send result back
Write-Output $result | ConvertTo-Json -Depth 10
