<%@ Page Title="Schedule" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Smart_RestRoom.Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="margin-bottom: 30px; font-weight: bold; font-size: 40px">Schedule</h2>
                <div class="container-fluid px-0">
                    <div class="row g-2">
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title">
                                        Next Cleaning Schedule:
                                        <span class="badge rounded-pill text-bg-danger" style="font-size: 20px; color: white">Dirty</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title" id="user">
                                        Restroom Status:       
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
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title" id="usedcubicle">
                                        Last Cleaned:
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
                    <div class="row g-2 mt-1">
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">
                                        Next Janitor Assigned:
                                        <span class="badge rounded-pill text-bg-info" style="font-size: 20px; color: white !important">5 mins</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF; position: relative;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold; height: 120px; position: relative;">
                                    <div class="card-title" id="cleaning">
                                        Cleaning Priority:
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
                        <div class="col-12 col-md-6 col-lg-4 text-center">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="align-content: center; font-size: 30px; font-weight: bold">
                                    <div class="card-title">
                                        Last Janitor Cleaned:
                                        <span class="badge rounded-pill text-bg-primary" style="font-size: 20px">Details here</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 mt-1">
                        <!-- First card -->
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="height: 500px;">
                                    <div class="container mt-4">
                                        <h3>Cleaning Chart</h3>
                                        <canvas id="usagechart" width="400" height="200"></canvas>
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

                        <!-- Second card -->
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="card h-100" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body" style="height: 500px; position: relative; overflow: hidden;">
                                    <div class="container mt-4" style="height: 100%; max-height: 370px;">
                                        <h3>Janitor Cleaning Hours</h3>
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
                        <div class="col-12">
                            <div class="card" style="border-radius: 20px; background-color: #EFEFEF;">
                                <div class="card-body">
                                    <h5 class="card-title">Usage Report</h5>
                                    <table id="cubicleUsageTable" class="display" style="width: 100%">
                                        <thead>
                                            <tr>
                                                <th>Usage Number</th>
                                                <th>Cubicle Number</th>
                                                <th>Time IN:</th>
                                                <th>Time OUT:</th>
                                                <th>Date:</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>UN01</td>
                                                <td>1</td>
                                                <td>07:00 AM</td>
                                                <td>07:10 AM</td>
                                                <td>10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td>UN01</td>
                                                <td>1</td>
                                                <td>07:00 AM</td>
                                                <td>07:10 AM</td>
                                                <td>10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td>UN01</td>
                                                <td>1</td>
                                                <td>07:00 AM</td>
                                                <td>07:10 AM</td>
                                                <td>10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td>UN01</td>
                                                <td>1</td>
                                                <td>07:00 AM</td>
                                                <td>07:10 AM</td>
                                                <td>10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td>UN01</td>
                                                <td>1</td>
                                                <td>07:00 AM</td>
                                                <td>07:10 AM</td>
                                                <td>10/17/24</td>
                                            </tr>
                                            <tr>
                                                <td>UN01</td>
                                                <td>1</td>
                                                <td>07:00 AM</td>
                                                <td>07:10 AM</td>
                                                <td>10/17/24</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                              <div class="row g-2 mt-1">
              <div class="col-12">
                  <div class="card" style="border-radius: 20px; background-color: #EFEFEF;">
                      <div class="card-body">
                          <h5 class="card-title">Usage Report</h5>
                          <table id="cubicleUsageTable4" class="display" style="width: 100%">
                              <thead>
                                  <tr>
                                      <th>Usage Number</th>
                                      <th>Cubicle Number</th>
                                      <th>Time IN:</th>
                                      <th>Time OUT:</th>
                                      <th>Date:</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td>UN01</td>
                                      <td>1</td>
                                      <td>07:00 AM</td>
                                      <td>07:10 AM</td>
                                      <td>10/17/24</td>
                                  </tr>
                                  <tr>
                                      <td>UN01</td>
                                      <td>1</td>
                                      <td>07:00 AM</td>
                                      <td>07:10 AM</td>
                                      <td>10/17/24</td>
                                  </tr>
                                  <tr>
                                      <td>UN01</td>
                                      <td>1</td>
                                      <td>07:00 AM</td>
                                      <td>07:10 AM</td>
                                      <td>10/17/24</td>
                                  </tr>
                                  <tr>
                                      <td>UN01</td>
                                      <td>1</td>
                                      <td>07:00 AM</td>
                                      <td>07:10 AM</td>
                                      <td>10/17/24</td>
                                  </tr>
                                  <tr>
                                      <td>UN01</td>
                                      <td>1</td>
                                      <td>07:00 AM</td>
                                      <td>07:10 AM</td>
                                      <td>10/17/24</td>
                                  </tr>
                                  <tr>
                                      <td>UN01</td>
                                      <td>1</td>
                                      <td>07:00 AM</td>
                                      <td>07:10 AM</td>
                                      <td>10/17/24</td>
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

</asp:Content>

<script>

</script>