<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="psoptix.com.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/responsiveslides.js"></script>
	<script>
	    $(function () {
	        $("#slider").responsiveSlides({
	            auto: true,
	            pager: false,
	            nav: true,
	            speed: 500,
	            maxwidth: 960,
	            namespace: "centered-btns"
	        });
	    });
	</script>
	
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: justify;
        }
        .auto-style3 {
            padding-bottom: 8px;
            text-align: justify;
        }
        .auto-style4 {
            font-style: normal;
            color: #0000FF;
        }
        .auto-style5 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="body2">
		<div class="main zerogrid">
<!-- content -->
			<article id="content3">
				<div class="wrapper row">
					<div class="slider">
					  	<div class="rslides_container">
							<ul class="rslides" id="slider">
								<li><img src="images/information_technology2.jpg" alt=""></li>
								<li><img src="images/shutterstock_122435878.jpg" alt=""></li>
								<li><img src="images/slide-52.jpg" alt=""></li>
							</ul>
						</div>
					</div>
				</div>
			</article>
<!-- content end-->
		</div>
	</div>
	<div class="body3">
		<div class="main zerogrid">
<!-- content -->
			<article id="content">
				<div class="wrapper row">
					<section class="col-1-3 productindex">
						<div class="wrap-col">
							<h3><span class="dropcap">P</span><span class="text">PALeyeD</span></h3>
							<p class="pad_bot1">PAL Symbol recognition and search</p>
							<a href="PALEyeD.aspx" class="link1">Read More</a>
						</div>
					</section>
					<section class="col-1-3 productindex">
						<div class="wrap-col">
							<h3><span class="dropcap">B</span><span class="text">Blue2UV</span></h3>
							<p class="pad_bot1">Blue Light and UV sensors ...</p>
							<a href="Blue2UV.aspx" class="link1">Read More</a>
						</div>
					</section>
					<section class="col-1-3 productindex">
						<div class="wrap-col">
							<h3><span class="dropcap">O</span><span class="text">OpticalEyeCoach</span></h3>
							<p class="pad_bot1"> Optician Tools Kit, Everthings ...</p>
							<a href="OpticalCoatch.aspx" class="link1">Read More</a></div>
					</section>
				</div>
				<div class="wrapper row">
					<section class="col-3-4">
						<div class="wrap-col">
							<h2 class="under" style="font-size: xx-large; height: 34px; width: 630px;">Welcome, dear visitor!</h2>
							<div class="wrapper">
								<figure class="left marg_right1"><img src="images/page1_img1.jpg" alt=""></figure>
								<p class="auto-style3">Welcome to Perfect Squares Optix, We are a group of passionate professionals who is constantly looking&nbsp; to create innovative products that will make everyday life simple.</p>
								<p class="auto-style2">
										Our goal is to enhance, and make life more efficient. With that goal in mind we continuously working on and try to discover new solutions from ther simple and to complex problem that we face as a society.</p>
                                <p class="auto-style2">
										&quot;Innovation in products and business models is more important than ever for businesses to stay relevant. We concentrate on delivering innovative products and services while you concentrate on your business&quot;&nbsp; <span class="auto-style5"><strong>Sameer Cholayil</strong></span> -<span class="auto-style4"> Perfect Squares VP Of Engineering</span></p>
							</div>
						</div>
					</section>
					<section class="col-1-4">
						<div class="wrap-col">
							<h2 class="auto-style1">Inspiration</h2>
                            <p class="auto-style1">&nbsp;</p>
							<div class="testimonials">
							<div id="testimonials">
							  <ul>
								<li>
									<div>
										“Don&#39;t worry about what anybody else is going to do... The best way to predict the future is to invent it..” 
									</div>
                                     <span><strong class="color1">Alan Curtis Kay,</strong>
                                      <br></span>
									</li>
                                  <li>
                                      <div>
										“Our business model is to solve your problems using the best suitable technology.”
									  </div>
                                      <span><strong class="color1">Vinod Patnaik, GM</strong>
                                      <br>PS India Division</span> </li>
                                  <li>
                                      <div>
										“It only takes one idea to change the world.”
									  </div>
                                      <span><strong class="color1">Madison Tran,</strong>
                                      <br>PS Marketing Director</span> </li>
							  </ul>
							</div>
							<a href="#" class="up"></a>
							<a href="#" class="down"></a>
							</div>
						</div>
					</section>
				</div>
			</article>
		</div>
	</div>
</asp:Content>
