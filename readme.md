# ReSharper external annotations plugin for ASP.NET WebApi 2

Marks `HttpGetAttribute`, `HttpPostAttribute` and other `Http*Attributes` with `MeansImplicitUseAttribute`.
So ReSharper no longer suggests to remove _unused_ WebApi methods.

Also marks `ApiController` with `UsedImplicitlyAttribute(ImplicitUseKindFlags.Access)` to prevent warning _class MyController is never instantiated_ when `MyController` is inherited from `ApiController`.

Tested with Resharper 9.0 and Visual Studio 2013.

# Installation note
- Clean ReSharper project cache _Resharper->Options->Environment->General->Clear Caches_.
- Restart Visual Studio.

https://resharper-plugins.jetbrains.com/packages/WebApi.Annotations/
