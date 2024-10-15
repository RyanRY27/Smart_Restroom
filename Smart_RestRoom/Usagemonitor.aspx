<%@ Page Title="Usage Monitor" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Usagemonitor.aspx.cs" Inherits="Smart_RestRoom.Usagemonitor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="margin-bottom: 30px; font-weight: bold; font-size: 40px">Usage Monitor</h2>
                <div class="container-fluid px-0">
                    <div class="row g-2">
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title">
                                        RestRoom Status:
                                        <span class="badge rounded-pill text-bg-danger" style="font-size: 20px; color: white">Dirty</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title">
                                        Today Total Users:
                                       
                                        <span class="badge rounded-pill text-bg-warning" style="font-size: 20px; color: white !important">100</span>
                                    </div>
                                    <div class="dropdown" style="position: absolute; top: 0px; right: 10px; z-index: 2;">
                                        <button class="btn" type="button" id="dropdownMenuButtonUsers" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="fa-solid fa-ellipsis"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButtonUsers" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Today</a></li>
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Weekly</a></li>
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Monthly</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title">
                                        Most Used Cubicle Today:
                                        <span class="badge rounded-pill text-bg-danger" style="font-size: 20px; color: white">Cubicle 5</span>
                                    </div>
                                    <div class="dropdown" style="position: absolute; top: 0px; right: 10px; z-index: 2;">
                                        <button class="btn" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="fa-solid fa-ellipsis"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Today</a></li>
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Weekly</a></li>
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Monthly</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 mt-1">
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">
                                        Average Time Per User:
                                        <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important">5 mins</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title">
                                        Today Total Cleaning:
                                        <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important;">3</span>
                                    </div>
                                    <div class="dropdown" style="position: absolute; top: 0px; right: 10px; z-index: 2;">
                                        <button class="btn" type="button" id="dropdownMenuButtonCleaning" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="fa-solid fa-ellipsis"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButtonCleaning" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Today</a></li>
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Weekly</a></li>
                                            <li><a class="dropdown-item" href="#" style="margin-right: 30px;">Monthly</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">
                                        Content 4:
                                        <span class="badge rounded-pill text-bg-primary" style="font-size: 20px">Details here</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 mt-1">
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="height: 500px;">
                                    <div class="card-body">
                                        <h5 class="card-title">Usage Chart Report</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="height: 500px;">
                                    <div class="card-body">
                                        <h5 class="card-title">Cubicle Usage Report</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 mt-1">
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="height: 500px;">
                                    <div class="card-body">
                                        <h5 class="card-title">AI Usage Prediction</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="height: 500px;">
                                    <div class="card-body">
                                        <h5 class="card-title">AI Cubicle Status Prediction</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 mt-1">
                        <div class="col-12">
                            <div class="card" style="border-radius: 20px; height: 600px; background-color: #EFEFEF;">
                                <div class="card-body">
                                    <h5 class="card-title">Usage Report</h5>
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




