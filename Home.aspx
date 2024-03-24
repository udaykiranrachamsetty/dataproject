<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amrita Final project</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Savage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->

    <!-- Bootstrap-Core-CSS -->
    <!--<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />-->
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <!-- //Fonts -->
</head>

<body>
    <!-- mian-content -->

        <!-- header -->

        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand fs-5" href="#">GROUP DATA SHARING</a>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ms-auto mb-10 mb-lg-3">
                        <li class="nav-item mx-2"> <!-- Added mx-2 for horizontal spacing -->
                            <a class="nav-link active fs-5" aria-current="page" href="home.aspx">Home</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link active fs-5" aria-current="page" href="GMLogin.aspx">Group Manager</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link active fs-5" href="UserLogin.aspx">Users</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link active fs-5" href="Cloud.aspx">Cloud</a>
                        </li>
                    </ul>
                    <span class="navbar-text">
                    </span>
                </div>
            </div>
        </nav>
        
        <!-- Add custom CSS for hover animation -->
        <style>
            .nav-item {
                transition: transform 0.3s;
            }
        
            .nav-item:hover {
                transform: translateY(-3px); /* Move the element up by 3px on hover */
            }
        </style>
        
        
                    <!-- //nav -->


    <!-- //header -->
    <div class="p-5 text-center bg-image rounded-3" style="
    background-image:url(https://static.vecteezy.com/system/resources/thumbnails/006/198/869/small/internet-security-protection-from-hacker-attacking-cyber-attack-and-network-security-concept-free-photo.jpg);height: 500px;">
    <div>
    <div class="d-flex justify-content-center align-items-center h-100">
      <div class="text-white">
        <h4 class="mb-3">Anonymous and UnTraceable Group Data
            Sharing in Cloud Computing</h4>
        <a class="btn btn-outline-light btn-lg" href="#!" role="button">Call to action</a>
      </div>
    </div>
    </div>
    </div>
   

    <!--// mian-content -->
    <!-- /grids-content -->
    <section class="banner-w3ls-bottom py-5" id="part">
        <div class="container py-lg-5">
            <div class="w3pvt-border-info text-center">
                <h4 class="title-w3ls">Abstract</h4>
                <p class="my-3" style="text-align:justify">Group data sharing in cloud environments has
become a hot topic in recent decades. With the popularity
of cloud computing, how to achieve secure and efficient data
sharing in cloud environments is an urgent problem to be solved.
In addition, how to achieve both anonymity and untraceability is
also a challenge in the cloud for data sharing. This paper focuses
on enabling data sharing and storage for the same group in the
cloud with high security and efficiency in an anonymous manner.
By leveraging the key agreement and the group signature, a novel
traceable group data sharing scheme is proposed to support
anonymous multiple users in public clouds. On the one hand,
group members can communicate anonymously with respect to
the group signature, and the real identities of members can be
traced if necessary. On the other hand, a common conference key
is derived based on the key agreement to enable group members
to share and store their data securely. Note that a symmetric
balanced incomplete block design is utilized for key generation,
which substantially reduces the burden on members to derive
a common conference key. Both theoretical and experimental
analyses demonstrate that the proposed scheme is secure and
efficient for group data sharing in cloud computing.</p>
            </div>
        </div>
    </section>

    <!-- Hero -->

<!-- Hero -->
    <!-- //grids-content -->
   
   
    <!-- copyright -->
    <div class="copy_right text-center py-3">
        <p>&nbsp;</p>

    </div>


    <footer class="bg-body-tertiary text-center text-lg-start">
        <!-- Grid container -->
        <div class="container p-4">
          <!--Grid row-->
          <div class="row">
            <!--Grid column-->
            <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
              <h5 class="text-uppercase">Hemanth Pulakandam</h5>
              <p>
               Department of Computer Science and Engineering in cyber security , Amrita School of Computing,  Amrita Vishwa Vidyapeetham
              </p>
            </div>
            <!--Grid column-->
      
            <!--Grid column-->
            <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
              <h5 class="text-uppercase">Velaga Sohith</h5>
              <p>
                Department of Computer Science and Engineering in cyber security , Amrita School of Computing,  Amrita Vishwa Vidyapeetham
              </p>
            </div>
            <!--Grid column-->
          </div>
          <!--Grid row-->
        </div>
        <!-- Grid container -->
      
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
          <p>Hemanth and Sohith</p>
         
        </div>
        <!-- Copyright -->
      </footer>
    <!-- //copyright -->


</body>

</html>
