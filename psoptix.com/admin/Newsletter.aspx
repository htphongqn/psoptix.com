<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Newsletter.aspx.cs" Inherits="psoptix.com.admin.Newsletter" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="tablesort/green/style.css" rel="stylesheet" />
    <script src="tablesort/jquery-latest.js"></script>
    <script src="tablesort/jquery.tablesorter.js"></script>
    <script src="tablesort/jquery.tablesorter.pager.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#ContentMain_gvNewsletters").tablesorter({
                headers: {
                    4: {
                        sorter: false
                    },
                    5: {
                        sorter: false
                    }
                }
            })
            .tablesorterPager({ container: $("#pager") });
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div id="Newsletter">        
        <h2>Management Newsletter Page</h2>
        <p>Here, All newsletters of website will display.</p>
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
            <asp:GridView ID="gvNewsletters" DataKeyNames="ID" CssClass="table tablesorter" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" ShowFooter="True">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" >
                    <ItemStyle HorizontalAlign="Center" Width="30px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="Active" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                    <asp:BoundField HeaderText="Date Created" DataField="DateCreated" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkRemove" runat="server" CssClass="table-icon delete" ToolTip="Remove" CommandArgument='<%# Eval("ID") %>' CausesValidation="false" OnClick="btnRemove_Click" OnClientClick="return confirm('Do you really want to remove this newsletter?');"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSentMail" runat="server" Text="Sent Email" ToolTip="Email" CommandArgument='<%# Eval("ID") %>' CausesValidation="false" OnClientClick="return confirm('Do you really want to sent newsletter this email?');"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lnkAllSentMail" runat="server" Text="Sent All Email" ToolTip="Email" CommandArgument='<%# Eval("ID") %>' CausesValidation="false" OnClientClick="return confirm('Do you really want to sent newsletter this all email?');"></asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
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
