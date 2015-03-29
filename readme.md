# ReSharper external annotations plugin for ASP.NET WebApi 2

Simple example, that explains everything

#### Before
![Code Issues without external annotations](https://github.com/The-Smallest/resharper-webapi-annotations/wiki/images/before.png "Before")

#### After
![No Code Issues after](https://github.com/The-Smallest/resharper-webapi-annotations/wiki/images/after.png "After")

### Annotations for _System.Web.Http_ 

Core WebApi functionality is located in _System.Web.Http.dll_ from [Microsoft.AspNet.WebApi.Core Nuget](http://www.nuget.org/packages/Microsoft.AspNet.WebApi.Core/).


Marks `HttpGetAttribute`, `HttpPostAttribute` and other `Http*Attributes` with `MeansImplicitUseAttribute`.
So ReSharper no longer suggests to remove _unused_ WebApi methods.

Also marks `ApiController` with `UsedImplicitlyAttribute(ImplicitUseKindFlags.Access)` to prevent warning _class MyController is never used_ when `MyController` is inherited from `ApiController`.

Tested with Resharper 9.0 and Visual Studio 2013.

### Installation note
- Clean ReSharper project cache _Resharper->Options->Environment->General->Clear Caches_.
- Restart Visual Studio.

https://resharper-plugins.jetbrains.com/packages/WebApi.Annotations/
