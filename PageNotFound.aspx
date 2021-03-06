﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageNotFound.aspx.cs" Inherits="AspDotNetStorefront.PageNotFound"  MasterPageFile="~/App_Templates/Skin_1/template.master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PageContent">
    <asp:Panel ID="pnlContent" runat="server" >
        
         <div>
                <div id="pnlTopic" >
                    <asp:Literal ID="litTopicNotFound" runat="server"></asp:Literal>        
                </div>            
                
                <div id="pnlSuggestion">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:BulletedList ID="lstSuggestions" runat="server"></asp:BulletedList>
                </div>
        </div>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                ForeColor="#333333" onitemdatabound="DataList1_ItemDataBound">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderTemplate>
                        <asp:Label ID="SuggestionTitleMessage" runat="server" Font-Size="Medium" ForeColor="Black" 
                            Text="Are you looking for:"></asp:Label>
                    </HeaderTemplate>
                    <HeaderStyle Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("URL") %>' 
                            Text='<%# Eval("Name") %>' Font-Size="Medium" ></asp:HyperLink><br />
                            <%# DataBinder.Eval(Container.DataItem, "Description")%><%# DataBinder.Eval(Container.DataItem, "Title")%>
                    </ItemTemplate>
            </asp:DataList>
            
    </asp:Panel>
</asp:Content>
