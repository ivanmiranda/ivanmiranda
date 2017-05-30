<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="{BASE_URL}html/favicon-32x32.png">

    <meta name="description" content="">
    <meta name="author" content="">

	<ciclo reciente>
		<title>{APP_NAME} - {titulo}</title>
		<meta name="description" content="{contenidoCorto}" />
		<meta itemprop="name" content="{titulo}" />
		<meta itemprop="description" content="{contenidoCorto}" />
		<meta itemprop="image" content="{BASE_URL}html/images/blog/{post_imagen}" />
		<meta name="twitter:title" content="{titulo}" />
		<meta name="twitter:description" content="{contenidoCorto}" />
		<meta name="twitter:image" content="{BASE_URL}html/images/blog/{post_imagen}" />
		<meta property="og:title" content="{titulo}" />
		<meta property="og:url" content="{BASE_URL}blog/leer/{id}" />
		<meta property="og:image" content="{BASE_URL}html/images/blog/{post_imagen}" />
		<meta property="og:description" content="{contenidoCorto}" />
	</ciclo reciente>

	<!-- Twitter Card data -->
	<meta name="twitter:card" content="summary" />
	<meta name="twitter:site" content="@publisher_handle" />
	<meta name="twitter:creator" content="@author_handle">
	<!-- Open Graph data -->
	<meta property="og:type" content="article" />
	<meta property="og:site_name" content="{APP_NAME}" /meta property="fb:admins" content="1102321362" />

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href="{BASE_URL}html/css/style.css" rel="stylesheet">

</head>

<body id="page-top" class="index">

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{BASE_URL}">[coding]</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="{BASE_URL}blog">Blog</a>
                    </li>
                    <!--
                    <li class="page-scroll">
                        <a href="#about">eBooks</a>
                    </li>
                    -->
                    <li class="page-scroll">
                        <a href="#contact">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>