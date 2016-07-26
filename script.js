function blog()
{
    var xhttp =new XMLHttpRequest;
    xhttp.onreadystatechange = function()
    {
        if(xhttp.readyState == 4 && xhttp.status== 200 && document.getElementById("blog")!==null)
            {
                document.getElementById("blog").innerHTML=xhttp.responseText;
            }
            
    }
    xhttp.open("GET","blog.php",true);
    xhttp.send();
    
}
function search()
{
    xhttps = new XMLHttpRequest;
    xhttps.onreadystatechange = function()
    {
       if(xhttps.readyState == 4 && xhttps.status == 200 && document.getElementById("blogsearchbox")!==null)
       {
          document.getElementById("blogsearchbox").innerHTML = xhttps.responseText;
       }
    }
   xhttps.open("GET","search.php",true);
   xhttps.send();
}
     
/*function loadcomment()
{
    var xhttp = new XMLHttpRequest;
    xhttp.onreadystatechange = function()
    {
        if(xhttp.readyState == 4 && xhttp.status == 200 && document.getElementById("blog")!==null)
            {
                document.getElementById("commentbox").innerHTML=xhttp.responseText;
            }
    }
    xhttp.open("GET","",true);
    xhttp.send();
}*/
