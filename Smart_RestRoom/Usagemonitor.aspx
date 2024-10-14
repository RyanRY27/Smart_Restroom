<%@ Page Title="Usage Monitor" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Usagemonitor.aspx.cs" Inherits="Smart_RestRoom.Usagemonitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="margin-bottom: 10px; font-weight: bold; font-size: 40px">Usage Monitor</h2>
                <p style="margin-bottom: 20px">This section allows you to monitor restroom usage and trends.</p>
                <div class="container-fluid px-0">
                    <div class="row g-2">
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold;">
                                    <div class="card-title">Restroom Status:
                                    <span class="badge rounded-pill text-bg-danger">Dirty</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content:center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">Today total Users: 
                                        <span class="badge rounded-pill text-bg-warning">100</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content:center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">Most Used Cubicle Today:
                                        <span class="badge rounded-pill text-bg-danger" style="font-size: 20px">Cubicle 5</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row g-2 mt-1">
                        <div class="col-12">
                            <div class="card" style="border-radius: 20px; height: 600px; background-color: #EFEFEF;">
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
