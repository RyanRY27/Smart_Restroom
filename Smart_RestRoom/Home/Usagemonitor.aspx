﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usagemonitor.aspx.cs" Inherits="Smart_RestRoom.ViewPage.Usagemonitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
    <div class="row">
        <div class="col-lg-12">
            <h2 style="margin-bottom: 30px; font-weight: bold; font-size: 40px">Usage Monitor</h2>
            <div class="container-fluid px-0">
                <div class="row g-2">
                    <!-- card 1-->
                    <div class="col-12 col-md-6 col-lg-4 text-center">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                <div class="card-title">
                                    RestRoom Status:
                                    <i class="bi bi-info-circle" style="font-size: 23px;" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-html="true"
                                        title="&lt;strong&gt;Status:&lt;/strong&gt;&lt;br&gt;
                                       &lt;strong&gt;Clean:&lt;/strong&gt; The restroom is spotless and well-maintained.&lt;br&gt;
                                       &lt;strong&gt;Moderate:&lt;/strong&gt; Minor dirt or stains, mild odors, and some supplies are running low.&lt;br&gt;
                                       &lt;strong&gt;Dirty:&lt;/strong&gt; The restroom needs immediate attention and supplies are empty."></i>
                                    <span class="badge rounded-pill text-bg-danger" style="font-size: 20px; color: white">Dirty</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- card 2 -->
                    <div class="col-12 col-md-6 col-lg-4 text-center">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                <div class="card-title" id="user">
                                    Today Total Users:
                                   
                                    <span class="badge rounded-pill text-bg-warning" style="font-size: 20px; color: white !important">100</span>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 0px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButtonUsers" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButtonUsers" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#user" data-value="Today Total Users">Today</a></li>
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#user" data-value="This Week Total Users">Weekly</a></li>
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#user" data-value="This Month Total Users">Monthly</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- card 3 -->
                    <div class="col-12 col-md-6 col-lg-4 text-center">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                <div class="card-title" id="usedcubicle">
                                    Most Used Cubicle Today:
                                    <span class="badge rounded-pill text-bg-danger" style="font-size: 20px; color: white">Cubicle 5</span>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 0px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#usedcubicle" data-value="Most Used Cubicle Today">Today</a></li>
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#usedcubicle" data-value="Most Used Cubicle This Week">Weekly</a></li>
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#usedcubicle" data-value="Most Used Cubicle This Month">Monthly</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- card 4 -->
                <div class="row g-2 mt-1">
                    <div class="col-12 col-md-6 col-lg-4 text-center">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold">
                                <div class="card-title">
                                    Average Time Per User:
                                    <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important">5 mins</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- card 5 -->
                    <div class="col-12 col-md-6 col-lg-4 text-center">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                <div class="card-title" id="cleaning">
                                    Today Total Cleaning:
                                    <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important;">3</span>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 0px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButtonCleaning" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButtonCleaning" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#cleaning" data-value="Today Total Cleaning">Today</a></li>
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#cleaning" data-value="This Week Total Cleaning">Weekly</a></li>
                                        <li><a class="dropdown-item" href="#" style="margin-right: 30px;" data-target="#cleaning" data-value="This Month Total Cleaning">Monthly</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- card 6 -->
                    <div class="col-12 col-md-6 col-lg-4 text-center">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
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
                    <!-- First chart -->
                    <div class="col-12 col-md-6 col-lg-6">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="height: 560px; position: relative; overflow: hidden;">
                                <div class="container mt-3" style="height: 100%; max-height: 380px;">
                                    <h3 style="font-weight: bold;">Usage Chart</h3>
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <div class="d-flex">
                                            <a href="#" class="chart-link me-2 active">Today</a>
                                            <a href="#" class="chart-link me-2">Yesterday</a>
                                            <a href="#" class="chart-link me-2">Weekly</a>
                                            <a href="#" class="chart-link">Monthly</a>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <div class="d-flex flex-column me-2 text-start">
                                                <div>
                                                    <label for="fromDate" class="d-block">From:</label>
                                                </div>
                                                <div>
                                                    <input type="date" id="fromDate" class="form-control" style="max-width: 135px; border-radius: 10px; background-color: #EFEFEF; border-color: #D7D7D7;">
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column text-start">
                                                <div>
                                                    <label for="toDate" class="d-block">To:</label>
                                                </div>
                                                <div>
                                                    <input type="date" id="toDate" class="form-control" style="max-width: 135px; border-radius: 10px; background-color: #EFEFEF; border-color: #D7D7D7">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <canvas id="usagechart" style="max-width: 100%; max-height: 100%;"></canvas>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 10px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" data-value="Line Chart1">Line Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Bar Chart1">Bar Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Donut Chart1">Donut Chart</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Second chart -->
                    <div class="col-12 col-md-6 col-lg-6">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="height: 560px; position: relative; overflow: hidden;">
                                <div class="container mt-3" style="height: 100%; max-height: 380px;">
                                    <h3 style="font-weight: bold;">Cubicle Usage Chart</h3>
                                    <div class="d-flex justify-content-between align-items-center mb-3 mt-0 ">
                                        <div class="d-flex">
                                            <a href="#" class="chart-link me-2 active">Today</a>
                                            <a href="#" class="chart-link me-2">Yesterday</a>
                                            <a href="#" class="chart-link me-2">Weekly</a>
                                            <a href="#" class="chart-link">Monthly</a>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <div class="d-flex flex-column me-2 text-start">
                                                <div>
                                                    <label for="fromDate" class="d-block">From:</label>
                                                </div>
                                                <div>
                                                    <input type="date" id="fromDate1" class="form-control" style="max-width: 135px; border-radius: 10px; background-color: #EFEFEF; border-color: #D7D7D7;">
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column text-start">
                                                <div>
                                                    <label for="toDate" class="d-block">To:</label>
                                                </div>
                                                <div>
                                                    <input type="date" id="toDate1" class="form-control" style="max-width: 135px; border-radius: 10px; background-color: #EFEFEF; border-color: #D7D7D7">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <canvas id="cubicleusage" style="max-width: 100%; max-height: 100%;"></canvas>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 10px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" data-value="Line Chart">Line Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Bar Chart">Bar Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Donut Chart">Donut Chart</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row g-2 mt-1">
                    <!-- Third chart -->
                    <div class="col-12 col-md-6 col-lg-6">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="height: 550px; position: relative; overflow: hidden;">
                                <div class="container mt-4" style="height: 100%; max-height: 380px;">
                                    <h3 style="font-weight: bold;">AI Usage Prediction</h3>
                                    <canvas id="aiusagechart" style="max-width: 100%; max-height: 100%; margin-top: 50px"></canvas>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 10px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButton4" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButtonCleaning" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" data-value="Line Chart2">Line Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Bar Chart2">Bar Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Donut Chart2">Donut Chart</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Fourth chart -->
                    <div class="col-12 col-md-6 col-lg-6">
                        <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="height: 550px; position: relative; overflow: hidden;">
                                <div class="container mt-4" style="height: 100%; max-height: 380px;">
                                    <h3 style="font-weight: bold;">AI Cubicle Usage Prediction</h3>
                                    <canvas id="aicubicleusage" style="max-width: 100%; max-height: 100%; margin-top: 50px"></canvas>
                                </div>
                                <div class="dropdown" style="position: absolute; top: 10px; right: 10px; z-index: 2;">
                                    <button class="btn" type="button" id="dropdownMenuButton11" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                        <li><a class="dropdown-item" href="#" data-value="Line Chart3">Line Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Bar Chart3">Bar Chart</a></li>
                                        <li><a class="dropdown-item" href="#" data-value="Donut Chart3">Donut Chart</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Table-->

                <div class="row g-2 mt-1">
                    <div class="col-12">
                        <div class="card" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body">
                                <h3 class="card-title mt-3" style="font-weight: bold;">Usage Report</h3>
                                <div class="table-responsive">
                                    <table id="cubicleUsageTable" class="display" style="width: 100%; text-align: left;">
                                        <thead>
                                            <tr>
                                                <th style="text-align: left;">Usage Number</th>
                                                <th style="text-align: left;">Cubicle Number</th>
                                                <th style="text-align: left;">Time IN:</th>
                                                <th style="text-align: left;">Time OUT:</th>
                                                <th style="text-align: left;">Date:</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="text-align: left;">UN01</td>
                                                <td style="text-align: left;">Cubicle 1</td>
                                                <td style="text-align: left;">07:00 AM</td>
                                                <td style="text-align: left;">07:10 AM</td>
                                                <td style="text-align: left;">10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">UN02</td>
                                                <td style="text-align: left;">Cubicle 2</td>
                                                <td style="text-align: left;">07:15 AM</td>
                                                <td style="text-align: left;">07:25 AM</td>
                                                <td style="text-align: left;">10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">UN03</td>
                                                <td style="text-align: left;">Cubicle 3</td>
                                                <td style="text-align: left;">07:30 AM</td>
                                                <td style="text-align: left;">07:40 AM</td>
                                                <td style="text-align: left;">10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">UN04</td>
                                                <td style="text-align: left;">Cubicle 4</td>
                                                <td style="text-align: left;">07:45 AM</td>
                                                <td style="text-align: left;">07:55 AM</td>
                                                <td style="text-align: left;">10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">UN05</td>
                                                <td style="text-align: left;">Cubicle 5</td>
                                                <td style="text-align: left;">08:00 AM</td>
                                                <td style="text-align: left;">08:10 AM</td>
                                                <td style="text-align: left;">10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">UN06</td>
                                                <td style="text-align: left;">Cubicle 6</td>
                                                <td style="text-align: left;">08:15 AM</td>
                                                <td style="text-align: left;">08:25 AM</td>
                                                <td style="text-align: left;">10/17/24</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
