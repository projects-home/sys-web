<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!--左侧菜单-->
    <div id="nav-col">
    <section id="col-left" class="col-left-nano">
        <div id="col-left-inner" class="col-left-nano-content">
            <div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#"><i class="fa fa-home"></i><span>系统控制台</span>
                        <!--<span class="label label-info label-circle pull-right">28</span>--></a></li>
                    <li>
                        <a href="#" class="dropdown-toggle">
                            <i class="fa fa-inbox"></i>
                            <span>商品管理</span>
                            <i class="fa fa-chevron-circle-right drop-icon"></i>
                        </a>
                        <!--二级菜单-->
                        <ul class="submenu">
                            <li><a href="${_base}/normprodedit/add" target="mainFrame">新增商品</a></li>
                            <li><a href="${_base}/normprodquery/list" target="mainFrame">商品列表</a></li>
                        </ul>
                        <!--二级菜单结束-->
                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle">
                            <i class="fa icon-group"></i>
                            <span>客户管理</span>
                            <i class="fa fa-chevron-circle-right drop-icon"></i>
                        </a>
                        <!--二级菜单-->
                        <ul class="submenu">
                        	<li><a href="${_base}/customer/statisticalView" target="mainFrame">客户统计视图</a></li>
                            <li><a href="${_base}/customer/list" target="mainFrame">客户列表</a></li>
                            <li><a href="${_base}/customer/feedback" target="mainFrame">客户意见反馈管理</a></li>
                        </ul>
                        <!--二级菜单结束-->
                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle">
                            <i class="fa icon-tasks"></i>
                            <span>权益管理</span>
                            <i class="fa fa-chevron-circle-right drop-icon"></i>
                        </a>
                        <!--二级菜单-->
                        <ul class="submenu">
                            <li><a href="${_base}/discount/list" target="mainFrame">权益信息列表</a></li>
                            <li><a href="${_base}/discount/toCustDiscountList" target="mainFrame">客户权益查询</a></li>
                            <li><a href="${_base}/dstdiscountlevel/dstdiscountlevellist" target="mainFrame">级别列表</a></li>
                            <li><a href="${_base}/dstdiscountlevel/dstdiscountleveledit" target="mainFrame">级别编辑/新增</a></li>
                        </ul>
                        <!--二级菜单结束-->
                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle">
                            <i class="fa icon-tasks"></i>
                            <span>结算管理</span>
                            <i class="fa fa-chevron-circle-right drop-icon"></i>
                        </a>
                        <!--二级菜单-->
                        <ul class="submenu">
                            <li><a href="${_base}/account/upload" target="mainFrame">权益信息列表</a></li>
                        </ul>
                        <!--二级菜单结束-->
                    </li>
                </ul>
            </div>
        </div>
    </section>
    </div>
    <!--/左侧菜单结束-->