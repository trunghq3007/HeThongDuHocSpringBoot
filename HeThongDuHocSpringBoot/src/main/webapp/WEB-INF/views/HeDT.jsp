<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>

    <body>
        <header>
            <div class="container">
                <!--navigation bar-->
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">HỆ THỐNG DU HỌC</a>
                        </div>

                    </div>
                </nav>
            </div>
        </header>

        <div class="container">
            <!--Filter area and function button-->
            <div class="col-lg-2">
                <div class="vertical-menu">
                    <a href="/sinhvien">Sinh viên</a>
                    <a href="/lop">Lớp</a>
                    <a href="/hedaotao" class="active">Hệ đào tạo</a>
                </div>
            </div>
            <!--main content-->
            <div class="col-lg-10">
                <div>
                    <div class="">
                        <div class="pull-left">
                            <form id="form-search" class="navbar-form" action="#">
                                <input id="text-search" type="text" class="form-control" placeholder="Search">
                                <!--<button id="btn-search" type="button" class="btn btn-primary">Filter by name</button>-->
                            </form>
                        </div>
                    </div>
                    <div class="">
                        <div class="pull-right" style="margin-top:10px">
                            <button id="btn-data-input" class="btn btn-success" type="button">Add new record</button>
                        </div>
                    </div>
                </div>
                <!--data entry form-->
                <div id="data-entry-div">
                    <form id="data-entry-form">
                        <label>
                          <p class="label-txt">NHẬP MÃ HỆ ĐÀO TẠO</p>
                          <input id="text-mahedt"type="text" class="input">
                          <div class="line-box">
                            <div class="line"></div>
                          </div>
                        </label>
                        <label>
                          <p class="label-txt">NHẬP TÊN HỆ ĐÀO TẠO</p>
                          <input id="text-tenhedt" type="text" class="input">
                          <div class="line-box">
                            <div class="line"></div>
                          </div>
                        </label>
                        <button id="btn-insert" type="button">Insert</button>
                      </form>
                </div>
                
                <!--Table-->
                <div id="table-div">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Mã hệ đào tạo</th>
                                <th>Tên hệ đào tạo</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="content-hedt">
                        <c:forEach var="hedt" items="${listHDT}">
    					<tr>
    						<td id="p-mahedt">${hedt.getMaHeDT() }</td>
    						<td id="p-tenhedt"}>${hedt.getTenHeDT() }</td>
    						<td><button class="btn btn-warning btn-update">Update</button></td>
    						<td><button class="btn btn-danger btn-delete">Delete</button></td>
    					</tr>
    				</c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- <nav class="pull-right" aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav> -->
            </div>
            <div class="col-lg-1">
            </div>
            
            <div class="modal" id="modalUpdateHeDT" tabindex="-1"
    		role="dialog" aria-labelledby="exampleModalCenterTitle"
    		aria-hidden="true">
    		<div class="modal-dialog modal-dialog-centered" role="document">
    			<div class="modal-content">
    				<div class="modal-header">
    					<h4 class="modal-title" id="exampleModalLongTitle">Update Account</h4>
    					<button type="button" class="close" data-dismiss="modal"
    						aria-label="Close">
    						<span aria-hidden="true">&times;</span>
    					</button>
    				</div>
    				<div class="modal-body">
    					<input type="text" id="text-mahedt" class="form-control" disabled="disabled">
    					<br/>
    					<input type="text" id="text-tenhedt" class="form-control">
    					<br/>
    				</div>
    				<div class="modal-footer">
    					<button type="button" class="btn btn-secondary"
    						data-dismiss="modal">Close</button>
    					<button id="btn-save-update" type="button" class="btn btn-primary">Save changes</button>
    				</div>
    			</div>
    		</div>
    		
    	</div>
        </div>
        <footer>
            
        </footer>
    </body>
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/sha256.min.js"></script>
    <script src="/js/hedt.js"></script>


    </html>