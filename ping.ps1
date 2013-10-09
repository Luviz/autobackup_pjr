$a = New-Object System.Collections.ArrayList


for ($i =0 ;$i -le 225; $i++){
    $Pinger = New-Object system.Net.NetworkInformation.Ping
    $PC = "192.168.1.$i"

    try{
                $ErrorActionPreference = "Stop"
                $PingResult = $Pinger.send($PC)
                $ResultAddress = $PingResult.Address
                $PingStatus = $PingResult.Status

                $DNSObject = [System.Net.Dns]::GetHostEntry($PC).HostName

     }
     catch{

     }
     finally{
        Write-Host "$PC $PingStatus $PingHost $? $DNSObject"
        if ($PingResult.Status -eq "Success"){
            $a.add("$PC $PingStatus $PingHost $? $DNSObject")
        }
        $DNSObject = "";
     }
     
}

echo $a 
