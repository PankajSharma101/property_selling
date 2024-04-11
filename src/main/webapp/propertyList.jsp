<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>BRK AIIMERS</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
  
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
                    <div >
                        <img class="img-fluid" src="BRK AIMERS.png" alt="Icon" style="width: 250px; height: 250px;">
                    </div>
                    <h2 class="m-0 text-primary">BRK AIIMERS</h2>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.html" class="nav-item nav-link">Home</a>
                        <a href="propertyList.jsp" class="nav-item nav-link active">Property</a>
                        <a href="construction.jsp" class="nav-item nav-link">Construction</a>
                 
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                    <!-- <a href="" class="btn btn-primary px-3 d-none d-lg-flex">Add Property</a> -->
                </div>
            </nav>
        </div>
        <!-- Navbar End -->

<% 

 String b = null;
          String pt = null;
          String l = null;
          

 b = request.getParameter("b");
             pt = request.getParameter("t");
             l = request.getParameter("l");
          
    %>
    
        <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <!-- <h4 class="animated fadeIn mb-4 pb-2"> </h4> -->
                   <h4 class="animated fadeIn mb-4 pb-2">Achieve your Dreams that you haven't Expected.</h4>
                    <h2 class="display-5 animated fadeIn mb-4">Find A <span class="text-primary">Perfect Home</span> To Live With Your Family</h2>
                    <!-- <p class="animated fadeIn mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet
                        sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea elitr.</p>-->
                    <!-- <a href="" class="btn btn-primary py-3 px-5 me-3 animated fadeIn">Get Started</a>  -->
                </div>
                <div class="col-md-6 animated fadeIn">
                    <div class="owl-carousel header-carousel">
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/carousel-1.jpg" alt="">
                        </div>
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/carousel-2.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->



        <!-- Search Start -->
        <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                            <div class="col-md-4">
                                <form action="propertyList.jsp" method="post">
                                   <% if(b==null || b.equals("0"))
                                   {
                                   %>
                                <select class="form-select border-0 py-3" name ="b">
                                    <option value="0" selected >Budget</option>
                                    <option value="1">More than 1 Crore</option>
                                    <option value="2">Between 1 to 2 Crore</option>
                                    <option value="3">Between 2 to 3 Crore</option>
                                    <option value="4">Between 3 to 4 Crore</option>
                                    <option value="5">More than 4 Crore</option>
                                </select>
                                <%
                                    }else
{   
                                if(b.equals("1"))
                                   {
                                    %>
                                <select class="form-select border-0 py-3" name ="b">
                                    <option value="0" >Budget</option>
                                    <option value="1" selected>More than 1 Crore</option>
                                    <option value="2">Between 1 to 2 Crore</option>
                                    <option value="3">Between 2 to 3 Crore</option>
                                    <option value="4">Between 3 to 4 Crore</option>
                                    <option value="5">More than 4 Crore</option>
                                </select>
                                <%
                                }
                                if(b.equals("2"))
                                   {
                                   %>
                                <select class="form-select border-0 py-3" name ="b">
                                    <option value="0" >Budget</option>
                                    <option value="1">More than 1 Crore</option>
                                    <option value="2" selected >Between 1 to 2 Crore</option>
                                    <option value="3">Between 2 to 3 Crore</option>
                                    <option value="4">Between 3 to 4 Crore</option>
                                    <option value="5">More than 4 Crore</option>
                                </select>
                                <%
                                }
                                if(b.equals("3"))
                                   {
                                    %>
                                <select class="form-select border-0 py-3" name ="b">
                                    <option value="0" >Budget</option>
                                    <option value="1">More than 1 Crore</option>
                                    <option value="2">Between 1 to 2 Crore</option>
                                    <option value="3" selected>Between 2 to 3 Crore</option>
                                    <option value="4">Between 3 to 4 Crore</option>
                                    <option value="5">More than 4 Crore</option>
                                </select>
                                <%
                                }
                                if(b.equals("4"))
                                   {
                                   %>
                                <select class="form-select border-0 py-3" name ="b">
                                    <option value="0" >Budget</option>
                                    <option value="1">More than 1 Crore</option>
                                    <option value="2">Between 1 to 2 Crore</option>
                                    <option value="3">Between 2 to 3 Crore</option>
                                    <option value="4" selected>Between 3 to 4 Crore</option>
                                    <option value="5">More than 4 Crore</option>
                                </select>
                                <%
                                }
                                if(b.equals("5"))
                                   {
                                    %>
                                <select class="form-select border-0 py-3" name ="b">
                                    <option value="0" >Budget</option>
                                    <option value="1">More than 1 Crore</option>
                                    <option value="2">Between 1 to 2 Crore</option>
                                    <option value="3">Between 2 to 3 Crore</option>
                                    <option value="4">Between 3 to 4 Crore</option>
                                    <option value="5" selected>More than 4 Crore</option>
                                </select>
                                <%
                                }
}
                                            %>
                            </div>
                            <div class="col-md-4">
                                  <% if(pt==null || pt.equals("0"))
                                   {
                                   %>
                                <select class="form-select border-0 py-3" name = "t">
                                    <option value ="0" selected>Property Type</option>
                                    <option value="1">Residential</option>
                                    <option value="2">Commercial</option>
                                    <option value="3">Industrial Properties</option>
                                </select>
                                   <%
                                       }
                                        else
{
                                       if(pt.equals("1"))
                                        {
                                       %>
                                        <select class="form-select border-0 py-3" name = "t">
                                    <option value ="0">Property Type</option>
                                    <option value="1" selected>Residential</option>
                                    <option value="2">Commercial</option>
                                    <option value="3">Industrial Properties</option>
                                </select>
                                   <%
                                       }
                                       if(pt.equals("2"))
                                        {
                                       %>
                                        <select class="form-select border-0 py-3" name = "t">
                                    <option value ="0">Property Type</option>
                                    <option value="1">Residential</option>
                                    <option value="2" selected>Commercial</option>
                                    <option value="3">Industrial Properties</option>
                                </select>
                                   <%
                                       }
                                       if(pt.equals("3"))
                                        {
                                       %>
                                       <select class="form-select border-0 py-3" name = "t">
                                    <option value ="0">Property Type</option>
                                    <option value="1">Residential</option>
                                    <option value="2">Commercial</option>
                                    <option value="3" selected>Industrial Properties</option>
                                </select>
                                   <%
                                       }
}
                                       %>

                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control border-0 py-3" placeholder="Location" name ="l">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button  type="submit" class="btn btn-dark border-0 w-100 py-3">GO</button>
                    </div>
                </div>
                </form>

            </div>
        </div>
        <!-- Search End -->

        <!-- Property List Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5 align-items-end">
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                            <h1 class="mb-3">Property Listing</h1>
                            <p>Let Us Guide You to Extraordinary Properties - Experience the Art of Finding Your Ideal Space.</p>
                        </div>
                    </div>
                   
                </div>
                <div class="tab-content">
                     <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                <% 
                    
                    
                     String budget1 = null;
          String propertyType1 = null;
          String location1 = null;
        // Check if the form was submitted and the parameters are available
       
            // Get the values from the form
            
            
             
                   
                    
            String dataFilePath = "data1.txt";
            String line;
            int i =1;
            
            
            try (BufferedReader reader = new BufferedReader(new FileReader(dataFilePath))) {
                while ((line = reader.readLine()) != null) {
                    String[] entryData = line.split("\\|");
                    String imageFileName = entryData[0];
                    String type = entryData[1];
                   
                    String propertyType = entryData[2];
                    String budget = entryData[3];
                    String location = entryData[4];
                    
                    
                    String title = entryData[5];
                    String content = entryData[6];
                     budget1 = request.getParameter("b");
             propertyType1 = request.getParameter("t");
             location1 = request.getParameter("l");
            
            
                    
                    if( ((budget1 == null)&& (location1 == null) && (propertyType1==null) || (budget1.equals("0")) &&(location1.equals("0")) && (propertyType1.equals("0"))  ) )
                    {
                    budget1 = budget;
                    location1= location;
                    propertyType1=propertyType;
                    
                    }
                    
                    
                    if( (budget.equals(budget1))|| ( location.equals( location1)) || (propertyType.equals(propertyType1) ) )
                    {

        %>
        
                
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="upload\<%=imageFileName%>" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3"><%= type %></div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3"><%= propertyType %></div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <!-- <h5 class="text-primary mb-3">$12,345</h5> -->
                                        <h2><%= title %></h2>
                                        <p><%= content %></p>
                                    </div>
                                    <!-- <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div> -->
                                </div>
                            </div>
                            <!-- <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                                <a class="btn btn-primary py-3 px-5" href="property-list.html">Browse More Property</a>
                            </div> -->
                        
                   
                            <%        
                                }  
                                                      
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
         </div>
                     </div> 
              </div>             
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Property List End -->


        

       
         <!-- Footer Start -->
         <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <!-- <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p> -->
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9914814433</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9417470077</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>brk.aiimers@gmail.com</p>
                        <!-- <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div> -->
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <!-- <a class="btn btn-link text-white-50" href="">About Us</a> -->
                        <a class="btn btn-link text-white-50" href="contact.html">Contact Us</a>
                        <!-- <a class="btn btn-link text-white-50" href="">Our Services</a> -->
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">BRK AIIMERS</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer author?s credit link/attribution link/backlink. If you'd like to use the template without the footer author?s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							<p class="border-bottom" >Designed By : srishprogrammingworld@gmail.com</p>
                        </div>
                        <!-- <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Help</a>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
