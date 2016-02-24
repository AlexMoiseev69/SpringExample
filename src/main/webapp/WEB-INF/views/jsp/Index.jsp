<%--
  Created by IntelliJ IDEA.
  User: amois_000
  Date: 11/8/2015
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Project by AlexMoiseev69</title>
    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<div class="navbar navbar-default navbar-fixed-top navbar-transparent">
    <div class="container">
        <div class="navbar-header">
            <a href="./" class="navbar-brand">
                <img src="http://pewex.pl/pictures/h3/h6/32-237790-producer_product-lego.png" height="20px">Alex Coming
            </a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="themes">Themes <span class="caret"></span></a>
                </li>
                <li>
                    <a class="navbar-brand" href="/hello">WorkLink</a>
                </li>
                <li>
                    <a class="navbar-brand" href="/login">Login</a>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a class="navbar-brand" href="#">About</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="jumbotron">
    <div class="container">
        <div>
            <p>First page</p>
        </div>
        <div class="col-md-offset-2 col-md-8">
            <div class="row">
                <a href="http://41.media.tumblr.com/f37ac708134914c471073e4c0b47328d/tumblr_mrn3dc10Wa1r1thfzo8_1280.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="People walking down stairs" class="col-sm-4">
                    <img src="//41.media.tumblr.com/f37ac708134914c471073e4c0b47328d/tumblr_mrn3dc10Wa1r1thfzo8_1280.jpg" class="img-responsive">
                </a>
                <a href="http://41.media.tumblr.com/838b44224e39c30cd43490deb11b919d/tumblr_mrn3dc10Wa1r1thfzo1_1280.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Man getting wet" class="col-sm-4">
                    <img src="//41.media.tumblr.com/838b44224e39c30cd43490deb11b919d/tumblr_mrn3dc10Wa1r1thfzo1_1280.jpg" class="img-responsive">
                </a>
                <a href="http://41.media.tumblr.com/e06a3513b0b36843f54bee99aeac689a/tumblr_mrn3dc10Wa1r1thfzo2_1280.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Someone lost their dress" class="col-sm-4">
                    <img src="//41.media.tumblr.com/e06a3513b0b36843f54bee99aeac689a/tumblr_mrn3dc10Wa1r1thfzo2_1280.jpg" class="img-responsive">
                </a>
            </div>
            <div class="row">
                <a href="http://41.media.tumblr.com/9d3e6a9c89a856a2ad0be3ab4ca598b2/tumblr_mrn3dc10Wa1r1thfzo4_1280.jpg" data-toggle="lightbox" data-gallery="multiimages" data-footer="Big ass waterfall- using footer instead of title" class="col-sm-4">
                    <img src="//41.media.tumblr.com/9d3e6a9c89a856a2ad0be3ab4ca598b2/tumblr_mrn3dc10Wa1r1thfzo4_1280.jpg" class="img-responsive">
                </a>
                <a href="http://40.media.tumblr.com/f9fcf4cae3468d96a324cae301c00998/tumblr_mrn3dc10Wa1r1thfzo3_1280.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Cool bottle" data-footer="Now fill it with whiskey" class="col-sm-4">
                    <img src="//40.media.tumblr.com/f9fcf4cae3468d96a324cae301c00998/tumblr_mrn3dc10Wa1r1thfzo3_1280.jpg" class="img-responsive">
                </a>
                <a href="http://36.media.tumblr.com/de356cd6570d7c26e73979467f296f67/tumblr_mrn3dc10Wa1r1thfzo6_1280.jpg" data-toggle="lightbox" class="col-sm-4">
                    <img src="//36.media.tumblr.com/de356cd6570d7c26e73979467f296f67/tumblr_mrn3dc10Wa1r1thfzo6_1280.jpg" class="img-responsive">
                </a>
            </div>

            <h3 class="page-header" id="youtube-gallery">Example #4: Gallery of YouTube Videos</h3>
            <div class="row">
                <div class="col-md-offset-1 col-md-10">
                    <div class="row">
                        <a href="http://www.youtube.com/watch?v=k6mFF3VmVAs" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                            <img src="//i1.ytimg.com/vi/yP11r5n5RNg/mqdefault.jpg" class="img-responsive">
                        </a>
                        <a href="http://youtu.be/iQ4D273C7Ac" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                            <img src="//i1.ytimg.com/vi/iQ4D273C7Ac/mqdefault.jpg" class="img-responsive">
                        </a>
                        <a href="//www.youtube.com/embed/b0jqPvpn3sY" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                            <img src="//i1.ytimg.com/vi/b0jqPvpn3sY/mqdefault.jpg" class="img-responsive">
                        </a>
                    </div>
                </div>
            </div>
            <h3 class="page-header" id="different-sizes">Example #8: Gallery of different sized images</h3>
            <div class="row">
                <div class="col-md-offset-1 col-md-10">
                    <div class="row">
                        <a href="https://lh5.googleusercontent.com/-jl_I19YyRVM/T0oJ3PCKZuI/AAAAAAAARRs/-gfmn1LxMJ8/s1280/tilt%2520shift%2520baseball.jpg" data-toggle="lightbox" data-gallery="imagesizes" class="col-sm-3">
                            <img src="//lh5.googleusercontent.com/-jl_I19YyRVM/T0oJ3PCKZuI/AAAAAAAARRs/-gfmn1LxMJ8/s128/tilt%20shift%20baseball.jpg" class="img-responsive">
                        </a>
                        <a href="https://lh4.googleusercontent.com/-lB-KDQlhdAE/T0oJGy0-UOI/AAAAAAAAQyw/K-1hc5M7EQM/s800/IMG_1193%2520-%2520original.jpg" data-toggle="lightbox" data-gallery="imagesizes" class="col-sm-3">
                            <img src="//lh4.googleusercontent.com/-lB-KDQlhdAE/T0oJGy0-UOI/AAAAAAAAQyw/K-1hc5M7EQM/s128/IMG_1193%20-%20original.jpg" class="img-responsive">
                        </a>
                        <a href="https://lh5.googleusercontent.com/-cfT_8CMK26k/T0oJMAxOl2I/AAAAAAAAQzI/TaDocinT6So/s912/P1010046%2520-%2520original.jpg" data-toggle="lightbox" data-gallery="imagesizes" class="col-sm-3">
                            <img src="//lh5.googleusercontent.com/-cfT_8CMK26k/T0oJMAxOl2I/AAAAAAAAQzI/TaDocinT6So/s128/P1010046%20-%20original.jpg" class="img-responsive">
                        </a>
                        <a href="https://lh3.googleusercontent.com/-kgMllZrb20s/T0oJD2nFklI/AAAAAAAAQyg/pnMfqLAGNJs/s1024/IMG_0736%2520-%2520original.jpg" data-toggle="lightbox" data-gallery="imagesizes" class="col-sm-3">
                            <img src="//lh3.googleusercontent.com/-kgMllZrb20s/T0oJD2nFklI/AAAAAAAAQyg/pnMfqLAGNJs/s128/IMG_0736%20-%20original.jpg" class="img-responsive">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <hr>
    <footer>
        <p>&copy; Alexander Moiseev 2015</p>
    </footer>
</div>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</html>
