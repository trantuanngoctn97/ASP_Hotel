﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="newsList.aspx.cs" Inherits="Admin_newsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Danh sách tin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentTable" Runat="Server">
    <h2>Danh sách tin</h2>
		<%--<asp:Button ID="btnNews1" class="float-right btn btn-primary marL15" runat="server" Text="DS tin ẩn" PostBackUrl="~/Admin/newsList1.aspx" />--%>
		<%--<asp:Butkton ID="btnNews0" class="float-right btn btn-success " runat="server" Text="DS tin hiện" PostBackUrl="~/Admin/newsList.aspx" />--%>
		<br />
		<br />	
		<asp:GridView class="table table-bordered" ID="grvNews" runat="server" AutoGenerateColumns="False"> 
		<Columns>
			<asp:BoundField DataField="news_id" HeaderText="Mã tin tức" />
			<asp:BoundField DataField="news_title" HeaderText="Tiêu đề tin tức" />
			<asp:BoundField DataField="news_description" HeaderText="Mô tả tin tức" />
			<asp:BoundField DataField="news_content" HeaderText="Nội dung tin" />
             <asp:TemplateField runat="server" HeaderText="Ảnh">
                                    <ItemTemplate>
                                        <asp:Image ID="img" runat="server" ImageUrl='<%# "images/"+Eval("news_avatar") %>' Width="80px" Height="80px"/>
                                    </ItemTemplate>
            </asp:TemplateField>
			<%--<asp:BoundField DataField="news_avatar" HeaderText="Hình Ảnh Tin" />--%>
			<asp:BoundField DataField="news_cat_name" HeaderText="Tên danh mục tin" />
			<asp:BoundField DataField="getNews_status" HeaderText="Trạng thái" />
			<asp:TemplateField HeaderText="Chức năng">
				<ItemTemplate>
					<asp:Button ID="xoa" class="btn btn-danger" CommandName="xoa" CommandArgument='<%#Bind("news_id") %>'
						OnCommand="Xoa_Click" runat="server" Text="Xóa" 
						OnClientClick="return confirm('Bạn có chắc muốn xóa đặt phòng này?')" />
				
					<asp:Button ID="sua" class="btn btn-info marT10" CommandName="sua" CommandArgument='<%#Bind("news_id") %>'
						OnCommand="Sua_Click" runat="server" Text="Sửa"/>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
    <p></p>
	<asp:Button ID="btnNewsAdd" class="float-right btn btn-success" runat="server" Text="Thêm tin" PostBackUrl="~/Admin/newsAdd.aspx" />
</asp:Content>

