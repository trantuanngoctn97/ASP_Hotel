﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminsEdit.aspx.cs" Inherits="Admin_AdminsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Cập nhật thông tin tài khoản Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentTable" Runat="Server">
        <h2>Cập nhật thông tin tài khoản admin</h2>
    <asp:Table runat="server" ID="t1">
        <asp:TableRow>
            <asp:TableCell>ID</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtid" runat="server" Enabled="false" /></asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>Phone</asp:TableCell><asp:TableCell><asp:TextBox ID="txtphone" runat="server"/></asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>Password</asp:TableCell><asp:TableCell><asp:TextBox ID="txtpassword" runat="server"/></asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>Email</asp:TableCell><asp:TableCell><asp:TextBox ID="txtemail" runat="server"/></asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>Address</asp:TableCell><asp:TableCell><asp:TextBox ID="txtaddress" runat="server"/></asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>Avatar</asp:TableCell><asp:TableCell><asp:TextBox ID="txtavartar" runat="server"/></asp:TableCell></asp:TableRow></asp:Table><asp:Button ID="btnSua" runat="server" Text="Cập nhật" OnClick="btnSua_Click" />
    
    <asp:Button ID="btnBoqua" runat="server" Text="Bỏ qua" PostBackUrl="~/Admin/AdminsList.aspx" />
    <p></p>
    <asp:Label ID="msg" runat="server" Font-Italic="true" />
</asp:Content>

