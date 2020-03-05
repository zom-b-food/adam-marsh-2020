
(function ($) {


var noop = function () {};
window.console = window.console || { log: noop, warn: noop };

var warn = function ( msg ) {
	if ( slideview.DEBUG ) {
		console.warn( '$.slideview: ' + msg );
	}
};
var ie = ( !!window.ActiveXObject && +( /msie\s(\d+)/i.exec( navigator.userAgent )[1] ) ) || NaN;


var slideview = $.slideview = function ( options ) {

	if ( ! options.data || options.data.length < 2 ) {
		warn( 'slideview called with insufficient data' );
	}
	this.data = options.data;
	this.$container = $( options.container );
	if ( ! this.$container ) {
		warn( 'slideview called with no container element' );
	}

	this.options = options;

	this.$track = this.$container.find( '.slideview-track' ).first();

	this.currentIndex = options.start || 0;
}


slideview.prototype = {

	transitioning: false,

	load: function () {

		var self = this;
		var $slideMasterTemplate = self.$track.find( '.slideview-slide' ).clone();
		var $fieldElements = $slideMasterTemplate.find( '[data-slideview-field]' );

		// Purge template contents and attributes
		$fieldElements.each( function () {
			var $this = $( this );
			var datatype = this.getAttribute( 'data-slideview-datatype' );
			if ( datatype == 'html' ) {
				this.innerHTML = '';
			}
			else if ( datatype && datatype.indexOf( 'attr_' ) === 0 ) {
				var attr = datatype.split( '_' )[1];
				this.removeAttribute( attr );
			}
		});

		// Clear current slides
		self.$track.empty();

		self.slides = [];

		// Loop the data and insert slides
		$.each( self.data, function ( i, dataitem ) {

			if ( ! dataitem ) {
				// Internet Explorer interprets a trailing comma in arrays as an (undefined) item
				return;
			}

			// Clone a slide
			var $slide = $slideMasterTemplate.clone();

			// Loop the slide field elements
			$slide.find( '[data-slideview-field]' ).each( function ( _i, _it ) {
				var field = this.getAttribute( 'data-slideview-field' );

				var fieldData = dataitem[ field ];
				if ( fieldData ) {
					var attr = fieldData.attr;
					var value = fieldData.value;
					if ( attr ) {
						this.setAttribute( attr, value );
					}
					else {
						this.innerHTML = value;
					}
				}
			});

			self.slides.push( $slide );

			// Append the slide
			self.$track.append( $slide );
		});

		// Enable the container to recieve keyboard events
		self.$container.attr( 'tabindex', 0 );

		// Reset active slide position on window resize
		$( window ).resize( function () { self.resetPosition(); } );


		$( window ).focus( function () {
			if ( self.transitioning ) {
				warn( 'manual moveComplete' );
				self.moveComplete();
			}
		});




		if ( self.slides.length > 1 ) {
			self.addControls();

			// Keyboard navigation
			self.$container.keydown( function ( e ) {
				var keycode = e.keyCode || e.which;
				var slideCount = self.slides.length

				// Capture number keys 0-9 (0 will be 10)
				var keyNumberZero = 48;
				var keyNumber = keycode >= keyNumberZero && keycode < ( keyNumberZero + 9 );
				var keyNumberPadZero = 96
				var keyNumberPad = keycode >= keyNumberPadZero && keycode < ( keyNumberPadZero + 9 );
				var keyRight = 39 === keycode;
				var keyLeft = 37 === keycode;

				var usableKey = keyNumber || keyNumberPad || keyRight || keyLeft;

				if ( usableKey ) {
					// Timer will need to reset if it's running
					self.resetTimed();
					e.preventDefault();
				}
				else {
					return;
				}

				if ( keyNumber ) {
					var moveTo = keycode === keyNumberZero ?
						10 : keycode - ( keyNumberZero + 1 );
					self.move( moveTo );
				}
				if ( keyNumberPad ) {
					var moveTo = keycode === keyNumberPadZero ?
						10 : keycode - ( keyNumberPadZero + 1 );
					self.move( moveTo );
				}
				else if ( keyLeft ) {
					self.previous();
				}
				else if ( keyRight ) {
					self.next();
				}
			});
		}

		return self;
	},



	updateControls: function () {
		var self = this;
		var $pagerLinks = self.$container.find( '.slideview-pager' );
		$pagerLinks.removeClass( 'active' ).eq( self.currentIndex ).addClass( 'active' )
	},

	buildControls: function () {

		var self = this;
		var pager = '<div class="slideview-pager">';
		var pagerLinks = [];

		pagerLinks.push( '<a class="slideview-previous" href="carousel:previous"></a>' );
		pagerLinks.push( '<a class="slideview-next" href="carousel:next"></a>' );

		pager += pagerLinks.join( '' );
		pager += '</div>';
		self.$container.append( pager );
	},


	addControls: function () {

		var self = this;

		// Build the paging controls
		if ( self.options.buildControls ) {
			self.options.buildControls.call( self );
		}
		else {
			self.buildControls();
		}

		// Add events
		var pseudoClass = 'carousel:';
		var $containerControls = $( 'a[href^="' + pseudoClass + '"]', self.$container );

		$containerControls.click( function () {

			var href = this.getAttribute( 'href' );

			if ( ! self.transitioning && href ) {

				// Timer will need to reset if it's running
				self.resetTimed();

				var arg = $.trim( href.substring( pseudoClass.length ) );
				// If an integer move to the index
				if ( +arg ) {
					self.move( arg-1 );
				}
				// Named arguments
				else if ( arg === 'next' ) {
					self.next();
				}
				else if ( arg === 'previous' ) {
					self.previous();
				}
			}
			return false;
		});

		// Update controls after first load
		self.updateControls();
	},

	getSlideWidth: function () {
		return this.slides[0][0].offsetWidth;
	},

	resetPosition: function () {
		this.slides[0].css( 'margin-left', -( this.getSlideWidth() * this.currentIndex ) );
	},

	move: function ( index ) {
		var self = this;

		// Bail-out scenarios
		var invalidIndex = index < 0 || index > self.slides.length-1;
		var calledCurrentIndex = self.currentIndex === index;
		var inTransition = self.transitioning;

		if ( inTransition || calledCurrentIndex || invalidIndex ) {

			invalidIndex && warn( 'Invalid index passed: ' + index );
			inTransition && warn( 'in transition' );
			calledCurrentIndex && warn( 'Called current index' );

			return;
		}
		self.pendingIndex = index;
		self.transitioning = true;
		self.slides[0].transition({
				'margin-left': -( self.getSlideWidth() * index )
			},
			self.options.speed || 250,
			{ transition: 'ease-in-out', animate: 'swing' },
			function () {
				self.moveComplete();
			});
	},

	moveComplete: function () {
		var self = this;
		self.transitioning = false;
		self.currentIndex = self.pendingIndex;
		self.updateControls();
	},

	next: function () {
		var self = this;
		var lastIndex = self.slides.length-1;
		var loop = self.options.loop;

		if ( self.currentIndex === lastIndex ) {
			if ( loop ) {
				self.move( 0 );
			}
		}
		else {
			self.move( self.currentIndex + 1 );
		}
	},

	previous: function () {
		var self = this;
		var lastIndex = self.slides.length-1;
		var loop = self.options.loop;

		if ( self.currentIndex === 0 ) {
			if ( loop ) {
				self.move( lastIndex );
			}
		}
		else {
			self.move( self.currentIndex - 1 );
		}
	},


	timerId: null,

	startTimed: function ( timeInterval ) {
		var self = this;

		if ( ! self.options.loop || self.slides.length < 2 ) {
			return;
		}
		// Remove previous timer (if set)
		self.cancelTimed();

		// Get the timer interval
		self.timerInterval = typeof timeInterval !== 'undefined' ? timeInterval : 6000;

		function go () {
			self.timerId = setTimeout( loop, timeInterval );
		}

		function loop () {
			self.next();
			go();
		}
		go();
	},

	cancelTimed: function () {
		clearTimeout( this.timerId );
		this.timerId = null;
	},

	resetTimed: function () {
		if ( this.timerId !== null ) {
			this.startTimed( this.timerInterval );
		}
	}

};


})(jQuery);


(function ( $ ) {

	var each = $.each,

		capitalize = function ( str ) {
			return str.charAt(0).toUpperCase() + str.substring(1);
		},

		camelize = function ( str ) {
			if ( str.indexOf( '-' ) === -1 ) {
				return str;
			}
			var parts = str.split( '-' ),
				out = parts.shift();
			each( parts, function ( i, it ) {
				out += capitalize( it );
			});
			return out;
		},

		isset = function ( value ) {
		    return typeof value !== 'undefined' && value !== null;
		},

		testElem = document.createElement( 'meh' ),
		$testElem = $( testElem ),

		getVendorStyleProperty = function ( property ) {


			var self = getVendorStyleProperty,

				property = camelize( property );

			self.c = self.c || {};

			if ( property in self.c ) {
				return self.c[ property ];
			}

			var testElemStyle = testElem.style;

			if ( property in testElemStyle ) {
				self.c[ property ] = property;
				return property;
			}
			else {
				var prefixes = 'Webkit Moz O ms Khtml'.split( ' ' ),
					propertyCap = capitalize( property ),
					i = 0,
					test;
				for ( ; i < prefixes.length; i++ ) {
					test = prefixes[i] + propertyCap;
					if ( test in testElemStyle ) {
						self.c[ property ] = test;
						// Store the prefixed value to jQuery cssProps
						$.cssProps[ property ] = test;
						return test;
					}
				}
			}
			self.c[ property ] = null;
			return null;
		},


		transitionProperty = getVendorStyleProperty( 'transition' ),

		transitionEndEvents = {
			'transition'       : 'transitionend',
			'WebkitTransition' : 'webkitTransitionEnd',
			'MozTransition'    : 'transitionend',
			'OTransition'      : 'oTransitionEnd',
			'msTransition'     : 'MSTransitionEnd'
		},

		transitionEndEvent = transitionProperty && transitionEndEvents[ transitionProperty ],


		noop = function () {},
		console = window.console || { log: noop, warn: noop },

		warnMsg = function ( msg ) {
			if ( plugin.DEBUG ) {
				console.warn( '$.fn.transition: ' + msg );
			}
		};


var plugin = $.fn.transition = function ( map, duration, easing, callback ) {

	var self = this,
		filteredSelf;


	var transitionEasing = isset( easing ) ? easing : '',
		animateEasing = easing;


	if ( easing && $.isPlainObject( easing ) ) {
		transitionEasing = easing.transition || '';
		animateEasing = easing.animate;
	}


	var filteredMap = {};

	each( map, function ( property, value ) {
		var _property = getVendorStyleProperty( property ),
			_value = value;

		if ( typeof value === 'number' && ! $.cssNumber[ _property ] ) {
			_value += 'px';
		}

		else if ( ! $.cssNumber[ _property ] ) {
			_value = $testElem.css( _property, value ).css( _property );
		}
		filteredMap[ _property ] = _value;
	});


	filteredSelf = self.filter( function () {
		var result = false,
			elStyle = this.style,
			$el = $( this ),
			property,
			value;
		for ( property in filteredMap ) {
			value = filteredMap[ property ];
			if (
				elStyle[ property ] !== value &&
				$el.css( property ) !== value
			) {
				result = true;
				break;
			}
		}
		return result;
	});


	if ( filteredSelf.length < 1 ) {
		// console.log('early exit');
		return self;
	}


	if ( ! transitionEndEvent ) {
		filteredSelf.animate( map, duration, animateEasing, callback );
		return self;
	}


	var speeds = $.fx.speeds,
		_default = speeds._default,
		_duration = isset( duration ) ? duration : _default;
	if ( typeof duration == 'string' ) {
		_duration = speeds[ duration ] || _default;
	}


	if ( ! _duration ) {
		filteredSelf.css( filteredMap ).each( function () {
			callback && callback.call( this );
		});
		return self;
	}


	var transitionValue = [ _duration + 'ms', transitionEasing ].join( ' ' ),

		nsTransitionEndEvent = transitionEndEvent + '.transition';


	filteredSelf.each( function () {

		var el = this,
			$el = $( this ),
			style = el.style,


			doneDone = false,
			fallbackTimer = null,

			done = function () {

				clearTimeout( fallbackTimer );
				if ( doneDone ) { return; }
				doneDone = true;


				$el.unbind( nsTransitionEndEvent );
				style[ transitionProperty ] = '';


				callback && callback.call( el );
			};


		$el.bind( nsTransitionEndEvent, done );
		style[ transitionProperty ] = transitionValue;


		each( filteredMap, function ( property, value ) {
			style[ property ] = value;
		});


		fallbackTimer = setTimeout( function () {
			warnMsg( 'Used fallback timer' );
			done();
		}, _duration + 40 );
	});

	return self;
};


plugin.transitionEndEvent = transitionEndEvent;
plugin.getVendorStyleProperty = getVendorStyleProperty;


})( jQuery );
