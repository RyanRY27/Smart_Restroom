﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Smart_RestRoom.ViewPage.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="margin-bottom: 30px; font-weight: bold; font-size: 40px">Schedule</h2>
                <div class="container-fluid px-0">
                    <div class="row g-2">
                        <!-- card 1-->
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title" id="user">
                                        Next Cleaning Schedule:
                                        <span class="badge rounded-pill text-bg-warning" style="font-size: 20px; color: white !important">03:00 PM</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- card 2 -->

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
                        <!-- card 3 -->
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title" id="usedcubicle">
                                        Last Cleaned:
                                        <span class="badge rounded-pill text-bg-danger" style="font-size: 20px; color: white">12:00 PM</span>
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
                                        Next Janitor Assigned:
                                        <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important">Janitor 2</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- card 5 -->
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title" id="cleaning">
                                        Cleaning Priority:
                                        <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important;">Cubicle 3</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- card 6 -->
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">
                                        Last Janitor Cleaned:
                                        <span class="badge rounded-pill text-bg-primary" style="font-size: 20px">Janitor 5</span>
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
                                        <h3 style="font-weight: bold;">Cleaning Chart</h3>
                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                            <div class="d-flex">
                                                <a href="#" class="chart-link me-2 active">This Week</a>
                                                <a href="#" class="chart-link me-2">Last Week</a>
                                                <a href="#" class="chart-link me-2">Monthly</a>
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
                                        <canvas id="cleaningchart" style="max-width: 100%; max-height: 100%;"></canvas>
                                    </div>
                                    <div class="dropdown" style="position: absolute; top: 10px; right: 10px; z-index: 2;">
                                        <button class="btn" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="fa-solid fa-ellipsis"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                            <li><a class="dropdown-item" href="#" data-value="Line Chart">Line Chart</a></li>
                                            <li><a class="dropdown-item" href="#" data-value="Bar Chart">Bar Chart</a></li>
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
                                        <h3 style="font-weight: bold;">Janitor Cleaning Hours</h3>
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
                                        <canvas id="cleaningHours" style="max-width: 100%; max-height: 100%;"></canvas>
                                    </div>
                                    <div class="dropdown" style="position: absolute; top: 10px; right: 10px; z-index: 2;">
                                        <button class="btn" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="fa-solid fa-ellipsis"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1" style="left: 0; right: auto; background-color: #EFEFEF; border-radius: 12px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); min-width: 150px; max-width: 100%; white-space: normal; overflow: hidden;">
                                            <li><a class="dropdown-item" href="#" data-value="Line Chart1">Line Chart</a></li>
                                            <li><a class="dropdown-item" href="#" data-value="Bar Chart1">Bar Chart</a></li>
                                            <li><a class="dropdown-item" href="#" data-value="Donut Chart1">Donut Chart</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Table 1-->

                    <div class="row g-2 mt-1">
                        <div class="col-12">
                            <div class="card" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                <div class="card-body">
                                    <h3 class="card-title mt-3 mb-3" style="font-weight: bold;">Janitor Performance Report</h3>
                                    <div class="table-responsive">
                                        <table id="janitorperformance" class="display" style="width: 100%; text-align: left;">
                                            <thead>
                                                <tr>
                                                    <th style="text-align: left;">Janitor ID</th>
                                                    <th style="text-align: left;">Janitor Name</th>
                                                    <th style="text-align: left;"># of Cleaning Today</th>
                                                    <th style="text-align: left;"># of Cleaning This Week</th>
                                                    <th style="text-align: left;"># of Cleaning This Month</th>
                                                    <th style="text-align: left;">Average Resources Usage</th>
                                                    <th style="text-align: left;">Average Time per Cleaning</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style="text-align: left;">J001</td>
                                                    <td style="text-align: left;">John Doe</td>
                                                    <td style="text-align: left;">3</td>
                                                    <td style="text-align: left;">15</td>
                                                    <td style="text-align: left;">60</td>
                                                    <td style="text-align: left;">Low</td>
                                                    <td style="text-align: left;">25 mins</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J002</td>
                                                    <td style="text-align: left;">Jane Smith</td>
                                                    <td style="text-align: left;">2</td>
                                                    <td style="text-align: left;">12</td>
                                                    <td style="text-align: left;">50</td>
                                                    <td style="text-align: left;">Moderate</td>
                                                    <td style="text-align: left;">30 mins</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J003</td>
                                                    <td style="text-align: left;">Alex Johnson</td>
                                                    <td style="text-align: left;">4</td>
                                                    <td style="text-align: left;">18</td>
                                                    <td style="text-align: left;">70</td>
                                                    <td style="text-align: left;">Low</td>
                                                    <td style="text-align: left;">22 mins</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J004</td>
                                                    <td style="text-align: left;">Chris Evans</td>
                                                    <td style="text-align: left;">5</td>
                                                    <td style="text-align: left;">22</td>
                                                    <td style="text-align: left;">85</td>
                                                    <td style="text-align: left;">High</td>
                                                    <td style="text-align: left;">40 mins</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J005</td>
                                                    <td style="text-align: left;">Lisa Green</td>
                                                    <td style="text-align: left;">3</td>
                                                    <td style="text-align: left;">14</td>
                                                    <td style="text-align: left;">65</td>
                                                    <td style="text-align: left;">Moderate</td>
                                                    <td style="text-align: left;">35 mins</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Table 2-->
                    <div class="row g-2 mt-1">
                        <div class="col-12">
                            <div class="card" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                                <div class="card-body" style="padding: 20px;">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h3 class="card-title mt-3 mb-3" style="font-weight: bold;">Janitor Schedule Report</h3>
                                        <button type="button" class="btn float-end" style="border-radius: 10px; background-color: #D1D9FF; color: #1D1D1D; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); padding-left: 15px; padding-right: 15px; border: none">Add Schedule</button>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="janitorschedule" class="display" style="width: 100%; text-align: left; padding: 10px">
                                            <thead>
                                                <tr>
                                                    <th style="text-align: left;">Janitor ID</th>
                                                    <th style="text-align: left;">Janitor Name</th>
                                                    <th style="text-align: left;">Cleaning Time IN</th>
                                                    <th style="text-align: left;">Cleaning Time OUT</th>
                                                    <th style="text-align: left;">Date</th>
                                                    <th style="text-align: left;">Remarks</th>
                                                    <th style="text-align: left;">Cleaning Duration</th>
                                                    <th style="text-align: left;">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style="text-align: left;">J001</td>
                                                    <td style="text-align: left;">John Doe</td>
                                                    <td style="text-align: left;">07:00 AM</td>
                                                    <td style="text-align: left;">07:30 AM</td>
                                                    <td style="text-align: left;">10/17/24</td>
                                                    <td style="text-align: left;">Cleaned Thoroughly</td>
                                                    <td style="text-align: left;">30 mins</td>
                                                    <td style="text-align: left;"><span class="badge rounded-pill text-bg-success">Completed</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J002</td>
                                                    <td style="text-align: left;">Jane Smith</td>
                                                    <td style="text-align: left;">07:45 AM</td>
                                                    <td style="text-align: left;">08:15 AM</td>
                                                    <td style="text-align: left;">10/17/24</td>
                                                    <td style="text-align: left;">Needs Minor Attention</td>
                                                    <td style="text-align: left;">30 mins</td>
                                                    <td style="text-align: left;"><span class="badge rounded-pill text-bg-warning">In Progress</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J003</td>
                                                    <td style="text-align: left;">Alex Johnson</td>
                                                    <td style="text-align: left;">08:30 AM</td>
                                                    <td style="text-align: left;">09:00 AM</td>
                                                    <td style="text-align: left;">10/17/24</td>
                                                    <td style="text-align: left;">Spotless</td>
                                                    <td style="text-align: left;">30 mins</td>
                                                    <td style="text-align: left;"><span class="badge rounded-pill text-bg-success">Completed</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J004</td>
                                                    <td style="text-align: left;">Chris Evans</td>
                                                    <td style="text-align: left;">09:15 AM</td>
                                                    <td style="text-align: left;">09:45 AM</td>
                                                    <td style="text-align: left;">10/17/24</td>
                                                    <td style="text-align: left;">Minor Spills</td>
                                                    <td style="text-align: left;">30 mins</td>
                                                    <td style="text-align: left;"><span class="badge rounded-pill text-bg-danger">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left;">J005</td>
                                                    <td style="text-align: left;">Lisa Green</td>
                                                    <td style="text-align: left;">10:00 AM</td>
                                                    <td style="text-align: left;">10:30 AM</td>
                                                    <td style="text-align: left;">10/17/24</td>
                                                    <td style="text-align: left;">Completed Perfectly</td>
                                                    <td style="text-align: left;">30 mins</td>
                                                    <td style="text-align: left;"><span class="badge rounded-pill text-bg-success">Completed</span></td>
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
