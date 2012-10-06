$a = Get-Process | ConvertTo-Html -Title "Process Table" -Body "<h2>Current Running Processes</h2>"
$red = $true

for($i = 0; $i -le $a.length; $i++){
    if($a[$i] -like "*<tr>*</tr>"){
        if($red){
            $a[$i].replace("<tr>","<tr bgcolor=FF8C00>")
            $red = $false;
         }else{
            $a[$i].replace("<tr>","<tr bgcolor=FFE4C4>")
            $red = $true;
         }         
     }else{
        $a[$i]
     }
}


