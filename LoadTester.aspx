<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadTester.aspx.cs"  MasterPageFile="~/Site.master" Inherits="CofeePOTool.LoadTester" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<script type="text/javascript" src="Scripts/jquery-1.6.1-min.js"></script>
    <script type="text/javascript">
        function ProcessLoadTester() {
            var instanceCount = $('#txtInstanceNo').val();
            var url = $('#txtUrl').val();
            if (url != null && url != undefined) {
                for (var index = 0; index < instanceCount; index++) {
                    window.open(url);
                }
            }
        }
</script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <div>
    Url: <asp:TextBox runat="server" ID="txtUrl" ClientIDMode="Static"></asp:TextBox>   
      Number of Instances: <asp:TextBox runat="server" ID="txtInstanceNo" ClientIDMode="Static"></asp:TextBox>   
    <asp:LinkButton runat="server" ID="lbtnSubmit" CssClass="submitButton" OnClientClick="return ProcessLoadTester();" Text="Submit"></asp:LinkButton>    
   <%-- <asp:DropDownList ID="ddlEnvironment" runat="server">
    <asp:ListItem Text="SIT-56" Value="SIT-56">SIT-56</asp:ListItem>
    <asp:ListItem Text="SIT-57" Value="SIT-57">SIT-57</asp:ListItem>
    <asp:ListItem Text="SIT-C2G-209" Value="SIT-C2G-209">SIT-C2G-209</asp:ListItem>
    <asp:ListItem Text="SIT-C2G-210" Value="SIT-C2G-210">SIT-C2G-210</asp:ListItem>
    <asp:ListItem Text="UAT" Value="UAT">UAT</asp:ListItem>
    <asp:ListItem Text="NTE1" Value="NTE1">NTE1</asp:ListItem>
    <asp:ListItem Text="DIT" Value="DIT">DIT</asp:ListItem>
    </asp:DropDownList>--%>
    </div>
    <div id="divContent" runat="server" ></div>
</asp:Content>
