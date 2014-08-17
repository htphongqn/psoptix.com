<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="psoptix.com.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $('#menu li').removeClass('active');
            $('#menu #nav3').addClass('active');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="body3">
		<div class="main zerogrid">
			<article id="content">
				<div class="wrapper row">
					<section class="col-full">
					<div class="wrap-col">
						<h2 class="under">About Us</h2>
						<div id="AboutUS">
                            <span style="color:red">Updating...</span> (Talk about the company's goal, mission statement, how the company came about, why they got together, how they shared a common goal.)
						</div>
					</div>
					</section>
				</div>

			</article>
		</div>
	</div>
</asp:Content>
