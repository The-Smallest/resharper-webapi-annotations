if not exist ..\output mkdir ..\output

NuGet.exe pack ..\src\WebApi.Annotations.nuspec -Version %1 -Verbosity Detail -OutputDirectory ..\output