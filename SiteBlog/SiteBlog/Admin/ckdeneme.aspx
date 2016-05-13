<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ckdeneme.aspx.cs" Inherits="SiteBlog.Admin.ckdeneme" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
</asp:Content>
