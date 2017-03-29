http://localhost:8080/offers/

http://www.coderanch.com/t/571265/Spring/ContextLoaderListener-web-xml

ContextLoaderListener is a ServletListener. So in the JSP/Servlet spec a Servlet Listener gets called by the container when certain events occur. 
In this case it gets called right after when the ServletContext is created for the web application. 
When it gets called, inside the ContextLoaderListener is code to create/instantiate an ApplicationContext and load in the xml file you set with the context-param name and value tags. 
In those xml files you define your middle tier beans only. No Web Tier beans should be in the xml file/files that is loaded by the ContextLoaderListener.

The DispatcherServlet in its init method also creates an ApplicationContext, 
but this one should load in only the Web Tier beans like your Controllers, ViewResolvers, MappingHandlers etc.

So the reason why you do this is to separate the web tier from the middle tier. 
The web tier beans can see the middle tier beans, but not the other way around. 

...config/dao-context.xml
ContextLoaderListener >>  xml file you set with the context-param >> ApplicationContext >> middle tier beans only

offers-servlet.xml
DispatcherServlet >> ApplicationContext >> Web Tier beans like your Controllers, ViewResolvers, MappingHandlers

https://www.udemy.com/javaspring/learn/v4/overview
with facebook login