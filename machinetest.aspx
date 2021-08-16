<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Machine_test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                 <tr>
            <td>Name:</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            <td></td>
            <td>Age:</td>
            <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td> 
            <td></td>
            <td>Qualification:</td>
            <td><asp:TextBox ID="txtquqlification" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Organization:</td>
            <td><asp:TextBox ID="txtorganization" runat="server"></asp:TextBox></td>
            <td></td>
            <td>Year of exp:</td>
            <td><asp:TextBox ID="txtyrofexp" runat="server"></asp:TextBox></td> 
            <td></td>
            <td>Grp for Fitment at RBAI:</td>
            <td><asp:TextBox ID="txtgrp" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Position:</td>
            <td><asp:TextBox ID="txtpos" runat="server"></asp:TextBox></td>
            <td></td>
            <td>Overall Rating :</td>
            <td><asp:TextBox ID="txtover" runat="server"></asp:TextBox></td> 
            <td></td>
            <td>Location:</td>
            <td><asp:TextBox ID="txtlocation" runat="server" ForeColor="Red"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" /></td>
            <%--<td><asp:Button ID="btndraft" runat="server" Text="Draft" OnClick="btndraft_Click" /></td>--%>
        </tr>
        <tr>
            <td></td>
            <td><asp:GridView ID="grd" runat="server"  AutoGenerateColumns="false"><Columns>
                <asp:TemplateField HeaderText="Employee name">
                    <ItemTemplate>
                        <%#Eval("Name")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee Age">
                    <ItemTemplate>
                        <%#Eval("Age")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee Qualification">
                    <ItemTemplate>
                        <%#Eval("Qualification")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee Organization">
                    <ItemTemplate>
                        <%#Eval("Organisation")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee Year of exp">
                    <ItemTemplate>
                        <%#Eval("Yearofexp")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Grp for Fitment at RBAI">
                    <ItemTemplate>
                        <%#Eval("GrpforFitmentatRBAI")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee Position">
                    <ItemTemplate>
                        <%#Eval("Position")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Overall Rating">
                    <ItemTemplate>
                        <%#Eval("OverallRating")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <%#Eval("Location")%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

                </asp:GridView></td>
        </tr>
            </table>
        </div>
    </form>
</body>
</html>