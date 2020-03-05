<script src="/assets/js/components/slidenav.js"></script>
<script>
	$(document).ready(function () {
		$(document).on("scroll", onScroll);

		//smoothscroll
		$('a[href^="#"]').on('click', function (e) {
			e.preventDefault();
			$(document).off("scroll");

			$('a').each(function () {
				$(this).removeClass('current');
			})
			$(this).addClass('current');

			var target = this.hash,
					menu = target;
			$target = $(target);
			$('html, body').stop().animate({
				'scrollTop': $target.offset().top + 2
			}, 500, 'swing', function () {
				window.location.hash = target;
				$(document).on("scroll", onScroll);
			});
		});
	});

	function onScroll(event) {
		var scrollPos = $(document).scrollTop();
		$('#menu-center a').each(function () {
			var currLink = $(this);
			var refElement = $(currLink.attr("href"));
			if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
				$('#menu-center ul li a').removeClass("current");
				currLink.addClass("current");
			} else {
				currLink.removeClass("current");
			}
		});
	}

	$(window).load(function () {
		$(".se-pre-con").fadeOut("slow");
	});
</script>
<div class="se-pre-con"></div>
<section id="am-fixed" class="hide-on-med-and-down">
	<div class="header">
		<div class="row">
			<div class="col m5ths s6">
				<a class="am-btn2" id="am-logo" href="/index.php"><i class="fa fa-arrow-left"
				                                                                    aria-hidden="true"></i>&nbsp;Adam's
					Brain</a>
			</div>
			<div class="col m5ths s6"><img src="/assets/images/2px.gif"/></div>
			<div class="col m5ths s6">
				<ul id="mobile-social-icons" class="social-link tt-animate ltr mt-15" style="text-align:center;">
					<li>
						<a href="https://www.facebook.com/kungfurufus">
							<i class="fa fa-facebook"></i>
						</a>
					</li>
					<li>
						<a href="https://github.com/zom-b-food">
							<i class="fa fa-github"></i>
						</a>
					</li>
					<li>
						<a href="https://jsfiddle.net/user/zom_b_food/fiddles/">
							<i class="fa fa-jsfiddle"></i>
						</a>
					</li>
					<li>
						<a href="https://www.linkedin.com/in/sassmaster">
							<i class="fa fa-linkedin"></i>
						</a>
					</li>
					<li>
						<a href="https://stackoverflow.com/users/6151058/adam?tab=profile">
							<i class="fa fa-stack-overflow"></i>
						</a>
					</li>
				</ul>
			</div>
			<div class="col m5ths s6">
				<a class="am-btn2 resume" id="cd-res" href="/sources/alm-uidev.doc">Resume/CV</a>
			</div>
			<div class="col m5ths s6">
				<img class="" src="/assets/images/scrollNav/nametag-dev.png" alt="nametag"
				     style="width:192px; height:46px;"></div>
		</div>
	</div>
</section>
<div class="am-fixed-nav hide-on-small-and-down">
	<nav class="am-nav1" id="menu-center">
		<ul class="am-top-nav" id="myNav">
			<li>
				<a href="#summary">Career Summary<br/>
					<span class="lsf-icon home"></span>
				</a>
			</li>
			<li>
				<a href="#history">Work History<br/>
					<span class="lsf-icon param"></span>
				</a>
			</li>
			<li>
				<a href="#samples">Sample URLs<br/>
					<span class="lsf-icon sns"></span>
				</a>
			</li>

			<li>
				<a href="#sandbox">Sandbox/Resources<br/>
					<span class="lsf-icon magic"></span>
				</a>
			</li>
            <li>
                <a href="#wordpress">Wordpress Dev<br/>
                    <span class="lsf-icon twinkle"></span>
                </a>
            </li>
			<li>
				<a href="#grab">Grab a Widget<br/>
					<span class="lsf-icon book"></span>
				</a>
			</li>
			<li>
				<a href="#contact">Contact<br/>
					<span class="lsf-icon sitemap"></span>
				</a>
			</li>
		</ul>
	</nav>
   <!-- <li>
        <a href="#wordpress">Wordpress Themes<br/>
            <i class="lsf-icon twinkle"></i>
        </a>
    </li>-->
</div>
<div class="web">
	<a href="http://www.adam-marsh.com">Adam L Marsh www.adam-marsh.com</a>
	<a href="http://www.adam-marsh.com">Adam L Marsh http://www.adam-marsh.com</a>
	<a href="http://www.ui-design-engineering.com">Adam L Marsh www.ui-design-engineering.com</a>
	<a href="http://www.ui-design-engineering.com">Adam L Marsh http://www.ui-design-engineering.com</a>
	<a href="http://www.irisandpith.com">Webster Latimer - Author, Walking Through Brambles www.irisandpith.com</a>
	<a href="http://www.irisandpith.com">Webster Latimer - Author, Walking Through Brambles
		http://www.irisandpith.com</a>
	<a href="http://www.myuikit.com">Adam L Marsh www.myuikit.com</a>
	<a href="http://www.myuikit.com">Adam L Marsh http://www.myuikit.com</a>
	<a href="http://www.irisandpith.com">Webster Latimer - Author, Walking Through Brambles</a>
</div>
