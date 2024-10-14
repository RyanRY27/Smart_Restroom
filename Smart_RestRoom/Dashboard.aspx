<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Smart_RestRoom.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="margin-bottom: 10px; font-weight: bold; font-size: 40px">Dashboard</h2>
                <p style="margin-bottom: 20px;">Welcome to the Smart Restroom Dashboard. Here you will find an overview of the restroom usage and status.</p>
                <div class="container-fluid px-0">
                    <div class="row g-2">
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card h-100" style="border-radius: 10px; background-color: #EFEFEF;">
                                <div class="card-body">
                                    <h5 class="card-title">Content 1</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card h-100" style="border-radius: 10px; background-color: #EFEFEF;">
                                <div class="card-body">
                                    <h5 class="card-title">Content 2</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card h-100" style="border-radius: 10px; background-color: #EFEFEF;">
                                <div class="card-body">
                                    <h5 class="card-title">Content 3</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row g-2 mt-1">
                        <div class="col-12">
                            <div class="card" style="border-radius: 10px; height: 600px; background-color: #EFEFEF;">
                                <div class="card-body">
                                    <h5 class="card-title">Content 4</h5>
                                    <p class="card-text">This card spans the entire width of the dashboard, filling up any available space.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
