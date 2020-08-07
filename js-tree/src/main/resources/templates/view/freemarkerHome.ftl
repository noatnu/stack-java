<html xmlns:c="http://www.w3.org/1999/html" xmlns:fmt="http://www.w3.org/1999/html">
<#--<#assign ww=JspTaglibs["/WEB-INF/webwork.tld"] />-->
<#--<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"]/>-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>spring boot</title>
    <#include "/baseStyle.ftl">
</head>
<body>

<div class="wrapper">
    <nav id="sidebar" class="sidebar">
        <div class="sidebar-content js-simplebar" data-simplebar="init">
            <div class="simplebar-wrapper" style="margin: 0px;">
                <div class="simplebar-height-auto-observer-wrapper">
                    <div class="simplebar-height-auto-observer"></div>
                </div>
                <div class="simplebar-mask">
                    <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                        <div class="simplebar-content-wrapper" style="height: 100%; overflow: hidden scroll;">
                            <div class="simplebar-content" style="padding: 0px;">
                                <a class="sidebar-brand" href="index.html">
                                    <span class="align-middle">AdminKit</span>
                                </a>

                                <ul class="sidebar-nav">
                                    <li class="sidebar-header">
                                        Pages
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="index.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-sliders align-middle">
                                                <line x1="4" y1="21" x2="4" y2="14"></line>
                                                <line x1="4" y1="10" x2="4" y2="3"></line>
                                                <line x1="12" y1="21" x2="12" y2="12"></line>
                                                <line x1="12" y1="8" x2="12" y2="3"></line>
                                                <line x1="20" y1="21" x2="20" y2="16"></line>
                                                <line x1="20" y1="12" x2="20" y2="3"></line>
                                                <line x1="1" y1="14" x2="7" y2="14"></line>
                                                <line x1="9" y1="8" x2="15" y2="8"></line>
                                                <line x1="17" y1="16" x2="23" y2="16"></line>
                                            </svg>
                                            <span class="align-middle">Dashboard</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="pages-profile.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user align-middle">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg>
                                            <span class="align-middle">Profile</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="pages-settings.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-settings align-middle">
                                                <circle cx="12" cy="12" r="3"></circle>
                                                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
                                            </svg>
                                            <span class="align-middle">Settings</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="pages-invoice.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-credit-card align-middle">
                                                <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                                                <line x1="1" y1="10" x2="23" y2="10"></line>
                                            </svg>
                                            <span class="align-middle">Invoice</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="pages-blank.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-book align-middle">
                                                <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
                                                <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
                                            </svg>
                                            <span class="align-middle">Blank</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-header">
                                        Tools &amp; Components
                                    </li>
                                    <li class="sidebar-item active">
                                        <a href="#ui" data-toggle="collapse" class="sidebar-link">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-briefcase align-middle">
                                                <rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect>
                                                <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path>
                                            </svg>
                                            <span class="align-middle">UI Elements</span>
                                        </a>
                                        <ul id="ui" class="sidebar-dropdown list-unstyled collapse show"
                                            data-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="ui-alerts.html">Alerts</a></li>
                                            <li class="sidebar-item active"><a class="sidebar-link"
                                                                               href="ui-buttons.html">Buttons</a>
                                            </li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="ui-cards.html">Cards</a>
                                            </li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="ui-general.html">General</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="ui-grid.html">Grid</a>
                                            </li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="ui-modals.html">Modals</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link" href="ui-typography.html">Typography</a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="icons-feather.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-coffee align-middle">
                                                <path d="M18 8h1a4 4 0 0 1 0 8h-1"></path>
                                                <path d="M2 8h16v9a4 4 0 0 1-4 4H6a4 4 0 0 1-4-4V8z"></path>
                                                <line x1="6" y1="1" x2="6" y2="4"></line>
                                                <line x1="10" y1="1" x2="10" y2="4"></line>
                                                <line x1="14" y1="1" x2="14" y2="4"></line>
                                            </svg>
                                            <span class="align-middle">Icons</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a href="#forms" data-toggle="collapse" class="sidebar-link collapsed">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-check-circle align-middle">
                                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                                <polyline points="22 4 12 14.01 9 11.01"></polyline>
                                            </svg>
                                            <span class="align-middle">Forms</span>
                                        </a>
                                        <ul id="forms" class="sidebar-dropdown list-unstyled collapse "
                                            data-parent="#sidebar">
                                            <li class="sidebar-item"><a class="sidebar-link" href="forms-layouts.html">Form
                                                    Layouts</a></li>
                                            <li class="sidebar-item"><a class="sidebar-link"
                                                                        href="forms-basic-inputs.html">Basic
                                                    Inputs</a></li>
                                        </ul>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="tables-bootstrap.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-list align-middle">
                                                <line x1="8" y1="6" x2="21" y2="6"></line>
                                                <line x1="8" y1="12" x2="21" y2="12"></line>
                                                <line x1="8" y1="18" x2="21" y2="18"></line>
                                                <line x1="3" y1="6" x2="3.01" y2="6"></line>
                                                <line x1="3" y1="12" x2="3.01" y2="12"></line>
                                                <line x1="3" y1="18" x2="3.01" y2="18"></line>
                                            </svg>
                                            <span class="align-middle">Tables</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-header">
                                        Plugins &amp; Addons
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="charts-chartjs.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-bar-chart-2 align-middle">
                                                <line x1="18" y1="20" x2="18" y2="10"></line>
                                                <line x1="12" y1="20" x2="12" y2="4"></line>
                                                <line x1="6" y1="20" x2="6" y2="14"></line>
                                            </svg>
                                            <span class="align-middle">Charts</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-item">
                                        <a class="sidebar-link" href="maps-google.html">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-map align-middle">
                                                <polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon>
                                                <line x1="8" y1="2" x2="8" y2="18"></line>
                                                <line x1="16" y1="6" x2="16" y2="22"></line>
                                            </svg>
                                            <span class="align-middle">Maps</span>
                                        </a>
                                    </li>
                                </ul>

                                <div class="sidebar-cta">
                                    <div class="sidebar-cta-content">
                                        <strong class="d-inline-block mb-2">Upgrade to Pro</strong>
                                        <div class="mb-3 text-sm">
                                            Are you looking for more components?
                                        </div>
                                        <a href="#" target="_blank"
                                           class="btn btn-outline-primary btn-block">Upgrade</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simplebar-placeholder" style="width: auto; height: 1151px;"></div>
            </div>
            <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
            </div>
            <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                <div class="simplebar-scrollbar"
                     style="height: 132px; transform: translate3d(0px, 0px, 0px); display: block;"></div>
            </div>
        </div>
    </nav>

    <div class="main">
        <nav class="navbar navbar-expand navbar-light navbar-bg">
            <a class="sidebar-toggle d-flex">
                <i class="hamburger align-self-center"></i>
            </a>

            <form class="form-inline d-none d-sm-inline-block">
                <div class="input-group input-group-navbar">
                    <input type="text" class="form-control" placeholder="Search…" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn" type="button">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                 stroke-linejoin="round" class="feather feather-search align-middle">
                                <circle cx="11" cy="11" r="8"></circle>
                                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                            </svg>
                        </button>
                    </div>
                </div>
            </form>

            <div class="navbar-collapse collapse">
                <ul class="navbar-nav navbar-align">
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-toggle="dropdown">
                            <div class="position-relative">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-bell align-middle">
                                    <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                    <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                                </svg>
                                <span class="indicator">4</span>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0"
                             aria-labelledby="alertsDropdown">
                            <div class="dropdown-menu-header">
                                4 New Notifications
                            </div>
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-alert-circle text-danger">
                                                <circle cx="12" cy="12" r="10"></circle>
                                                <line x1="12" y1="8" x2="12" y2="12"></line>
                                                <line x1="12" y1="16" x2="12.01" y2="16"></line>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Update completed</div>
                                            <div class="text-muted small mt-1">Restart server 12 to complete the
                                                update.
                                            </div>
                                            <div class="text-muted small mt-1">30m ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-bell text-warning">
                                                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Lorem ipsum</div>
                                            <div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate
                                                hendrerit et.
                                            </div>
                                            <div class="text-muted small mt-1">2h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-home text-primary">
                                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                                <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Login from 192.186.1.8</div>
                                            <div class="text-muted small mt-1">5h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-user-plus text-success">
                                                <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="8.5" cy="7" r="4"></circle>
                                                <line x1="20" y1="8" x2="20" y2="14"></line>
                                                <line x1="23" y1="11" x2="17" y2="11"></line>
                                            </svg>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">New connection</div>
                                            <div class="text-muted small mt-1">Christina accepted your request.</div>
                                            <div class="text-muted small mt-1">14h ago</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-menu-footer">
                                <a href="#" class="text-muted">Show all notifications</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-toggle="dropdown">
                            <div class="position-relative">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-message-square align-middle">
                                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                </svg>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0"
                             aria-labelledby="messagesDropdown">
                            <div class="dropdown-menu-header">
                                <div class="position-relative">
                                    4 New Messages
                                </div>
                            </div>
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <img src="${request.contextPath}/static/adminKit/img/avatars/avatar-5.jpg" class="avatar img-fluid rounded-circle"
                                                 alt="Vanessa Tucker">
                                        </div>
                                        <div class="col-10 pl-2">
                                            <div class="text-dark">Vanessa Tucker</div>
                                            <div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu
                                                tortor.
                                            </div>
                                            <div class="text-muted small mt-1">15m ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <img src="${request.contextPath}/static/adminKit/img/avatars/avatar-2.jpg" class="avatar img-fluid rounded-circle"
                                                 alt="William Harris">
                                        </div>
                                        <div class="col-10 pl-2">
                                            <div class="text-dark">William Harris</div>
                                            <div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.
                                            </div>
                                            <div class="text-muted small mt-1">2h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <img src="${request.contextPath}/static/adminKit/img/avatars/avatar-4.jpg" class="avatar img-fluid rounded-circle"
                                                 alt="Christina Mason">
                                        </div>
                                        <div class="col-10 pl-2">
                                            <div class="text-dark">Christina Mason</div>
                                            <div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
                                            <div class="text-muted small mt-1">4h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-2">
                                            <img src="${request.contextPath}/static/adminKit/img/avatars/avatar-3.jpg" class="avatar img-fluid rounded-circle"
                                                 alt="Sharon Lessman">
                                        </div>
                                        <div class="col-10 pl-2">
                                            <div class="text-dark">Sharon Lessman</div>
                                            <div class="text-muted small mt-1">Aenean tellus metus, bibendum sed,
                                                posuere ac, mattis non.
                                            </div>
                                            <div class="text-muted small mt-1">5h ago</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-menu-footer">
                                <a href="#" class="text-muted">Show all messages</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-toggle="dropdown">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                 stroke-linejoin="round" class="feather feather-settings align-middle">
                                <circle cx="12" cy="12" r="3"></circle>
                                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
                            </svg>
                        </a>

                        <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-toggle="dropdown">
                            <img src="${request.contextPath}/static/adminKit/img/avatars/avatar.jpg" class="avatar img-fluid rounded mr-1" alt="Charles Hall">
                            <span class="text-dark">Charles Hall</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="pages-profile.html">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-user align-middle mr-1">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                </svg>
                                Profile</a>
                            <a class="dropdown-item" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-pie-chart align-middle mr-1">
                                    <path d="M21.21 15.89A10 10 0 1 1 8 2.83"></path>
                                    <path d="M22 12A10 10 0 0 0 12 2v10z"></path>
                                </svg>
                                Analytics</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="pages-settings.html">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-settings align-middle mr-1">
                                    <circle cx="12" cy="12" r="3"></circle>
                                    <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
                                </svg>
                                Settings &amp; Privacy</a>
                            <a class="dropdown-item" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-help-circle align-middle mr-1">
                                    <circle cx="12" cy="12" r="10"></circle>
                                    <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path>
                                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                                </svg>
                                Help Center</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Log out</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="content">
            <div class="container-fluid p-0">

                <h1 class="h3 mb-3">Buttons</h1>

                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Basic Buttons</h5>
                                <h6 class="card-subtitle text-muted">Default Bootstrap buttons style.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn btn-primary">Primary</button>
                                    <button class="btn btn-secondary">Secondary</button>
                                    <button class="btn btn-success">Success</button>
                                    <button class="btn btn-danger">Danger</button>
                                    <button class="btn btn-warning">Warning</button>
                                    <button class="btn btn-info">Info</button>
                                </div>
                                <div>
                                    <button class="btn btn-primary" disabled="">Primary</button>
                                    <button class="btn btn-secondary" disabled="">Secondary</button>
                                    <button class="btn btn-success" disabled="">Success</button>
                                    <button class="btn btn-danger" disabled="">Danger</button>
                                    <button class="btn btn-warning" disabled="">Warning</button>
                                    <button class="btn btn-info" disabled="">Info</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Rounded Buttons</h5>
                                <h6 class="card-subtitle text-muted">Rounded Bootstrap buttons.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn btn-pill btn-primary">Primary</button>
                                    <button class="btn btn-pill btn-secondary">Secondary</button>
                                    <button class="btn btn-pill btn-success">Success</button>
                                    <button class="btn btn-pill btn-danger">Danger</button>
                                    <button class="btn btn-pill btn-warning">Warning</button>
                                    <button class="btn btn-pill btn-info">Info</button>
                                </div>
                                <div>
                                    <button class="btn btn-pill btn-primary" disabled="">Primary</button>
                                    <button class="btn btn-pill btn-secondary" disabled="">Secondary</button>
                                    <button class="btn btn-pill btn-success" disabled="">Success</button>
                                    <button class="btn btn-pill btn-danger" disabled="">Danger</button>
                                    <button class="btn btn-pill btn-warning" disabled="">Warning</button>
                                    <button class="btn btn-pill btn-info" disabled="">Info</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Outline Buttons</h5>
                                <h6 class="card-subtitle text-muted">Buttons without background color.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn btn-outline-primary">Primary</button>
                                    <button class="btn btn-outline-secondary">Secondary</button>
                                    <button class="btn btn-outline-success">Success</button>
                                    <button class="btn btn-outline-danger">Danger</button>
                                    <button class="btn btn-outline-warning">Warning</button>
                                    <button class="btn btn-outline-info">Info</button>
                                </div>
                                <div>
                                    <button class="btn btn-outline-primary" disabled="">Primary</button>
                                    <button class="btn btn-outline-secondary" disabled="">Secondary</button>
                                    <button class="btn btn-outline-success" disabled="">Success</button>
                                    <button class="btn btn-outline-danger" disabled="">Danger</button>
                                    <button class="btn btn-outline-warning" disabled="">Warning</button>
                                    <button class="btn btn-outline-info" disabled="">Info</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Square Buttons</h5>
                                <h6 class="card-subtitle text-muted">Buttons without border radius.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn btn-square btn-primary">Primary</button>
                                    <button class="btn btn-square btn-secondary">Secondary</button>
                                    <button class="btn btn-square btn-success">Success</button>
                                    <button class="btn btn-square btn-danger">Danger</button>
                                    <button class="btn btn-square btn-warning">Warning</button>
                                    <button class="btn btn-square btn-info">Info</button>
                                </div>
                                <div>
                                    <button class="btn btn-square btn-primary" disabled="">Primary</button>
                                    <button class="btn btn-square btn-secondary" disabled="">Secondary</button>
                                    <button class="btn btn-square btn-success" disabled="">Success</button>
                                    <button class="btn btn-square btn-danger" disabled="">Danger</button>
                                    <button class="btn btn-square btn-warning" disabled="">Warning</button>
                                    <button class="btn btn-square btn-info" disabled="">Info</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Icon Buttons</h5>
                                <h6 class="card-subtitle text-muted">Default Bootstrap buttons with icons.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn btn-primary"><i class="far fa-smile"></i> Primary</button>
                                    <button class="btn btn-secondary"><i class="fas fa-globe-americas"></i> Secondary
                                    </button>
                                    <button class="btn btn-success"><i class="fas fa-check"></i> Success</button>
                                    <button class="btn btn-danger"><i class="fas fa-times"></i> Danger</button>
                                    <button class="btn btn-warning"><i class="fas fa-exclamation"></i> Warning</button>
                                    <button class="btn btn-info"><i class="fas fa-info"></i> Info</button>
                                </div>

                                <div>
                                    <button class="btn btn-primary"><i class="far fa-smile"></i></button>
                                    <button class="btn btn-secondary"><i class="fas fa-globe-americas"></i></button>
                                    <button class="btn btn-success"><i class="fas fa-check"></i></button>
                                    <button class="btn btn-danger"><i class="fas fa-times"></i></button>
                                    <button class="btn btn-warning"><i class="fas fa-exclamation"></i></button>
                                    <button class="btn btn-info"><i class="fas fa-info"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Social Buttons</h5>
                                <h6 class="card-subtitle text-muted">Social buttons with icons.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn mb-1 btn-facebook"><i class="align-middle fab fa-facebook"></i>
                                        Facebook
                                    </button>
                                    <button class="btn mb-1 btn-twitter"><i class="align-middle fab fa-twitter"></i>
                                        Twitter
                                    </button>
                                    <button class="btn mb-1 btn-google"><i class="align-middle fab fa-google"></i>
                                        Google
                                    </button>
                                    <button class="btn mb-1 btn-youtube"><i class="align-middle fab fa-youtube"></i>
                                        Youtube
                                    </button>
                                    <button class="btn mb-1 btn-vimeo"><i class="align-middle fab fa-vimeo"></i> Vimeo
                                    </button>
                                    <button class="btn mb-1 btn-dribbble"><i class="align-middle fab fa-dribbble"></i>
                                        Dribbble
                                    </button>
                                    <button class="btn mb-1 btn-github"><i class="align-middle fab fa-github"></i>
                                        Github
                                    </button>
                                    <button class="btn mb-1 btn-instagram"><i class="align-middle fab fa-instagram"></i>
                                        Instagram
                                    </button>
                                    <button class="btn mb-1 btn-pinterest"><i class="align-middle fab fa-pinterest"></i>
                                        Pinterest
                                    </button>
                                    <button class="btn mb-1 btn-flickr"><i class="align-middle fab fa-flickr"></i>
                                        Flickr
                                    </button>
                                    <button class="btn mb-1 btn-bitbucket"><i class="align-middle fab fa-bitbucket"></i>
                                        Bitbucket
                                    </button>
                                </div>
                                <div>
                                    <button class="btn mb-1 btn-facebook"><i
                                                class="align-middle fab my-1 fa-facebook"></i></button>
                                    <button class="btn mb-1 btn-twitter"><i
                                                class="align-middle fab my-1 fa-twitter"></i></button>
                                    <button class="btn mb-1 btn-google"><i class="align-middle fab my-1 fa-google"></i>
                                    </button>
                                    <button class="btn mb-1 btn-youtube"><i
                                                class="align-middle fab my-1 fa-youtube"></i></button>
                                    <button class="btn mb-1 btn-vimeo"><i class="align-middle fab my-1 fa-vimeo"></i>
                                    </button>
                                    <button class="btn mb-1 btn-dribbble"><i
                                                class="align-middle fab my-1 fa-dribbble"></i></button>
                                    <button class="btn mb-1 btn-github"><i class="align-middle fab my-1 fa-github"></i>
                                    </button>
                                    <button class="btn mb-1 btn-instagram"><i
                                                class="align-middle fab my-1 fa-instagram"></i></button>
                                    <button class="btn mb-1 btn-pinterest"><i
                                                class="align-middle fab my-1 fa-pinterest"></i></button>
                                    <button class="btn mb-1 btn-flickr"><i class="align-middle fab my-1 fa-flickr"></i>
                                    </button>
                                    <button class="btn mb-1 btn-bitbucket"><i
                                                class="align-middle fab my-1 fa-bitbucket"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Button Sizes</h5>
                                <h6 class="card-subtitle text-muted">Fancy larger or smaller buttons.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <button class="btn btn-primary btn-sm">Small</button>
                                    <button class="btn btn-primary">Medium</button>
                                    <button class="btn btn-primary btn-lg">Large</button>
                                </div>
                                <div>
                                    <button class="btn btn-primary btn-sm"><i class="fas fa-globe-americas"></i> Small
                                    </button>
                                    <button class="btn btn-primary"><i class="fas fa-globe-americas"></i> Medium
                                    </button>
                                    <button class="btn btn-primary btn-lg"><i class="fas fa-globe-americas"></i> Large
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Button Dropdown</h5>
                                <h6 class="card-subtitle text-muted">Dropdowns styles with buttons.</h6>
                            </div>
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Primary
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-secondary dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Secondary
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-success dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Success
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-danger dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Danger
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-warning dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Warning
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-info dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Info
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-primary dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Primary
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-secondary dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Secondary
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-success dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Success
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-danger dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Danger
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-warning dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Warning
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-info dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Info
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">Button Group</h5>
                                <h6 class="card-subtitle text-muted">Button group components.</h6>
                            </div>
                            <div class="card-body">
                                <h6 class="card-subtitle mb-2 text-muted">Horizontal button group</h6>
                                <div class="btn-group btn-group-lg mb-3" role="group" aria-label="Large button group">
                                    <button type="button" class="btn btn-secondary">Left</button>
                                    <button type="button" class="btn btn-secondary">Middle</button>
                                    <button type="button" class="btn btn-secondary">Right</button>
                                </div>
                                <br>
                                <div class="btn-group mb-3" role="group" aria-label="Default button group">
                                    <button type="button" class="btn btn-secondary">Left</button>
                                    <button type="button" class="btn btn-secondary">Middle</button>
                                    <button type="button" class="btn btn-secondary">Right</button>
                                </div>
                                <br>
                                <div class="btn-group btn-group-sm mb-4" role="group" aria-label="Small button group">
                                    <button type="button" class="btn btn-secondary">Left</button>
                                    <button type="button" class="btn btn-secondary">Middle</button>
                                    <button type="button" class="btn btn-secondary">Right</button>
                                </div>

                                <h6 class="card-subtitle mb-2 text-muted">Button toolbar</h6>
                                <div class="btn-toolbar mb-4" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group mr-2" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-secondary">1</button>
                                        <button type="button" class="btn btn-secondary">2</button>
                                        <button type="button" class="btn btn-secondary">3</button>
                                        <button type="button" class="btn btn-secondary">4</button>
                                    </div>
                                    <div class="btn-group mr-2" role="group" aria-label="Second group">
                                        <button type="button" class="btn btn-secondary">5</button>
                                        <button type="button" class="btn btn-secondary">6</button>
                                        <button type="button" class="btn btn-secondary">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-secondary">8</button>
                                    </div>
                                </div>

                                <h6 class="card-subtitle mb-2 text-muted">Vertical button group</h6>
                                <div class="btn-toolbar">
                                    <div class="btn-group-vertical mr-2" role="group"
                                         aria-label="Vertical button group">
                                        <button type="button" class="btn btn-primary">Button</button>
                                        <button type="button" class="btn btn-primary">Button</button>
                                        <button type="button" class="btn btn-primary">Button</button>
                                    </div>
                                    <div class="btn-group-vertical mr-2" role="group"
                                         aria-label="Vertical button group">
                                        <button type="button" class="btn btn-success">Button</button>
                                        <button type="button" class="btn btn-success">Button</button>
                                        <button type="button" class="btn btn-success">Button</button>
                                    </div>
                                    <div class="btn-group-vertical mr-2" role="group"
                                         aria-label="Vertical button group">
                                        <button type="button" class="btn btn-warning">Button</button>
                                        <button type="button" class="btn btn-warning">Button</button>
                                        <button type="button" class="btn btn-warning">Button</button>
                                    </div>
                                    <div class="btn-group-vertical mr-2" role="group"
                                         aria-label="Vertical button group">
                                        <button type="button" class="btn btn-danger">Button</button>
                                        <button type="button" class="btn btn-danger">Button</button>
                                        <button type="button" class="btn btn-danger">Button</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
        </main>

        <footer class="footer">
            <div class="container-fluid">
                <div class="row text-muted">
                    <div class="col-6 text-left">
                        <p class="mb-0">
                            <a href="index.html" class="text-muted"><strong>AdminKit Demo</strong></a> ©
                        </p>
                    </div>
                    <div class="col-6 text-right">
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a class="text-muted" href="#">Support</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="#">Help Center</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="#">Privacy</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="#">Terms</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </div>

</div>


</body>


<script>
    $(function () {
        $('#datetimepicker-dashboard').datetimepicker({
            inline: true,
            sideBySide: false,
            format: 'L'
        });
    });
</script>
</html>