﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<_14_TimeMachine2.Models.COURSE>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>COURSE</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_name) %>
            <%: Html.ValidationMessageFor(model => model.course_name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_submit_day) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_submit_day) %>
            <%: Html.ValidationMessageFor(model => model.course_submit_day) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_begin_date) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_begin_date) %>
            <%: Html.ValidationMessageFor(model => model.course_begin_date) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_end_date) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_end_date) %>
            <%: Html.ValidationMessageFor(model => model.course_end_date) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_is_enabled) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_is_enabled) %>
            <%: Html.ValidationMessageFor(model => model.course_is_enabled) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_ref_grade) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_ref_grade) %>
            <%: Html.ValidationMessageFor(model => model.course_ref_grade) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.course_ref_hours) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.course_ref_hours) %>
            <%: Html.ValidationMessageFor(model => model.course_ref_hours) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>