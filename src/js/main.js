function initMapping() {
	$('header .navbar .logo a ').mapping({
		mobileWrapper: 'header  .navbar .main-menu .logo-mobile',
		mobileMethod: 'appendTo',
		desktopWrapper: 'header .navbar .main-menu .logo',
		desktopMethod: 'insertAfter',
		breakpoint: 991
	});
	$('header .navbar .main-menu .icon #search-box').mapping({
		mobileWrapper: 'header  .navbar .main-menu',
		mobileMethod: 'appendTo',
		desktopWrapper: 'header .navbar .main-menu .icon',
		desktopMethod: 'appenTo',
		breakpoint: 991
	})
	$('header .navbar .main-menu .icon .shoping-cart').mapping({
		mobileWrapper: 'header  .navbar .main-menu',
		mobileMethod: 'appendTo',
		desktopWrapper: 'header .navbar .main-menu .icon',
		desktopMethod: 'appenTo',
		breakpoint: 991
	})
}
const toggleMenuMobile = () => {
	$('.kv-toggle').on('click', function () {
		$(this).toggleClass('active');
		$('.navbar-nav').toggleClass('active')
		$('#overlay').toggleClass('active')
	});
	$('#overlay').on('click', function () {
		$(this).removeClass('active');
		$('.kv-toggle').removeClass('active')
		$('.navbar-nav').removeClass('active')
	});
	$('.search-icon').on('click', function () {
		$('#search-box').toggleClass('active');
	})
	$('main').on('click', function () {
		$('#search-box').removeClass('active')
	})
}

function openCart() {
	$('.shoping-cart .material-icons').on('click', function (i) {
		$('.shopping-cart-wrapper').toggleClass('open')
		i.stopPropagation();
	});
}
const NikenkoSlide = () => {
	var myswiper = new Swiper('.list-banner .swiper-container', {
		loop: true,
		speed: 1000,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
		pagination: {
			el: '.swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
	});
	var myswiper = new Swiper('.banner__pages .swiper-container', {
		loop: true,
		speed: 1000,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
		pagination: {
			el: '.swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
	});
	$(".single-swiper .swiper-container").each(function (index, element) {
		var $this = $(this);
		$this.addClass("instance-" + index);
		$this.parent().find(".swiper-button-prev").addClass("swiper-button-prev-" + index);
		$this.parent().find(".swiper-button-next").addClass("swiper-button-next-" + index);
		var swiper = new Swiper(".instance-" + index, {
			speed: 750,
			observer: true,
			observeParents: true,
			lazy: true,
			breakpointsInverse: true,
			spaceBetween: 30,
			slidesPerView: 7,
			loop: false,
			navigation: {
				nextEl: ".swiper-button-next-" + index,
				prevEl: ".swiper-button-prev-" + index
			},
			breakpoints: {
				1366: {
					slidesPerView: 7,
					spaceBetween: 20,
				},
				1280: {
					slidesPerView: 6,
					spaceBetween: 10,
				},
				767: {
					slidesPerView: 3,
					spaceBetween: 10,
				},
				575: {
					slidesPerView: 3,
					spaceBetween: 10,
				},
				400: {
					slidesPerView: 2,
					spaceBetween: 10,
				},
				375: {
					slidesPerView: 2,
					spaceBetween: 10,
				},
			},
		});
	});
	var swiper = new Swiper(".slide-colum .swiper-container", {
		spaceBetween: 30,
		slidesPerView: 3,
		loop: false,
		loopedSlides: 3,
		slidesPerColumn: 2,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".slide-colum .swiper-button-next",
			prevEl: ".slide-colum .swiper-button-prev",
			clickable: true,
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			1024: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			991: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			767: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 10,
				slidesPerColumn: 1,
			},
			480: {
				slidesPerView: 2,
				spaceBetween: 10,
				slidesPerColumn: 1,
			},
		},
	});
	var swiper = new Swiper(".kv-slide .swiper-container", {
		speed: 750,
		observer: true,
		observeParents: true,
		lazy: true,
		breakpointsInverse: true,
		spaceBetween: 30,
		slidesPerView: 6,
		loop: true,
		navigation: {
			nextEl: ".kv-slide .swiper-button-next",
			prevEl: ".kv-slide .swiper-button-prev"
		},
		breakpoints: {
			1366: {
				slidesPerView: 6,
				spaceBetween: 20,
			},
			1280: {
				slidesPerView: 6,
				spaceBetween: 10,
			},
			767: {
				slidesPerView: 4,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			400: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
		},
	});
	var swiper = new Swiper(".other-slide .swiper-container", {
		speed: 750,
		observer: true,
		observeParents: true,
		lazy: true,
		breakpointsInverse: true,
		spaceBetween: 30,
		slidesPerView: 4,
		loop: false,
		navigation: {
			nextEl: ".other-slide .swiper-button-next",
			prevEl: ".other-slide .swiper-button-prev"
		},
		breakpoints: {
			1366: {
				slidesPerView: 4,
				spaceBetween: 20,
			},
			1280: {
				slidesPerView: 4,
				spaceBetween: 10,
			},
			767: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
		},
	});
	var swiper = new Swiper(".lastview-slide .swiper-container", {
		speed: 750,
		observer: true,
		observeParents: true,
		lazy: true,
		breakpointsInverse: true,
		spaceBetween: 30,
		slidesPerView: 4,
		loop: false,
		navigation: {
			nextEl: ".lastview-slide .swiper-button-next",
			prevEl: ".lastview-slide .swiper-button-prev"
		},
		breakpoints: {
			1366: {
				slidesPerView: 4,
				spaceBetween: 20,
			},
			1280: {
				slidesPerView: 4,
				spaceBetween: 10,
			},
			767: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
		},
	});
	var galleryThumbs = new Swiper('.pro-slider .gallery-thumbs', {
		direction: 'vertical',
		spaceBetween: 10,
		slidesPerView: 5,
		centeredSlides: true,
		loop: true,
		slideToClickedSlide: true,
		navigation: {
			nextEl: ".pro-slider .swiper-button-next",
			prevEl: ".pro-slider .swiper-button-prev"
		},
		breakpoints: {
			1280: {
				slidesPerView: 5,
				spaceBetween: 10,
			},
			991: {
				slidesPerView: 5,
				spaceBetween: 10,
				direction: 'horizontal',
			},
			767: {
				slidesPerView: 3,
				spaceBetween: 10,
				direction: 'horizontal',
			},
			575: {
				direction: 'horizontal',
				slidesPerView: 3,
				spaceBetween: 10,
			},
		},
	});
	var galleryTop = new Swiper('.pro-slider .gallery-top', {
		spaceBetween: 30,
		loop: true,
		slideToClickedSlide: true,
		thumbs: {
			swiper: galleryThumbs,
		},
	});
	// galleryTop.params.control = galleryThumbs
	// galleryThumbs.params.control = galleryTop
}
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#home-banner");
	if (mainBanner.length >= 1) {
		$('main').css('padding-top', heightHeader);
	} else if (pagesBanner.length >= 1) {
		$('main').css('padding-top', heightHeader);
	} else {
		$('main').css('padding-top', heightHeader);
	}
};

function DataBG() {
	$('[data-bg]').each(function () {
		$(this).addClass('data-bg lazyload')
	})
}

function setBackground() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center",
			"background-repeat": "no-repeat",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "no-repeat",
		});
	});
}

function tabs() {
	var str = $('.full-content').text().length
	if (str == 9) {
		$('.full-content').parent().css('display', 'none')
	} else {
		$('.tabs > li').on('click', function () {
			var $panel = $(this).closest('.tab-panels');
			$panel.find('li.active').removeClass('active');
			$(this).addClass('active');
			var panelToShow = $(this).attr('rel');
			$panel.find('.panel.active').fadeOut(300, showNextPanel);

			function showNextPanel() {
				$(this).removeClass('active');
				$('#' + panelToShow).fadeIn(300, function () {
					$(this).addClass('active').fadeIn(300);
				});
			};
		});
		if ($(window).width() < 992 && '.category-nav'.length >= 1) {
			$('.category-nav').on('click', function () {
				$(this).find('.material-icons').toggleClass('active');
				$(this).siblings('.tabs, .filter-content').slideToggle('slow')
			})
		}
		if ($(window).width() < 992 && '.category-nav'.length >= 1) {
			$('.category-nav').on('click', function () {
				$(this).find('.material-icons').toggleClass('active');
				$(this).siblings('.tabs-left').slideToggle()
			})
		}
	}
}

function phantrang() {
	$('.modulepager').find('.pagination').find('li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage').parent().hide()
}

// function quantityNumber() {
//     $(".qty-minus").click(function () {
//         let minus = $(this).parents('.input-group').find('input').val();
//         console.log('top')
//         console.log(minus)
//         if (minus > 0) {
//             $(this).parents('.input-group').find('input').val(minus - 1);
//         } else {
//             $(this).parents('.input-group').find('input').val(0);
//         }
//     });
//     $(".qty-plus").on("click", function () {
//         let plus = Number($(this).parents('.input-group').find('input').val());
//         console.log('bottom')
//         console.log(plus)
//         $(this).parents('.input-group').find('input').val(plus + 1);
//     });
// }
function changePlaceholder() {
	$('.subscribe .form-group input ').attr('placeholder', 'Nhập email...');
}

function breadCrumb() {
	$('.global-breadcrumb .breadcrumb li').first().find('a').addClass('fas fa-home')
}

function category() {
	if ($(window).width() < 992 && '.zone-nav'.length >= 1) {
		$('.zone-nav .box-category').on('click', function (x) {
			x.stopPropagation();
			$(x.currentTarget).siblings('ul').slideToggle();
			$('.zone-nav .box-category .material-icons').toggleClass('active')
		});
	}
	$('.attribute .att-title').on('click', function (i) {
		$(this).toggleClass('active')
		i.stopPropagation();
		$(i.currentTarget).siblings('ul').slideToggle();
	})
}

function readMore() {
	$('.view-more').on('click', function () {
		$(this).toggleClass('active');
		if ($(this).hasClass('active')) {
			$(this).siblings('.full-content').removeClass('ovh')
			$(this).siblings('.full-content').removeClass('gradient')
			$(this).find('span').text('Thu ngọn')
		} else {
			$(this).siblings('.full-content').addClass('ovh')
			$(this).siblings('.full-content').addClass('gradient')
			$(this).find('span').text('Xem thêm')
		}
	})

}

function Faqs() {
	$('.question-title').click(function (x) {
		x.stopPropagation();
		var $this = $(this);
		if ($this.hasClass('active')) {
			$this.parent().find('.question-title.active').removeClass('active');
			$this.addClass('active');
			$this.removeClass('active');
			$this.next().slideUp(450);
		} else {
			$this.removeClass('active');
			$this.addClass('active');
			$this.parent().find('.question-body').slideUp(450);
			$this.next().slideToggle(450);
		}
	})
}

function moverDiv() {
	$('.move-div').appendTo('.infor-contact')
}

function checkInput() {
	$('.check-group #ttmh').on('click', function () {
		$('.user-info').slideToggle()
	})
}

function sweetAlert() {
	$('.sweet-alert').on('click', function () {
		Swal.fire('Cảm ơn Quý khách hàng đã ghé thăm sản phẩm của NIKENKO. Danh mục sản phẩm này đang phát triển nên chưa được mở bán. Chúng tôi sẽ cố gắng đưa sản phẩm thuộc danh mục này đến khách hàng sớm nhất có thể.<br/>Mong quý khách hàng thông cảm!');
	});
}


document.addEventListener('DOMContentLoaded', () => {
	initMapping();
	toggleMenuMobile();
	DataBG();
	setBackground();
	NikenkoSlide();
	checkLayoutBanner();
	tabs();
	phantrang();
	// quantityNumber();
	// changePlaceholder();
	breadCrumb();
	category();
	openCart();
	readMore();
	Faqs();
	moverDiv();
	checkInput();
	// sweetAlert();
});