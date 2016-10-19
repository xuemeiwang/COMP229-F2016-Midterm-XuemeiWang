<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP229_F2016_Midterm_XuemeiWang.Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-2 col-md-8">
            <div class="jumbotron" id="content" runat="server">
                <div class="text-center">
                    <h2>Todo List</h2>
                      <a href="StudentDetails.aspx" class="btn btn-success btn-sm">
                    <i class="fa fa-plus"></i> Add Todo
                </a>
   <div>
                    <label for="PageSizeDropDownList">Records per Page:</label>
                    <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                        AutoPostBack="true" CssClass="btn btn-default btn-sm dropdown-toggle"
                        OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                        <asp:ListItem Text="3" Value="3" />
                        <asp:ListItem Text="5" Value="5" />
                        <asp:ListItem Text="10" Value="10" />
                        <asp:ListItem Text="All" Value="10000" />
                    </asp:DropDownList>
                </div>
                    
                <asp:GridView ID="TodoGridView" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover" DataKeyNames="TodoID"
                    OnRowDeleting="TodoGridView_RowDeleting" AllowPaging="true" PageSize="3"
                    OnPageIndexChanging="TodoGridView_PageIndexChanging" AllowSorting="true"
                    OnSorting="TodoGridView_Sorting" OnRowDataBound="TodoGridView_RowDataBound"
                    PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="TodoID" HeaderText="Todo" Visible="true" SortExpression="TodoID" />
                        <asp:BoundField DataField="TodoNotes" HeaderText="Notes" Visible="true" SortExpression="Todonotes" />
                        <asp:BoundField DataField="Completed" HeaderText="Completed" Visible="true" SortExpression="Completed" />
                        <asp:CheckBoxField runat="server" /> </asp:CheckBoxField>
                        <asp:CheckBox runat="server"></asp:CheckBox>
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit"
                            NavigateUrl="TodoDetails.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                            runat="server" DataNavigateUrlFields="TodoID"
                            DataNavigateUrlFormatString="TodoDetails.aspx?TodoID={0}" />

                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>
                </asp:GridView>




                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
