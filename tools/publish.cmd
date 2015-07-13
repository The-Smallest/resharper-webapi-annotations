if not exist ..\output mkdir ..\output

@echo Building version %1
NuGet.exe pack ..\src\WebApi.Annotations.nuspec -Version %1 -Verbosity Detail -OutputDirectory ..\output
@echo Pushing WebApi.Annotations.%1.nupkg
NuGet.exe push ..\output\WebApi.Annotations.%1.nupkg %2 -Source https://resharper-plugins.jetbrains.com