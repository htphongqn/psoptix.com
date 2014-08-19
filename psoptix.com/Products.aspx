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
							<h3><a href="PALEyeD.aspx"><span class="dropcap">P</span><span class="text">PALeyeD</span></a>&nbsp;&nbsp;&nbsp; </h3>
							<figure><a href="PALEyeD.aspx"><img src="images/Pal2-2.png" alt="" style="float:left; width: 200px;" /></a></figure>
							<ul>
                                <li>
                                    <p class="pad_bot1" style="float:left;padding-left:15px; width: 635px;">
                                        <strong>PS PALeyeD uses a combination of:</strong></p>
                                </li>
                                <li>
                                    <p class="pad_bot1" style="float:left;padding-left:15px; width: 635px;">
                                        - Pattern/Symbol detect software</p>
                                </li>
                                <li>
                                    <p class="pad_bot1" style="float:left;padding-left:15px; width: 635px;">
                                        - Microscopic camera</p>
                                </li>
                            </ul>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 635px;">- Special design Pattern and lighting system</p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 635px;">- Match the symbol and display results.</p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 635px;">- Printing label with detail Manufacturer/Brand/Design</p>
							<%--<div style="text-align:right;clear:both"><a href="PALEyeD.aspx" class="link1">Read More</a></div>--%>
						</div>
					</div>
					</section>
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><a href="Blue2UV.aspx"><span class="dropcap">B</span><span class="text">Blue2UV</span></a></h3>
							<figure><a href="Blue2UV.aspx"><img src="images/blue_uv.jpg" alt="" style="float:left; width: 210px;" /></a></figure>
							<p class="pad_bot1" style="float:left;padding-left:15px; width: 613px;"><strong>Key Features:</strong></p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 613px;">- 2 AAA powered with Low power auto sleep - Long battery life</p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 613px;">- 7 Light level LED&quot;s for Blue light (blue color) level indication in standalone mode</p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 613px;">- 7 Light level LED&#39;s for UV (violet color) level indication in standalone mode</p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 613px;">- BLE and Bluetooth data transmission for interface with Apple and Android devices</p>
                            <p class="pad_bot1" style="float:left;padding-left:15px; width: 613px;">- Special UV sensor only sees light in the UVA-UVB region.</p>
							<%--<div style="text-align:right;clear:both"><a href="Blue2UV.aspx" class="link1">Read More</a></div>--%>
						</div>
					</div>
					</section>
                    <section class="col-full productindex">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3><a href="OpticalCoatch.aspx"><span class="dropcap">O</span><span class="text">OpticalEyeCoach</span></a></h3>
							<figure><a href="OpticalCoatch.aspx"><img src="images/coming.png" alt="" style="float:left; width: 208px;" /></a></figure>
							<p class="pad_bot1" style="float:left;padding-left:15px">Optician Tools Kit ..., <strong>Coming soon</strong></p>
							<%--<div style="text-align:right;clear:both"><a href="OpticalCoatch.aspx" class="link1">Read More</a></div>--%>
						</div>
					</div>
					</section>
                </div>
            </article>
        </div>
    </div>
</asp:Content>
