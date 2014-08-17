<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="psoptix.com.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $('#menu li').removeClass('active');
            $('#menu #nav4').addClass('active');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="body3">
        <div class="main zerogrid">
			<article id="content">
				<div class="wrapper">
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><span class="dropcap">P</span><span class="text">PALeyeD</span></h3>
							<figure><img src="images/no-image.png" alt="" style="float:left" width="250"></figure>
							<p class="pad_bot1" style="float:left;padding-left:15px">PAL Symbol recognition and search...</p>
							<div style="text-align:right;clear:both"><a href="PALEyeD.aspx" class="link1">Read More</a></div>
						</div>
					</div>
					</section>
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><span class="dropcap">B</span><span class="text">Blue2UV</span></h3>
							<figure><img src="images/blue_uv.jpg" alt="" style="float:left" /></figure>
							<p class="pad_bot1" style="float:left;padding-left:15px">Blue Light and UV sensors ...</p>
							<div style="text-align:right;clear:both"><a href="Blue2UV.aspx" class="link1">Read More</a></div>
						</div>
					</div>
					</section>
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><span class="dropcap">O</span><span class="text">OpticalEyeCoach</span></h3>
							<figure><img src="images/no-image.png" alt="" style="float:left" width="250"></figure>
							<p class="pad_bot1" style="float:left;padding-left:15px">Optician Tools Kit, Everthings ...</p>
							<div style="text-align:right;clear:both"><a href="OpticalCoatch.aspx" class="link1">Read More</a></div>
						</div>
					</div>
					</section>
                </div>
            </article>
        </div>
    </div>
</asp:Content>
