<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="psoptix.com.admin.Contacts" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="tablesort/green/style.css" rel="stylesheet" />
    <script src="tablesort/jquery-latest.js"></script>
    <script src="tablesort/jquery.tablesorter.js"></script>
    <script src="tablesort/jquery.tablesorter.pager.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#ContentMain_gvContacts").tablesorter({
                headers: {
                    6: {
                        sorter: false
                    }
                }
            })
            .tablesorterPager({ container: $("#pager") });
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div id="Contacts">        
        <h2>Management Contact Page</h2>
        <p>Here, All contacts of website will display.</p>
        <div>
            <table align="center" style="margin:15px auto 15px auto">
                <tr>
                    <td>From Date</td>
                    <td>To Date</td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtFromDate" runat="server" placeholder="mm/dd/yyyy" CssClass="TextBox"></asp:TextBox>
                        <asp:CalendarExtender ID="txtFromDate_CalendarExtender" runat="server" CssClass="orange" Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtFromDate">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        <asp:TextBox ID="txtToDate" runat="server" placeholder="mm/dd/yyyy" CssClass="TextBox"></asp:TextBox>
                        <asp:CalendarExtender ID="txtToDate_CalendarExtender" runat="server" CssClass="orange" Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtToDate">
                        </asp:CalendarExtender>
                    </td>
                    <td colspan="6" align="center"><asp:Button ID="btnFilter" runat="server" CssClass="button" Text="Filter" OnClick="btnFilter_Click" /></td>
                </tr>
            </table>
        </div>
        <div style="padding-bottom:20px">
            <asp:GridView ID="gvContacts" DataKeyNames="ID" CssClass="table tablesorter" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" >
                    <ItemStyle HorizontalAlign="Center" Width="30px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Full Name" DataField="FullName" >
                    <HeaderStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:BoundField HeaderText="City" DataField="City" />
                    <asp:BoundField HeaderText="Comment" DataField="Comment" />
                    <asp:BoundField HeaderText="Date Created" DataField="DateCreated" >
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkRemove" runat="server" CssClass="table-icon delete" ToolTip="Remove" CommandArgument='<%# Eval("ID") %>' CausesValidation="false" OnClick="btnRemove_Click" OnClientClick="return confirm('Do you really want to remove this contact?');"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div id="pager" class="pager" style="margin:15px;position:inherit">
	            <form>
		            <img src="tablesort/first.png" class="first"/>
		            <img src="tablesort/prev.png" class="prev"/>
		            <input type="text" class="pagedisplay"/>
		            <img src="tablesort/next.png" class="next"/>
		            <img src="tablesort/last.png" class="last"/>
		            <select class="pagesize">
			            <option selected="selected" value="10">10</option>
			            <option value="20">20</option>
			            <option value="30">30</option>
			            <option  value="40">40</option>
		            </select>
	            </form>
            </div>
        </div>        
    </div>
</asp:Content>
