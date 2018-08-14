<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<title>权益列表</title>
	<%@ include file="/inc/inc.jsp" %>
</head>
<body>

<div class="content-wrapper-iframe"><!--右侧灰色背景-->
	<div class="row"><!--外围框架-->
		<div class="col-lg-12"><!--删格化-->
			<div class="row"><!--内侧框架-->
				<div class="col-lg-12"><!--删格化-->
					<div class="main-box clearfix"><!--白色背景-->
						<!-- 查询条件 -->
						<div class="form-label">
							<ul>
								<li class="col-md-6">
									<p class="word">权益编码</p>
									<p><input id="discountCode" type="text" class="int-text int-medium"></p>
									<!-- <p class="sos"><a href="javascript:void(0);">高级搜索<i class="fa fa-caret-down"></i></a></p> -->
								</li>
								<li class="col-md-6">
									<p class="word">权益名称</p>
									<p><input id="discountName" type="text" class="int-text int-medium"></p>
								</li>
							</ul>
							<ul>
								<li class="col-md-6">
									<p class="word">权益分类</p>
									<p>
									<select required id="classCode" name="classCode" originClassCode="${responseVo.classCode}" class="select select-medium" >
				                    		<option value="">--请选择--</option>
				                    	</select>
				                    </p>
								</li>
								<li class="col-md-6">
									<p class="word">权益类型</p>
									<p>
									<select required id="discountType" name="discountType" originDiscountType="${responseVo.discountType}" class="select select-medium">
				                    		<option value="">--请选择--</option>
				                    	</select>
									</p>
								</li>
							</ul>
							<ul>
								<li class="col-md-6">
									<p class="word">&nbsp;</p>
									<p><input type="button" class="biu-btn  btn-primary btn-blue btn-medium ml-10"
												  id="selectDiscountList" value="查  询"></p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row"><!--外围框架-->
		<div class="col-lg-12"><!--删格化-->
			<div class="row"><!--内侧框架-->
				<div class="col-lg-12"><!--删格化-->
					<div class="main-box clearfix"><!--白色背景-->
						<!--标题-->
						<header class="main-box-header clearfix">
							<h2 class="pull-left">权益列表</h2>
						</header>
						<div class="row"><!--删格化-->
                                <p class="right pr-30">
                                    <input type="button" class="biu-btn  btn-primary btn-blue btn-auto  ml-5"
                                           value="新  增" onclick="javaScript:window.location.href = '${_base}/discount/add';">
                                </p>
                        </div>
						<!--标题结束-->
						<div class="main-box-body clearfix">
							<!--table表格-->
							<div class="table-responsive clearfix">
								<table class="table table-hover table-border table-bordered">
									<thead>
									<tr>
										<th width="10%">权益分类</th>
										<th width="10%">权益编码</th>
										<th width="20%">权益名称</th>
										<th width="15%">权益类型</th>
										<th width="15%">创建时间</th>
										<th width="20%">操作</th>
									</tr>
									</thead>
									<tbody id="searchDiscountData">
									</tbody>

								</table>
								<div id="showMessageDiv"></div>
								<script id="searchDiscountTemple" type="text/template">
									{{for result ~pageNo=pageNo ~pageSize=pageSize}}
									<tr>
										<td>{{:className}}</td>
										<td>{{:discountCode}}</td>
										<td>{{:discountName}}</td>
										<td>
											{{:discountTypeName}}
										</td>
										<td>{{:createDateStr}}</td>
                                        <td>
											<a href="javaScript:void(0)" style="color: #1295f2;" onclick="pager._showDelConf('{{:discountCode}}')" class="blue-border">删除</a>
											<a href="${_base}/discount/toView/{{:discountCode}}" style="color: #1295f2;" class="blue-border">查看详情</a>
											<a href="${_base}/discount/update/{{:discountCode}}" style="color: #1295f2;" class="blue-border">修改</a>
										</td>
									</tr>
									{{/for}}
								</script>
							</div>
							<!--分页-->
							<div class="paging">
								<ul id="pagination-ul">
								</ul>
							</div>
							<!--分页结束-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	var pager;
	var count = '${count}';
	var discountList = '${discountList}';
	var discountEditInfo = '${discountEditInfo}';
	(function () {
		<%-- 展示日历 --%>
		/* $('#selectDiv').delegate('.fa-calendar','click',function(){
			var calInput = $(this).parent().prev();
			var timeId = calInput.attr('id');
			console.log("click calendar "+timeId);
			WdatePicker({el:timeId,readOnly:true});
		}); */
		<%-- 高级区域 --%>
		/* $(".form-label ul li .sos a").click(function () {
			$(".open ").slideToggle(100);
			$(".nav-form ").toggleClass("reorder remove");
		}); */
		seajs.use(['app/jsp/discount/discountlist','app/util/center-hind'], function(storageList,centerHind) {
			pager = new storageList({element : document.body});
			pager.render();
			new centerHind({element : document.body}).render(); 
		});
	})();
</script>
</html>