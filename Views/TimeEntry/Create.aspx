﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<_14_TimeMachine2.Models.ENTRY>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create New Entry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create New Entry</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true, "There was an error validating your entry.") %>

    <fieldset>
        <legend>ENTRY</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_project_id) %>
        </div>
        <div class="editor-field">

            <%: Html.DropDownListFor(m => m.entry_project_id, 
                (SelectList)(ViewBag.entry_project_id), "-- Select Project --") %>

            <%: Html.ValidationMessageFor(model => model.entry_project_id) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_begin_time) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.entry_begin_time) %>
            <%: Html.ValidationMessageFor(model => model.entry_begin_time) %>
            <%: Html.ValidationMessage("StartError") %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_end_time) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.entry_end_time) %>
            <%: Html.ValidationMessageFor(model => model.entry_end_time) %>
            <%: Html.ValidationMessage("EndError") %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_location_id) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(m => m.entry_location_id, 
                (SelectList)(ViewBag.entry_location_id), "-- Select Location --") %>
            <%: Html.ValidationMessageFor(model => model.entry_location_id) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_category_id) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(m => m.entry_category_id, 
                (SelectList)(ViewBag.entry_category_id), "-- Select Category --") %>
            <%: Html.ValidationMessageFor(model => model.entry_category_id) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_work_accomplished) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.entry_work_accomplished) %>
            <%: Html.ValidationMessageFor(model => model.entry_work_accomplished) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.entry_comment) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.entry_comment) %>
            <%: Html.ValidationMessageFor(model => model.entry_comment) %>
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
