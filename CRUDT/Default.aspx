<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div>
       <div style="font-size:x-large" align="center"> Student Info Manage Form</div>
       <br />

       <table class="w-50">
           <tr>
               <td style="width: 287px; height: 13px;"></td>
               <td style="width: 240px; height: 13px;">Student ID</td>
               <td style="font-size: medium; height: 13px">
                       <asp:TextBox ID="StudentID" runat="server" />
               </td>
           </tr>
           <tr>
               <td style="width: 287px">&nbsp;</td>
               <td style="width: 240px">Student Name</td>
               <td style="font-size: medium">
                    <asp:TextBox ID="StudentName" runat="server" />

               </td>
           </tr>
           <tr>
               <td style="width: 287px">&nbsp;</td>
               <td style="width: 240px">Country</td>
               <td>
                   <asp:DropDownList ID="Country" runat="server">
                       <asp:ListItem>USA</asp:ListItem>
                       <asp:ListItem>INDIA</asp:ListItem>
                       <asp:ListItem>ENGLAND</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td style="width: 287px">&nbsp;</td>
               <td style="width: 240px">Age</td>
               <td style="font-size: medium">
                    <asp:TextBox ID="Age" runat="server" />

               </td>
           </tr>
           <tr>
               <td style="width: 287px">&nbsp;</td>
               <td style="width: 240px">Mobile</td>
               <td style="font-size: medium">
                    <asp:TextBox ID="Mobile" runat="server" />
                   </td>
           </tr>
           <tr>
               <td style="width: 287px">&nbsp;</td>
               <td style="width: 240px">&nbsp;</td>
               <td>
                   <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="Insert" Width="93px" />
                   <br />
                   <br />
                   
               </td>
           </tr>
           <tr>
               <td>
                   <asp:GridView ID="StudentList" runat="server" />
               </td>
           </tr>
       </table>

       </div>

</asp:Content>
