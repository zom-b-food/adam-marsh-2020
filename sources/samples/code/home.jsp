
<%@ page contentType="text/html; charset=iso-8859-1" language="java" errorPage=""; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Welcome to www.ui-design-engineering.com</title>
		<?php include "./inc/globalIncs.php"; ?>
		<script type="text/javascript">
			$(document).ready(function () {
				$(".toggle_container").hide();
				$("h2.trigger").click(function () {
					$(this).toggleClass("active").next().slideToggle("slow");
					return false;
				});
			});
			$(function () {  // $(document).ready shorthand
				$('#bayJob').delay(2100).fadeIn(3000);
				$('#bayJob').delay(9950).fadeOut(3000);
			});
		</script>
		<style type="text/css">
			.slide th {
				background-color: #dbdecb;
				color: #37493f;
				padding: 5px;
				line-height: 15px;
			}
		</style>
	</head>
	<body onload="change()">
		<div id="splash-page">
			<div id="topPortion">
				<?php include "./inc/flashTop.php"; ?>
			</div>
			<div class="splash">
				<div class="resSep">&nbsp;&nbsp;<a href="./sources/almResume.zip" class="main">&nbsp;&#187;&nbsp;Download
					Resume</a>&nbsp;&nbsp;|
					<a class="standard" href="./samplesites/samplecode/codes.php"> &nbsp;&#187;&nbsp;View
						Code Samples</a>&nbsp;&nbsp;|<a
							class="samples" href="./samplesites/ghcHOME.php"> &nbsp;&#187;&nbsp; View
						Project Samples</a>&nbsp;&nbsp;|
					<a id="none" class="main" href="./sources/samples.zip">&nbsp;&#187;&nbsp;Download Code
						Samples</a>
				</div>
				<div class="leftColWide"><h1>Adam L. Marsh</h1>
					<img src="/assets/images/rule.gif" alt="" width="346" height="9"/> <br/>

					<h2>Front-end Web/UI Developer (JSP)</h2>
				</div>
				<div class="rightColNarrow">
					<div class="address">409 23rd Avenue South<br/>
						Seattle, WA 98144<br/>
						206-569-8578<br/>
						<strong><a
								href="mailto:alm@ui-design-engineering.com">alm@ui-design-engineering.com</a></strong>
					</div>
				</div>
				<div class="summary">
					<h3>Career Summary:</h3>

					<p style="margin-left:18px;">Extensive experience producing scalable, flexible web apps using
						JSP/JSTL, JHTML,
						HTML/DHTML, jQuery, CSS, XML/XSL, Java Servlets, JDBC, MySQL, Photoshop and Flash within an MVC
						framework
						(Spring/IntelliJ). Experience working in an Agile/LEAN software development environment using
						Apache/Tomcat,
						IntelliJ, TeamCity, TeamSite CMS, Sitemesh, Artifactory, SVN, Maven, Ant, STRUTS, Spring, and
						ATG Dynamo. Experience
						creating design comps, wireframes and Web 2.0 prototypes. Experience designing application
						infrastructure,
						dependencies and content--creating all front-end functionality, developing the GUI, creating
						graphics and managing
						content via Teamsite CMS. Proficiency in creating navigational hierarchies, defining site
						functionality and
						producing cross-browser code and markup. Experience communicating a broad understanding of
						interactive technologies
						and a working knowledge of web server/application protocols, server models, and database
						technologies.</p>

					<div class="leftResCol"><h3 class="littleHeader">Primary Skills-</h3>
						<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
								<td width="94%">
									<ul class="fancybullet">
										<li>GUI Development&#8212;16 years</li>
										<li>Content Development&#8212;15 years</li>
										<li>JSP Web Programming&#8212;11 years</li>
										<li>Information Architecture&#8212;7 years</li>
										<li>E-Commerce Development&#8212;8 years</li>
										<li>MVC Development&#8212;6 years</li>
										<li>Agile Software Development&#8212;3 years</li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
					<div class="rightResCol"><h3 class="littleHeader">Primary Tools &amp; Technologies-</h3>
						<table width="100%" border="0" cellspacing="0" cellpadding="3">
							<tr>
								<td width="6%" valign="top" nowrap="nowrap">
									<ul class="fancybullet">
										<li>HTML/DHTML, CSS, JavaScript&#8212;15 years</li>
										<li>Photoshop&#8212;13 years</li>
										<li>JSP, JHTML, Tomcat, ATG Dynamo&#8212;11 years</li>
										<li>Java Servlets, JDBC, Ant, Eclipse&#8212;7 years</li>
										<li>XML/XSL, JSTL, TeamSite CMS&#8212;7 years</li>
										<li>jQuery, STRUTS, Flash&#8212;4 years</li>
										<li>IntelliJ, Spring, Ajax, Maven&#8212;2 years</li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
					<br clear="all"/>

					<p class="subhead"><img src="/assets/images/rule2.gif" alt="" width="10"
					                        height="7"/>&nbsp;<strong>Work
						History</strong>&nbsp;<img src="/assets/images/rule2.gif" alt="" width="30" height="7"/>
					</p>

					<h2 class="trigger">Group Health Coop; 02/2010 &#8211; present; Seattle, WA</h2>

					<div class="toggle_container">
						<div class="slide">
							<table width="100%" border="0" cellpadding="4" cellspacing="1">
								<tr valign="top">
									<th>JSP Web/UI Developer ~ TeamSite Component Developer</th>
									<th>Primary Tools &amp; Technologies</th>
								</tr>
								<tr valign="top">
									<td width="50%" style="border-right:1px dashed #e0caa0;">
										<ul class="fancybullet">
											<li>Developed front-end, cross-browser HTML/DHTML templates and all GUI
												features and content via
												JSP, CSS, XSL and jQuery
											</li>
											<li>Created and managed jQuery and CSS component repository and development
												sandbox hosted on
												Tomcat
											</li>
											<li>Developed Teamsite Forms Components (XML, XSL) for all GHC.org
												websites
											</li>
											<li>Created front-end page templates to use in Sitemesh war overlays
												consumed by all GHC.org
												websites
											</li>
											<li>Created the Java/JSP Model, View, and Controller aspects for many web
												forms for the GHC.org
												website
											</li>
											<li>Participated in an Agile team development environment</li>
										</ul>
									</td>
									<td width="50%">
										<ul class="fancybullet">
											<li><strong>Application Servers:</strong> Apache/Tomcat, ATG Dynamo</li>
											<li><strong>Server Model:</strong> JSP, JHTML</li>
											<li><strong>Build Tools:</strong> Artifactory, TeamCity, Maven</li>
											<li><strong>Development Frameworks:</strong> Spring, Sitemesh, jQuery</li>
											<li><strong>Development Tools:</strong> IntelliJ; Notepad++</li>
											<li><strong>Design Tools:</strong> Photoshop</li>
											<li><strong>Content Management Servers:</strong> TeamSite</li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<h2 class="trigger">Sotto Wireless; 02/2006 &#8211; 10/2009; Bellevue, WA</h2>

					<div class="toggle_container">
						<div class="slide">
							<table width="100%" border="0" cellpadding="4" cellspacing="1">
								<tr valign="top">
									<th>JSP Web Developer</th>
									<th>Primary Tools &amp; Technologies</th>
								</tr>
								<tr valign="top">
									<td width="50%" style="border-right:1px dashed #e0caa0;">
										<ul class="fancybullet">
											<li>Created and maintained company website, activation portal and assisted
												in the online store
												development
											</li>
											<li>Created dynamic, data-driven web app allowing customers to activate
												phone service
												subscriptions
											</li>
											<li>Created, tested and deployed java beans, servlets/classes for use in JSP
												web applications
											</li>
											<li>Managed all activities and all development builds on Linux development
												server
											</li>
											<li>Created all front-end UI design and development</li>
											<li>Created/Edited Photoshop comps and wireframes</li>
										</ul>
									</td>
									<td width="50%">
										<ul class="fancybullet">
											<li><strong>Application Servers:</strong> Apache/Tomcat</li>
											<li><strong>Server Model:</strong> JSP</li>
											<li><strong>Databases:</strong> MySql</li>
											<li><strong>Development Frameworks:</strong> STRUTS</li>
											<li><strong>Development Tools:</strong> Eclipse; Notepad++; SQLyog for MySQL
											</li>
											<li><strong>Design Tools:</strong> Photoshop</li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<h2 class="trigger">AT&amp;T Wireless; 06/2004 &#8211; 02/2006; Redmond, WA</h2>

					<div class="toggle_container">
						<div class="slide">
							<table width="100%" border="0" cellpadding="4" cellspacing="1">
								<tr valign="top">
									<th>JSP/UI Developer</th>
									<th>Primary Tools &amp; Technologies</th>
								</tr>
								<tr valign="top">
									<td width="50%" style="border-right:1px dashed #e0caa0;">
										<ul class="fancybullet">
											<li>Developed complex, web-based, user interfaces from Visio wireframes and
												Photoshop
												composites
											</li>
											<li>Developed and maintained .css styles and attributes sitewide</li>
											<li>Created jhtml (Dynamo Server Pages) pages with highly evolved, complex,
												page-level
												logic/scenario
											</li>
											<li>Created functional dhtml prototypes for some JSP design projects</li>
											<li>Debugged UI code and markup (jhtml, dhtml, css, xml)</li>
											<li>Maintained, repaired, and developed web applications and special
												projects for AT&amp;T
												Wireless services
											</li>
										</ul>
									</td>
									<td width="50%">
										<ul class="fancybullet">
											<li><strong>Application Servers:</strong> ATG Dynamo, Apache/Tomcat</li>
											<li><strong>Server Model:</strong> JSP</li>
											<li><strong>Databases:</strong> MySQL</li>
											<li><strong>Development Tools:</strong> Eclipse; Notepad++;<br/>
												SQLyog for MySQL;
											</li>
											<li><strong>Design Tools:</strong> Photoshop; Flash</li>
											<li><strong>Content Management Servers:</strong> TeamSite</li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<h2 class="trigger">Microsoft, Inc; (Contract) 03/2003 &#8211; 03/2004; Redmond, WA</h2>

					<div class="toggle_container">
						<div class="slide">
							<table width="100%" border="0" cellpadding="4" cellspacing="1">
								<tr valign="top">
									<th>Web Producer</th>
									<th>Primary Tools &amp; Technologies</th>
								</tr>
								<tr valign="top">
									<td width="50%" style="border-right:1px dashed #e0caa0;">
										<ul class="fancybullet">
											<li>Created and edited textual and graphical content for
												www.microsoft.com/executivecircle
											</li>
											<li>Performed production level DHTML/CSS scripting to implement creative
												features and daily web
												updates
											</li>
											<li>Developed Intranet sales aids and solutions portals</li>
											<li>Maintained, repaired, and developed web applications deployed on the
												Microsoft Intranet and
												Internet
											</li>
											<li>Developed the GUI and Content Delivery Systems for Microsoft's Solutions
												Portal, the ISG
												Solution Maps, and the Executive Circle website
											</li>
										</ul>
									</td>
									<td width="50%">
										<ul class="fancybullet">
											<li><strong>Application Servers:</strong> MS Site Server</li>
											<li><strong>Server Models: </strong> ASP</li>
											<li><strong>Development Frameworks:</strong> MS Visual Studio</li>
											<li><strong>Databases: </strong> -none-</li>
											<li><strong>Development Tools:</strong> Homesite; VSS; MS FrontPage</li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<p class="subhead"><img src="/assets/images/rule2.gif" alt="" width="10"
					                        height="7"/>&nbsp;<strong>Sample
						URLs</strong>&nbsp;<img src="/assets/images/rule2.gif" alt="" width="30" height="7"/></p>

					<div class="leftResCol">
						<ul class="fancybulletBig">
							<li><a href="http://www.seattleartsphotography.com" class="wide">www.seattleartsphotography.com</a>
							</li>
							<li><a href="./samplesites/ghcHOME.php" class="samples">www.ghc.org</a></li>
							<li><a href="./samplesites/hiltonHOME.php" class="samples">www.hilton.com</a>
							</li>
						</ul>
					</div>
					<div class="rightResCol">
						<ul class="fancybulletBig">
							<li><a href="./samplesites/sottoHOME.php"
							       class="samples">www.sottowireless.com</a></li>
							<li><a href="./samplesites/attHOME.php" class="samples">www.attwireless.com</a>
							</li>
							<li><a href="./samplesites/msHOME.php" class="samples">www.microsoft.com/executivecircle</a>
							</li>
						</ul>
					</div>
					<br clear="all"/>

					<p class="subhead"><img src="/assets/images/rule2.gif" alt="" width="10"
					                        height="7"/>&nbsp;<strong>Education
						&amp; Training</strong>&nbsp;<img src="/assets/images/rule2.gif" alt="" width="30"
					                                      height="7"/></p>

					<div class="spanResCol">
						<p>Texas A&amp;M University; BA 1989<br/>
							Graduate studies in English Literature at Texas A&amp;M University, 1994-1995<br/>
							Java Servlet/JDBC Training; 2004<br/>
							Teamsite Component Developer Training (XML/XSL); 2011</p>
					</div>
				</div>
			</div>
			<div class="watermark">
				<?php include "./inc/rightNav.php"; ?>
			</div>
			<div id="foot">
				<?php include "./inc/footer.php"; ?>
			</div>
		</div>
		<div style="visibility:hidden; z-index:1;">
			<%
				String hm = "HHIT";
				String file = hm + "/home.txt";

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
