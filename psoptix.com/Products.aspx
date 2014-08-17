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
							<h3><span class="dropcap">P</span>PALeyeD</h3>
							<%--<figure><img src="images/CaughtCoding.jpg" alt=""></figure>--%>
							<p class="pad_bot1">PAL Symbol recognition and search...</p>
							<div style="text-align:right"><a href="PALEyeD.aspx" class="link1">Read More</a></div>
						</div>
					</div>
					</section>
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><span class="dropcap">B</span>Blue2UV</h3>
							<%--<figure><img src="images/CaughtCoding.jpg" alt=""></figure>--%>
							<p class="pad_bot1">Blue Light and UV sensors ...</p>
							<div style="text-align:right"><a href="Blue2UV.aspx" class="link1">Read More</a></div>
						</div>
					</div>
					</section>
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><span class="dropcap">O</span>OpticalEyeCoach</h3>
							<%--<figure><img src="images/CaughtCoding.jpg" alt=""></figure>--%>
							<p class="pad_bot1">Optician Tools Kit, Everthings ...</p>
							<div style="text-align:right"><a href="OpticalCoatch.aspx" class="link1">Read More</a></div>
						</div>
					</div>
					</section>
                </div>
            </article>
        </div>
    </div>
</asp:Content>
