<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge,chrome=1" />
	<title>历史合同查询</title>
	<link rel="stylesheet" type="text/css" href="/stylesheets/business-header.css">
	<link rel="stylesheet" type="text/css" href="/stylesheets/customer-footer.css">
	<link rel="stylesheet" type="text/css" href="/stylesheets/business-communication-history-inquiry.css">
</head>
<body>
	<jsp:include page="investor-header.jsp"></jsp:include>
	<div id="mainContainer">
		<div id="main">
			<div id="mainContent">
            <a href="/springmvc/investor/investorChat">
                <div id="comebackButton">返回上一层<img src="/images/back.png"></div>
            </a>
                     <div id="searchForm">
					<div id="searchInput">
                    <div id="textClear">
                            <a href=""><img src="/images/cancel.png"></a>
                        </div>
						<input id="searchText" type="text" placeholder="请输入关键字搜索">
					</div>
					<a href="" style="display:inline;">
                         <div id="searchButton">搜索</div>
                     </a>
				    </div>
                    <div id="selectForm">
                        <p>排序：</p>
                        <select>
                            <option></option>
                            <option>接收时间</option>
                            <option>签约方</option>
                        </select>
                    </div>
                    <div id="TableList">
                    	<table class="hovertable">
                        
                        <tr>
                        	<th>接收时间</th><th>合同发送方</th><th class="rightItem">操作</th>
                        </tr>
                        
                        <tr class="tr-list">
                            	
                           		<td>
                          				<input type="checkbox" data-index="1">
                          				<a href="/springmvc/investor/modifyContract" title="">
                          					2015-09-01
                          				</a>
                          		</td>
                          		<td>
                          			<a href="/springmvc/investor/modifyContract" title="">软件开发</a>
                          		</td>
                          		<td>
                          			<span class="del-btn"><a href="javascript:void(0);" data-index="1" class="del">删除</a></span>
                           		
                           		</td>
                            	 
                        </tr>
                        <tr class="tr-list">
                            <td>
                       				<input type="checkbox" data-index="2">
                       				<a href="/springmvc/investor/modifyContract" title="">
                       					2015-08-29
                       				</a>
                          		</td>
                          		<td>
                          			<a href="/springmvc/investor/modifyContract" title="">大黑山</a>
                          		</td>
                          		<td>
                          			<span class="del-btn"><a href="javascript:void(0);" data-index="2" class="del">删除</a></span>
                           		
                           		</td>
                        </tr>
                         <tr class="tr-list">
                            <td>
                          				<input type="checkbox" data-index="3">
                          				<a href="/springmvc/investor/modifyContract" title="">
                          					2015-08-27
                          				</a>
                          		</td>
                          		<td>
                          			<a href="/springmvc/investor/modifyContract" title="">web开发</a>
                          		</td>
                          		<td>
                          			<span class="del-btn"><a href="javascript:void(0);" data-index="3" class="del">删除</a></span>
                           		
                           		</td>
                        </tr>
                          <tr class="tr-list">
                            <td>
                          				<input type="checkbox" data-index="4">
                          				<a href="/springmvc/investor/modifyContract" title="">
                          					2015-08-25
                          				</a>
                          		</td>
                          		<td>
                          			<a href="/springmvc/investor/modifyContract" title="">软件开发</a>
                          		</td>
                          		<td>
                          			<span class="del-btn"><a href="javascript:void(0);" data-index="4" class="del">删除</a></span>
                           		
                           		</td>
                        </tr>
                    </table>
                    <!-- <a href=""> --><div id="deleteItemsButton">批量删除</div><!-- </a> -->
                    </div>
				<div id="page">
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
    	</div>
    <script type="text/javascript">
    window.onload = function() {
     var tr = document.getElementsByClassName('tr-list');
     var hovertable = document.getElementsByClassName('hovertable')[0];
     
     var delArray = [];
     hovertable.onclick = function(e) {
 
    	 if(e.target.tagName = 'A' && e.target.className == 'del') {
    		tr[e.target.dataset.index].parentNode.removeChild(tr[e.target.dataset.index])
  
    	 }
    	 
    	 if(e.target.tagName == 'INPUT') {
    		
    		 delArray.push([e.target.dataset.index]);
    		 
    	 }
     };
     
     var deleteItemsButton = document.getElementById('deleteItemsButton');
     
     deleteItemsButton.onclick = function(e) {
 
    	if(delArray.length == 0) {
    		
    		 return;
    	 } 
    	 for(var i in delArray) {
    		
    		 tr[delArray[i]].parentNode.removeChild(tr[delArray[i]]);
    	 }
     }
     
    }
    </script>
</body>

</html>