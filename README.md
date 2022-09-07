<h1>CMPG-323-Project-2</h1>
<p>Project 2 for CMPG 323. In this project we will be designing an API.</p>
<p>
    The API will allow the future development of an website/web app which uses this API <br>
    to Get Post and Remove data from the Connected Office Database
</p>
<h1>I will be incorporating CRUD (Create Read Update Delete) as the operations available</h1>
<h1>This project will reach it's end in 2022-09-08</h1>
<h1>API Properties</h1>
<p>
    The API will be created using C# .Net Core Web API. <br>
    For documentation the API will be incorporating swagger to create <br>
    and deploy the documentation. <br>
</p>

<h1>API User Manual</h1>
<h2>API Properties</h2>
<h3>Access</h3>
<a href="https://project2apiconnectedoffice.azurewebsites.net/swagger/index.html">Swagger Documentation Can be found here</a>
<ul>
    <li>Only Registered Users can register Admins</li>
    <li>All Get End points that have been made available are unrestricted</li>
    <li>All other endpoints require atleast base level authentication via a Json Web Token</li>
    <li>Users can register via the Register End point available under Authentication</li>
    <li>Each Token is only valid for 1 hour</li>
</ul>
<h3>Callable HTTP Requests:</h3>
<h4>All GETS</h4>
<ul>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Categories</li>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Devices</li>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Zones</li>
</ul>
<h4>All GETS by ID</h4>
<ul>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Categories/{ID}</li>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Devices/{ID}</li>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Zones/{ID}</li>
</ul>
<img src="https://mfdot.com/API.drawio.svg" alt="" srcset=""><br>
<!-- ![API drawio](https://user-images.githubusercontent.com/74509303/187557775-805d6391-8118-4870-897e-4ebd9d3fc2fb.svg) -->


<h1>Database Properties</h1>
<p>
    The database will be running on Microsoft SQL Server. Allowing me to use the <br>
    Microsoft Entity framework. <br>
    <img src="https://mfdot.com/Database%20ERD.drawio.svg">
<!--     ![Database ERD drawio](https://user-images.githubusercontent.com/74509303/187557724-ee264cae-5d52-4bb6-b692-6e4cbd690392.svg) -->

</p>

<h1>There will be 6 Branches:</h1>
<ul>
    <li>Main: The active branch which holds the most stable version</li>
    <li>Hotfix: This branch is there for small and quick bug patches</li>
    <li>Development: This branch is there for feature development and testing. This branch has been depricated</li>
    <li>Basic API: This branch would have been the base to test and configure Swagger</li>
    <li>Swagger Dev: The original branch to test and configure Swagger</li>
    <li>Swagger Inject: Based on the basic API branch is where Swagger was added after having a successfull scaffold build</li>
</ul>
<img src="https://mfdot.com/BranchesProject2.drawio.svg" alt="" srcset="">

<h1>Progress report</h1>
<p>
    🎈2022-08-29: <br>
    ✅Created Azure Database<br>
    ✅Created Local API<br>
    ✅Created Local Database<br>
    ✅Connected Local API to Local database<br>
    ❎Created Published API to Azure<br>
    ❎Added JWT<br>
    ❎Added API Manager<br>
    <br>
    🎈2022-08-31: <br>
    ✅Created Azure Database<br>
    ✅Created Local API<br>
    ✅Created Local Database<br>
    ✅Connected Local API to Local database<br>
    ✅Created Published API to Azure<br>
    ❎Added JWT<br>
    ❎Added API Manager<br>
    <br>
    🎈2022-09-05: <br>
    ✅Created Azure Database<br>
    ✅Created Local API<br>
    ✅Created Local Database<br>
    ✅Connected Local API to Local database<br>
    ✅Created Published API to Azure<br>
    ✅Added JWT<br>
    ❎Added API Manager<br>
</p>

<h1>Reference List:</h1>
<div style="padding: 20px;">
    <h3>Base project research from most to least impactful</h3>
    <ul>
        <li><a href="https://www.toptal.com/developers/gitignore">Setting up the basics of my gitignore</a></li>
        <li><a href="https://www.c-sharpcorner.com/article/enable-cors-consume-web-api-by-mvc-in-net-core-4/">Adding CORS support for API Calls cross Domains</a></li>
        <li><a href="https://docs.google.com/document/d/1AMr_Gf4FEWC4N53Yea0k4makXSRpV2yIio3zYoHMHpQ/edit?usp=sharing">Custom Compiled Doc Based on All Lower References</a></li>
        <li><a href="https://efundi.nwu.ac.za/access/content/group/b4bd0272-e3c3-4151-b9ce-3888cdadc374/Slides/04%20Introduction%20to%20Cloud%20and%20API%20Security/04%20Intro%20to%20Cloud.pptx">Video tutorials provided in slides: 04 Intro to Cloud.pptx</a></li>
        <li><a href="https://efundi.nwu.ac.za/access/content/group/b4bd0272-e3c3-4151-b9ce-3888cdadc374/Training/ASP.NET%20Core%20security%20guidance%2025%20August.docx">ASP.NET Core security guidance 25 August.docx</a> </li>
        <li><a href="https://www.dropbox.com/sh/p8fiokfpiqv4gud/AAD1lymwb3IfLp_IWU87FIf3a/05%20CMPG%20323%20-%20CLOUD%20and%20API%20Security%2025%20August.mp4?dl=0">Class Presented on the 25th August by The lecturers of NWU</a></li>
        <li><a href="https://www.dropbox.com/sh/p8fiokfpiqv4gud/AABtdCqaDm1IkXXVKC0AUEDSa/06%20Cmpg%20323%20-%20Cloud%20And%20Api%20Hosting%201%20Sept.m4v?dl=0">Class of 1 September Hosted By Professor Marijke</a></li>
        <li><a href="https://www.dropbox.com/sh/p8fiokfpiqv4gud/AAD4KuOzucVO9K4hR2ts1R9ia/04%20CMPG%20323%20-%20API%20and%20ASP.NET%20Core%20demo%2018%20Aug.m4v?dl=0">04 CMPG 323 - API and ASP.NET Core demo 18 Aug.m4v</a></li>
        <li><a href="https://stackoverflow.com/questions/44379560/how-to-enable-cors-in-asp-net-core-webapi">A stackoverflow thread which helped me somewhat to setup my Cors</a></li>
        <li><a href="https://www.json.org/json-en.html">Learning to work with JSON</a></li>
        <li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal">How to manage my Resource Group</a></li>
        <li><a href="https://swagger.io/docs/specification/2-0/what-is-swagger/">Understand the purpose of swagger</a></li>
        <li><a href="https://efundi.nwu.ac.za/access/content/group/b4bd0272-e3c3-4151-b9ce-3888cdadc374/Training/ASP.NET%20Core%20guidance%2018%20August.docx">ASP.NET Core guidance 18 August.docx</a></li>
        <li><a href="https://stackoverflow.com/questions/7927230/remove-directory-from-remote-repository-after-adding-them-to-gitignore">Remove file which where supposed to be ignored</a></li>
        <li><a href="https://efundi.nwu.ac.za/access/content/group/b4bd0272-e3c3-4151-b9ce-3888cdadc374/Training/ASP.NET%20Core%20Azure%20guidance%201%20Sept.docx">ASP.NET Core Azure guidance 1 Sept.docx</a></li>
        <li><a href="https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-6.0&tabs=visual-studio">Tutorial: Create a web API with ASP.NET Core | Microsoft Docs</a></li>
        <li><a href="https://docs.microsoft.com/en-us/aspnet/visual-studio/overview/2013/aspnet-scaffolding-overview">The Purpose of Scaffolding</a></li>
        <li><a href="https://docs.microsoft.com/en-us/aspnet/core/tutorials/web-api-help-pages-using-swagger?view=aspnetcore-3.1">ASP.NET Core web API documentation with Swagger / OpenAPI</a></li>
        <li><a href="https://docs.microsoft.com/en-us/learn/paths/create-microservices-with-dotnet/">Create microservices with .NET and ASP.NET</a></li>
        <li><a href="https://docs.microsoft.com/en-us/aspnet/core/tutorials/web-api-javascript?view=aspnetcore-6.0">Connecting my javascript Website to my API</a></li>
        <li><a href="https://stackoverflow.com/questions/36975619/how-to-call-a-rest-web-service-api-from-javascript">Letting my Javascript interface with my API</a></li>
        <li><a href="https://developer.ibm.com/articles/what-is-curl-command/">Learning About cUrl</a></li>
        <li><a href="https://blog.openreplay.com/ajax-battle-xmlhttprequest-vs-the-fetch-api">The difference between Fetch and XMLHttpRequest</a></li>
        <li><a href="https://www.uuidgenerator.net/">Generation of UUIDs Version 4 to test POST functionality</a></li>
        <li><a href="https://www.redhat.com/en/topics/api/what-is-a-rest-api#:~:text=A%20REST%20API%20(also%20known,by%20computer%20scientist%20Roy%20Fielding.">Reading up about RESTful</a></li>
        <li><a href="https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository">How to remove accidentally Added Sensitive Data to Github</a></li>
    </ul>
</div>
