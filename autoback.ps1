$pName = Get-Content data.d;
if (Test-Path $pName) {
    echo ziping $pName ...
    $shell_app=new-object -ComObject shell.application
    $zName = "test.zip"
    $zip_file = $shell_app.namespace((Get-Location).Path + "\$zName")
    $destination = $shell_app.namespace((Get-Location).Path)
    $destination.Copyhere($zip_file.items())  

}else{
    echo incorect path!;
}

/*
    $shell_app=new-object -ComObject shell.application
    $zName = "test.zip"
    $zip_file = $shell_app.namespace((Get-Location).Path + "\$zName")
    $destination = $shell_app.namespace((Get-Location).Path)
    $destination.Copyhere($zip_file.items())

*/