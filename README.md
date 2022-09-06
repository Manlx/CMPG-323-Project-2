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
    <li></li>
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
<h4>All PUTS by ID</h4>
<ul>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Categories/{ID}</li>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Devices/{ID}</li>
    <li>https://project2apiconnectedoffice.azurewebsites.net/api/Zones/{ID}</li>
</ul>
<h4>All DELETE by ID Using CURL</h4>
curl -X 'DELETE' \
  'https://project2apiconnectedoffice.azurewebsites.net/api/Categories/5f291fc8-2e31-11ed-a261-0242ac120002' \
  -H 'accept: text/plain' \
  -H 'Authorization: Bearer {TOKEN}'
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
    <a href="https://developer.ibm.com/articles/what-is-curl-command/">Learning About cUrl</a>
    <h4>Base Project Setup</h4>
    <ul>
        <li>ASP.NET Core security guidance 25 August.docx</li>
    </ul>
</div>
