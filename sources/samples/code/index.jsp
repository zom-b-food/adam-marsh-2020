<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"; ?>
	<head>
		<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
		<title>Seattle Arts Photography - Seattle Arts Photography - Seattle Photographer</title>
		<META name="50mm @ F/4.5 FOR 1/640 sec. ISO-200"
		      content="Seattle Arts Photography. Photographer of expressions that tell a story. Seattle photographer Adam L Marsh has always longed to tell the stories of people he photographs. And he has always fostered a style and philosophy that endeavors to illuminate the soul of everything he sees. He looks for a person's humanity in their expressions complete with the good, bad, and ugly. And in the end, often discovers a true and soulful beauty that reveals a story about everyday people that we can relate to and perhaps guide us through this journey of life. He truely loves people, and helping them find this beauty behind the camera is his heartfelt legacy.">
		<META name="keywords"
		      content="seattle candid documentary photographer, seattle fine art photographer, seattle photographer, seattle photography studio, seattle portrait photographer, seattle child photographer, seattle special events photographer, seattle lifestyle photographer, personal online photo gallery, family online photo gallery, family online photo album, childrens online photo album, seattle online photographer, portrait photographer, child photographer, photographer of every day faces, candid photographer, street photographer, documentary photographer, seattle party photographer, seattle reunion photographer, seattle special occasions photographer, seattle family photographer, seattle childrens photographer, seattle acting headshots, seattle headshots photographer">
		<META name="robots" content="all">
		<META name="title" content="Seattle Arts Photography - Seattle">
		<meta name="google-site-verification" content="dzYiJ9JHcteyidct_aXUfN0IzrlORe26u2B-Oj6zBa0"/>
		<link rel="stylesheet" href="./galleriffic/css/galleriffic-2.css" type="text/css"/>
		<script type="text/javascript" src="./galleriffic/js/jquery-1.3.2.js"></script>
		<script type="text/javascript" src="./galleriffic/js/jquery.galleriffic.js"></script>
		<script type="text/javascript" src="./galleriffic/js/jquery.opacityrollover.js"></script>
		<!-- We only want the thunbnails to display when javascript is disabled -->
		<script type="text/javascript">    document.write('<style>.noscript { display: none; }</style>');</script>
		<link rel="stylesheet" href="./styles/seaArts.css" type="text/css">
	</head>
	<body>
		<div id="container-page">
			<div class="navbar"><span class="para">HOME</span>&nbsp;|&nbsp; <a href="./gallery/login.php">your
				gallery</a>&nbsp;|&nbsp; <a href="./rates.php">rates</a>&nbsp;|&nbsp; <a
					href="./contact.php">contact</a></div>
			<br clear="all"/>

			<div class="Right">
				<%-- Hidden comment <jsp:include page="../inc/sidebar.php">   --%>
				<?php include "../inc/sidebar.php"; ?>
			</div>
			<br clear="all"/>

			<div class="Left">
				<h2>~ Photographer, Adam L. Marsh</h2>

				<p class="first">Everyone loves a story. And every face has one.</p>

				<p>I have always longed to tell the stories of people I photograph. And I have always fostered a style
					and philosophy
					that endeavors to illuminate the soul of everything I see. I look for a person's humanity in their
					expressions
					complete with the good, bad, but never ugly ;). And in the end, I often discover a true and soulful
					beauty that
					reveals a story about everyday people that, hopefully, we can all relate to. I love people, and
					helping them find
					this beauty behind the camera is my number one goal. </p>

				<div id=BodyContentDiv>
					<!-- Start Advanced Gallery Html Containers -->
					<div id="gallery" class="content">
						<div id="controls" class="controls"></div>
						<div class="slideshow-container">
							<div id="loading" class="loader"></div>
							<div id="slideshow" class="slideshow"></div>
						</div>
						<div id="caption" class="caption-container"></div>
					</div>
					<div id="thumbs" class="navigation">
						<ul class="thumbs noscript">
							<li><a class="thumb" name="leaf" href="./galleriffic/photos/1.jpg"
							       title="&nbsp;"> <img
									src="./galleriffic/photos/1t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">135mm @ F/4 FOR 1/250 sec. ISO-100</div>
								</div>
							</li>
							<li><a class="thumb" name="drop" href="./galleriffic/photos/2.jpg"
							       title="Title #1"> <img
									src="./galleriffic/photos/2t.jpg" alt="Title #1"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">55mm @ F/3.6 FOR 1/80 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" name="bigleaf" href="./galleriffic/photos/3.jpg"
							       title="Title #2"> <img
									src="./galleriffic/photos/3t.jpg" alt="Title #2"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">180mm @ F/5.6 FOR 1/500 sec. ISO-100</div>
								</div>
							</li>
							<li><a class="thumb" name="lizard" href="./galleriffic/photos/4.jpg"
							       title="Title #3"> <img
									src="./galleriffic/photos/4t.jpg" alt="Title #3"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">135mm @ F/4 FOR 1/640 sec. ISO-400</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/24.jpg" title="Title #4"> <img
									src="./galleriffic/photos/24t.jpg" alt="Title #4"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">55mm @ F/6 FOR 1/160 sec. ISO-400</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/29.jpg" title="Title #5"> <img
									src="./galleriffic/photos/29t.jpg" alt="Title #5"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/7.5 FOR 1/100 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/8.jpg" title="Title #5"> <img
									src="./galleriffic/photos/8t.jpg" alt="Title #5"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">70mm @ F/5.4 FOR 1/500 sec. ISO-300</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/10.jpg" title="Title #6"> <img
									src="./galleriffic/photos/10t.jpg" alt="Title #6"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">100mm @ F/5 FOR 1/100 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/11.jpg" title="Title #11"> <img
									src="./galleriffic/photos/11t.jpg" alt="Title #11"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/5.6 for 1/125 sec. ISO-100</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/22.jpg" title="Title #8"> <img
									src="./galleriffic/photos/22t.jpg" alt="Title #8"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/4.5 FOR 1/500 sec. ISO-300</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/6.jpg" title="Title #9"> <img
									src="./galleriffic/photos/6t.jpg" alt="Title #9"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">70mm @ F/4 FOR 1/125 sec. ISO-400</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/23.jpg" title="Title #10"> <img
									src="./galleriffic/photos/23t.jpg" alt="Title #10"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">35mm @ F/4.5 FOR 1/100 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/26.jpg" title="Title #12"> <img
									src="./galleriffic/photos/26t.jpg" alt="Title #12"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/4.5 FOR 1/640 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/9.jpg" title="Title #7"> <img
									src="./galleriffic/photos/9t.jpg" alt="Title #7"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">150mm @ F/8 FOR 1/100 sec. ISO-100</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/27.jpg" title="Title #13"> <img
									src="./galleriffic/photos/27t.jpg" alt="Title #13"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">28mm @ F/4.5 FOR 1/640 sec. ISO-800</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/5.jpg" title="Title #14"> <img
									src="./galleriffic/photos/5t.jpg" alt="Title #14"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">150mm @ F/5.6 FOR 1/100 sec. ISO-100</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/7.jpg" title="Title #15"> <img
									src="./galleriffic/photos/7t.jpg" alt="Title #15"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">230mm @ F/7 FOR 1/1000 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/21.jpg" title="Title #16"> <img
									src="./galleriffic/photos/21t.jpg" alt="Title #16"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">70mm @ F/4.5 FOR 1/1600 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/12.jpg" title="Title #17"> <img
									src="./galleriffic/photos/12t.jpg" alt="Title #17"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">70mm @ F/4.5 FOR 1/1000 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/17.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/17t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">45mm @ F/5.6 FOR 1/80 sec. ISO-100</div>
								</div>
							<li><a class="thumb" href="./galleriffic/photos/14.jpg" title="Title #19"> <img
									src="./galleriffic/photos/14t.jpg" alt="Title #19"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/3.5 FOR 1/500 sec. ISO-300</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/15.jpg" title="Title #20"> <img
									src="./galleriffic/photos/15t.jpg" alt="Title #20"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">30mm @ F/4 FOR 1/800 sec. ISO-100</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/16.jpg" title="Title #21"> <img
									src="./galleriffic/photos/16t.jpg" alt="Title #21"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/3.5 FOR 1/500 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/13.jpg" title="Title #18"> <img
									src="./galleriffic/photos/13t.jpg" alt="Title #18"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">70mm @ F/6 FOR 1/500 sec. ISO-200</div>
								</div>
							</li>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/18.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/18t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">170mm @ F/5.5 FOR 1/640 sec. ISO-200</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/19.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/19t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">70mm @ F/4 FOR 1/640 sec. ISO-400</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/20.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/20t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">150mm @ F/3.5 FOR 1/1000 sec. ISO-80</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/25.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/25t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">200mm @ F/5 FOR 1/125 sec. ISO-400</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/28.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/28t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">50mm @ F/7 FOR 1/640 sec. ISO-400</div>
								</div>
							</li>
							<li><a class="thumb" href="./galleriffic/photos/30.jpg" title="&nbsp;"> <img
									src="./galleriffic/photos/30t.jpg" alt="&nbsp;"/> </a>

								<div class="caption">
									<div class="image-title">&nbsp;</div>
									<div class="image-desc">130mm @ F/4 FOR 1/500 sec. ISO-200</div>
								</div>
							</li>
						</ul>
					</div>
					<div style="clear: both;"></div>
				</div>
			</div>
			<br clear="all"/>
		</div>
		<div class="iflogged">
			<?php include "../inc/studio206Photography_links.html"; ?>
		</div>
		<div id="foot">
			<?php include "../inc/footer1.php"; ?>
		</div>
		<script type="text/javascript">
			jQuery(document).ready(function ($) {
				// We only want these styles applied when javascript is enabled
				$('div.navigation').css({'width': '300px', 'float': 'left'});
				$('div.content').css('display', 'block');
				// Initially set opacity on thumbs and add
				// additional styling for hover effect on thumbs
				var onMouseOutOpacity = 0.67;
				$('#thumbs ul.thumbs li').opacityrollover({
					mouseOutOpacity: onMouseOutOpacity,
					mouseOverOpacity: 1.0,
					fadeSpeed: 'fast',
					exemptionSelector: '.selected'
				});

				// Initialize Advanced Galleriffic Gallery
				var gallery = $('#thumbs').galleriffic({
					delay: 3500,
					numThumbs: 12,
					preloadAhead: 10,
					enableTopPager: true,
					enableBottomPager: true,
					maxPagesToShow: 7,
					imageContainerSel: '#slideshow',
					controlsContainerSel: '#controls',
					captionContainerSel: '#caption',
					loadingContainerSel: '#loading',
					renderSSControls: true,
					renderNavControls: true,
					playLinkText: 'Play Slideshow',
					pauseLinkText: 'Pause Slideshow',
					prevLinkText: '&lsaquo; Previous Photo',
					nextLinkText: 'Next Photo &rsaquo;',
					nextPageLinkText: 'Next &rsaquo;',
					prevPageLinkText: '&lsaquo; Prev',
					enableHistory: false,
					autoStart: true,
					syncTransitions: true,
					defaultTransitionDuration: 900,
					onSlideChange: function (prevIndex, nextIndex) {
						// 'this' refers to the gallery, which is an extension of $('#thumbs')
						this.find('ul.thumbs').children()
								.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
								.eq(nextIndex).fadeTo('fast', 1.0);
					},
					onPageTransitionOut: function (callback) {
						this.fadeTo('fast', 0.0, callback);
					},
					onPageTransitionIn: function () {
						this.fadeTo('fast', 1.0);
					}
				});
			});
		</script>
		<div style="visibility:hidden; z-index:1;">

			<%
				String hm = "HHIT";
				String file = hm + "/splash.txt";

				RandomAccessFile ffile;
				ffile = new RandomAccessFile(cntfpath, "rw");
				ffile.seek(0);
				int count = Integer.parseInt(ffile.readLine());
				out.println(count);
				ffile.seek(0);
				ffile.writeBytes(Integer.toString(count + 1));
				ffile.close();
			%>
		</div>
	</body>
</html>
