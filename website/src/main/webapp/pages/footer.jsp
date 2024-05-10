<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
 <style>
.foot{
    font-family:Verdana, Geneva, Tahoma, sans-serif ;
    color: #fff;
    height: 300px;
    border: 2px solid black;
    border-radius: 0px;
    width: 98%;
    margin: auto;
    position: relative;
    justify-content: center;
    align-items: center;
    margin-bottom: 10px;
    padding: 15px;
}
.container{
    display: flex;
    justify-content: space-between;
    margin-top: 8px;
}

.one ,.two,.three{
background-color: white;
    text-align: center;
    display: inline-block;
    width: 30%;
    height: 240px;
}

footer{
    margin-top: 100px;
    user-select: none;
    bottom: 0;
}
.one img {
    display: inline-block;
    height: 30px;
    margin: 15px 0px 12% -130px;
 
}
.one ul a{
    color: black;
    position: relative;
    list-style: none;
    text-decoration: none;
    margin: 20px;
    margin-top: auto;
}
.one ul li{
    border: 2px solid black;
    border-radius: 30px;
    line-height: 40px;
    align-items: center;
    width: fit-content;
    display: inline-block;
    margin-right: 7px;
    margin-bottom: 10%;
    color: black;
    
}
.one p{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: rgb(51, 49, 49,.7);
}
.footlogo{
   float: left;
   margin-left: 35px;
   display: flex;
   flex-direction: column;
}
.footlogo svg{
    width: fit-content;
    
    margin: 0px -70px 29px 30px;
    height: fit-content;
    display: inline-block;
}
.textf{
    display: inline-block;
    /* background-color: chartreuse; */
    color:black;
    margin-bottom: 40px;
}
.textf p{
    margin:3px 50px 40px 0;
    text-align: left;
}
.contents{
    position: relative;
    /* background-color: blue; */
    top: 30px;
 

}
.three p{
    text-align: justify;
    width: 340px;
    text-align: justify;
    color: black;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
    </style>
<body> 
    <footer>
        <div class="foot">
            <div class="container">
                <div class="one">
                    <img src="../images/pixelspeak-high-resolution-logo-transparent.png" alt="">
                    <ul>
                        <li><a href="main.jsp">Home</a></li>
                        <li><a href="">Product</a> </li>
                        <li><a href="AboutUs.jsp">About Us</a></li>
                        <li><a href="">Profile</a></li>
                     </ul>
                     <p>Copyright &copy; 2024 | Pixel Developers | All rights reserved.</p>
                </div>
                <div class="two">
                    <div class="contents">
                        <div class="textf">
                            <p>KamalPokhari , Kathmandu </p>
                            <p>+977 9803184146</p>
                            <p> <a href="mailto:aagamanmainali35@gmail.com" target="_blank" style="text-decoration: none;"><span style="color: rgb(161, 49, 49);">Pixels100@gmail.com</span></a></p>
                        </div>
                        <div class="footlogo">
                            <svg name='Address'width="27px" height="27px" viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <title>location-filled</title> <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> <g id="location-outline" fill="#000000" transform="translate(106.666667, 42.666667)"> <path d="M149.333333,7.10542736e-15 C231.807856,7.10542736e-15 298.666667,66.8588107 298.666667,149.333333 C298.666667,176.537017 291.413333,202.026667 278.683512,224.008666 C270.196964,238.663333 227.080238,313.32711 149.333333,448 C71.5864284,313.32711 28.4697022,238.663333 19.9831547,224.008666 C7.25333333,202.026667 2.84217094e-14,176.537017 2.84217094e-14,149.333333 C2.84217094e-14,66.8588107 66.8588107,7.10542736e-15 149.333333,7.10542736e-15 Z M149.333333,85.3333333 C113.987109,85.3333333 85.3333333,113.987109 85.3333333,149.333333 C85.3333333,184.679557 113.987109,213.333333 149.333333,213.333333 C184.679557,213.333333 213.333333,184.679557 213.333333,149.333333 C213.333333,113.987109 184.679557,85.3333333 149.333333,85.3333333 Z" id="Combined-Shape"> </path> </g> </g> </g></svg>
                            <svg name='contact'fill="#000000" width="28px" height="28px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M11.748 5.773S11.418 5 10.914 5c-.496 0-.754.229-.926.387S6.938 7.91 6.938 7.91s-.837.731-.773 2.106c.054 1.375.323 3.332 1.719 6.058 1.386 2.72 4.855 6.876 7.047 8.337 0 0 2.031 1.558 3.921 2.191.549.173 1.647.398 1.903.398.26 0 .719 0 1.246-.385.536-.389 3.543-2.807 3.543-2.807s.736-.665-.119-1.438c-.859-.773-3.467-2.492-4.025-2.944-.559-.459-1.355-.257-1.699.054-.343.313-.956.828-1.031.893-.112.086-.419.365-.763.226-.438-.173-2.234-1.148-3.899-3.426-1.655-2.276-1.837-3.02-2.084-3.824a.56.56 0 0 1 .225-.657c.248-.172 1.161-.933 1.161-.933s.591-.583.344-1.27-1.906-4.716-1.906-4.716z"></path></g></svg>
                            <svg name='gmail' height="28px" width="28px" version="1.1" id="_x32_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <style type="text/css"> .st0{fill:#000000;} </style> <g> <path class="st0" d="M66.734,401.582c-5.902,0-11.421-1.551-16.135-4.277l139.049-121.182l12.979,11.294 c10.863,9.44,24.46,14.22,37.93,14.22c13.536,0,27.133-4.78,37.996-14.22l12.973-11.294l47.074,41.038 c5.324-8.971,11.939-17.054,19.613-24.038l-43.093-37.547L446.977,140.54v127.084c12.26,2.236,23.756,6.62,34.136,12.75V124.834 c0-4.404-0.43-8.762-1.236-12.979c-2.175-10.925-7.016-20.922-13.778-29.181c-1.43-1.8-2.921-3.411-4.54-5.022 c-11.978-12.046-28.804-19.56-47.182-19.56H66.734c-18.377,0-35.136,7.514-47.182,19.56c-1.612,1.611-3.102,3.222-4.532,5.022 c-6.768,8.259-11.609,18.256-13.717,29.181C0.43,116.072,0,120.43,0,124.834v244.162c0,9.367,1.987,18.371,5.526,26.502 c3.283,7.762,8.131,14.785,14.026,20.673c1.491,1.491,2.981,2.86,4.593,4.224c11.549,9.561,26.454,15.336,42.589,15.336h280.481 c-8.118-10.032-14.436-21.567-18.412-34.15H66.734z M43.697,101.797c5.962-5.956,13.973-9.561,23.037-9.561h347.645 c9.065,0,17.142,3.606,23.037,9.561c1.047,1.061,2.042,2.243,2.921,3.418L258.128,264.017c-5.029,4.405-11.24,6.581-17.571,6.581 c-6.271,0-12.476-2.176-17.572-6.581L40.85,105.148C41.656,103.973,42.65,102.858,43.697,101.797z M34.136,368.997V140.479 L166,255.51L34.203,370.42C34.136,369.984,34.136,369.494,34.136,368.997z"></path> <path class="st0" d="M428.285,286.484c-46.235,0-83.702,37.48-83.702,83.715c0,46.228,37.467,83.708,83.702,83.708 c46.242,0,83.715-37.48,83.715-83.708C512,323.963,474.527,286.484,428.285,286.484z M441.23,410.236h-20.331v-56.421h-0.242 l-14.744,6.963l-3.076-17.82l20.654-9.441h17.74V410.236z"></path> </g> </g></svg>
                        </div>
                    </div>
                </div>
                <div class="three">
                        <p><Span style="color: rgb(184, 42, 42); font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif ; font-size: 30px;">About Us : </Span></p>
                        <br><p>"Pixel Peak, your go-to source for premium cameras. We cater to both photography enthusiasts and professionals, offering a carefully curated selection of top-notch equipment. With a commitment to innovation and customer satisfaction!"</p>
                        <br>
                    </div>
            </div>
        </div>
    </footer>
</body>
</html>