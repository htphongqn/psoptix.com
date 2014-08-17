<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="psoptix.com.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <script>
        $(document).ready(function () {
            $('#menu li').removeClass('active');
            $('#menu #nav5').addClass('active');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="body3">
		<div class="main zerogrid">
<!-- content -->
			<article id="content">
				<div class="wrapper row">
					<section class="col-3-4">
					<div class="wrap-col">
						<h2 class="under">Contact form</h2>
						<div id="ContactForm">
						<div>
							<div  class="wrapper">
								<span>Your Name:</span>
								<input type="text" class="input" >
							</div>
							<div  class="wrapper">
								<span>Your City:</span>
								<input type="text" class="input" >
							</div>
							<div  class="wrapper">
								<span>Your E-mail:</span>
								<input type="text" class="input" >
							</div>
							<div  class="textarea_box">
								<span>Your Message:</span>
								<textarea name="textarea" cols="1" rows="1"></textarea>
							</div>
							<a href="#" onClick="document.getElementById('ContactForm').submit()">Send</a>
							<a href="#" onClick="document.getElementById('ContactForm').reset()">Clear</a>
						</div>
						</div>
					</div>
					</section>
					<section class="col-1-4">
					<div class="wrap-col">
						<%--<h2 class="under">Contacts</h2>
						<div id="address"><span>Country:<br>
								City:<br>
								Telephone:<br>
								Email:</span>
								610 S Industrial Blvd<br>
								Euless, TX 76040 - USA<br>
								972 822-9478<br>
								<a href="mailto:info@perfectsqs.com" class="color2">info@perfectsqs.com</a></div>--%>
						<h2 class="under">Miscellaneous</h2>
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium volupta- tum deleniti atque corrupti quos dolores et quas molestias excep- turi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum.</p>
					</div>
					</section>
				</div>

			</article>
		</div>
	</div>
</asp:Content>
