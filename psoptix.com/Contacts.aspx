<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="psoptix.com.Contacts" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
				<div class="wrapper row" style="margin-bottom:20px">
					<section class="col-3-4">
					<div class="wrap-col">
						<h2 class="under">Contact form</h2>
						<div id="ContactForm">
						<div>
							<div  class="wrapper">
								<span>Your Name:</span>
								<asp:TextBox ID="txtName" runat="server" type="text" class="input" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Required field!" ControlToValidate="txtName" Display="None" ValidationGroup="grcontact"></asp:RequiredFieldValidator>
                                <asp:validatorcalloutextender ID="rfvNameExt" runat="server" TargetControlID="rfvName">
                                </asp:validatorcalloutextender>
							</div>
							<div  class="wrapper">
								<span>Your City:</span>
								<asp:TextBox ID="txtCity" runat="server" type="text" class="input" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Required field!" ControlToValidate="txtCity" Display="None" ValidationGroup="grcontact"></asp:RequiredFieldValidator>
                                <asp:validatorcalloutextender ID="rfvCityExt" runat="server" TargetControlID="rfvCity">
                                </asp:validatorcalloutextender>
							</div>
							<div  class="wrapper">
								<span>Your E-mail:</span>
								<asp:TextBox ID="txtEmail" runat="server" type="text" class="input" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required field!" ControlToValidate="txtEmail" Display="None" ValidationGroup="grcontact"></asp:RequiredFieldValidator>
                                <asp:validatorcalloutextender ID="rfvEmailExt" runat="server" TargetControlID="rfvEmail">
                                </asp:validatorcalloutextender>

                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Please enter email!"  ControlToValidate="txtEmail" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ValidationGroup="grcontact"></asp:RegularExpressionValidator>
                                <asp:validatorcalloutextender ID="revEmailExt" runat="server" TargetControlID="revEmail">
                                </asp:validatorcalloutextender>
							</div>
							<div  class="textarea_box">
								<span>Your Message:</span>
								<asp:TextBox ID="txtMessage" runat="server" name="textarea" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Required field!" ControlToValidate="txtMessage" Display="None" ValidationGroup="grcontact"></asp:RequiredFieldValidator>
                                <asp:validatorcalloutextender ID="rfvMessageExt" runat="server" TargetControlID="rfvMessage">
                                </asp:validatorcalloutextender>
							</div>
							<asp:LinkButton ID="lkSend" runat="server" OnClick="lkSend_Click" ValidationGroup="grcontact">Send</asp:LinkButton>
							<asp:LinkButton ID="lkClear" runat="server" OnClick="lkClear_Click">Clear</asp:LinkButton>
						</div>
						</div>
					</div>
					</section>
				</div>

			</article>
		</div>
	</div>
</asp:Content>
