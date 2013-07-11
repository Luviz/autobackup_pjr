$pName = Get-Content data.d;
$pwd_const = $pwd
if (Test-Path $pName) {
    $timestamp = Get-Date -Format o | foreach {$_ -replace ":", "_"}
    $time = $timestamp.Remove($timestamp.IndexOf('.'))
    echo $time
    mkdir $time
    cd $pwd_const\$time
    echo "cpi -Recurse $pName ..."

    cpi -Recurse $pName
    cd $pwd_const
}else{
    echo incorect path!;
}
