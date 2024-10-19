<%@ Page Title="Janitor" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Janitor.aspx.cs" Inherits="Smart_RestRoom.Janitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="margin-bottom: 30px; font-weight: bold; font-size: 40px">Janitor</h2>
                <div class="row g-2 mt-1">
                    <div class="col-12">
                        <div class="card" style="border-radius: 20px; background-color: #EFEFEF; box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                            <div class="card-body" style="padding: 20px;">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h3 class="card-title mt-3 mb-3" style="font-weight: bold;">Janitor List</h3>
                                    <button type="button" class="btn float-end" style="border-radius: 10px; background-color: #D1D9FF; color: #1D1D1D; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); padding-left: 15px; padding-right: 15px; border: none">Add Janitor</button>
                                </div>
                                <div class="table-responsive">
                                    <table id="janitor" class="display" style="width: 100%; text-align: left; padding: 10px">
                                        <thead>
                                            <tr>
                                                <th style="text-align: left;">User ID</th>
                                                <th style="text-align: left;">Username</th>
                                                <th style="text-align: left;">Name</th>
                                                <th style="text-align: left;">Email</th>
                                                <th style="text-align: left;">Number</th>
                                                <th style="text-align: left;">Role</th>
                                                <th style="text-align: left;">Date Added</th>
                                                <th style="text-align: left;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="text-align: left;">J001</td>
                                                <td style="text-align: left;">john_doe</td>
                                                <td style="text-align: left;">John Doe</td>
                                                <td style="text-align: left;">john@example.com</td>
                                                <td style="text-align: left;">+123456789</td>
                                                <td style="text-align: left;">Admin</td>
                                                <td style="text-align: left;">10/17/24</td>
                                                <td style="text-align: left;">
                                                    <button class="btn btn-primary btn-sm">Edit</button>
                                                    <button class="btn btn-danger btn-sm">Delete</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">J002</td>
                                                <td style="text-align: left;">jane_smith</td>
                                                <td style="text-align: left;">Jane Smith</td>
                                                <td style="text-align: left;">jane@example.com</td>
                                                <td style="text-align: left;">+987654321</td>
                                                <td style="text-align: left;">User</td>
                                                <td style="text-align: left;">10/17/24</td>
                                                <td style="text-align: left;">
                                                    <button class="btn btn-primary btn-sm">Edit</button>
                                                    <button class="btn btn-danger btn-sm">Delete</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">J003</td>
                                                <td style="text-align: left;">alex_johnson</td>
                                                <td style="text-align: left;">Alex Johnson</td>
                                                <td style="text-align: left;">alex@example.com</td>
                                                <td style="text-align: left;">+1122334455</td>
                                                <td style="text-align: left;">Moderator</td>
                                                <td style="text-align: left;">10/17/24</td>
                                                <td style="text-align: left;">
                                                    <button class="btn btn-primary btn-sm">Edit</button>
                                                    <button class="btn btn-danger btn-sm">Delete</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">J004</td>
                                                <td style="text-align: left;">chris_evans</td>
                                                <td style="text-align: left;">Chris Evans</td>
                                                <td style="text-align: left;">chris@example.com</td>
                                                <td style="text-align: left;">+5566778899</td>
                                                <td style="text-align: left;">User</td>
                                                <td style="text-align: left;">10/17/24</td>
                                                <td style="text-align: left;">
                                                    <button class="btn btn-primary btn-sm">Edit</button>
                                                    <button class="btn btn-danger btn-sm">Delete</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">J005</td>
                                                <td style="text-align: left;">lisa_green</td>
                                                <td style="text-align: left;">Lisa Green</td>
                                                <td style="text-align: left;">lisa@example.com</td>
                                                <td style="text-align: left;">+9988776655</td>
                                                <td style="text-align: left;">Admin</td>
                                                <td style="text-align: left;">10/17/24</td>
                                                <td style="text-align: left;">
                                                    <button class="btn btn-primary btn-sm">Edit</button>
                                                    <button class="btn btn-danger btn-sm">Delete</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left;">J006</td>
                                                <td style="text-align: left;">lisa_habadu</td>
                                                <td style="text-align: left;">Lisa Habadu</td>
                                                <td style="text-align: left;">lisa@example.com</td>
                                                <td style="text-align: left;">+9988776655</td>
                                                <td style="text-align: left;">Janitor</td>
                                                <td style="text-align: left;">10/17/24</td>
                                                <td style="text-align: left;">
                                                    <button class="btn btn-primary btn-sm">Edit</button>
                                                    <button class="btn btn-danger btn-sm">Delete</button>
                                                </td>
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
    <script>
        //datatable
        $(document).ready(function () {

            $('#janitor').DataTable({
                "paging": true,
                "searching": true,
                "ordering": true,
                "info": true,
                "order": []
            });
        });
    </script>

</asp:Content>
