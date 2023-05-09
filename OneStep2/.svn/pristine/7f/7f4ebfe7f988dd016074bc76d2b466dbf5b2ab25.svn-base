if(window.innerWidth <= 1068){
    $('.responsive-msg-component').hide();
}
$(document).ready(function(){
    $('.bs-tooltip').click(function () {
       $('.bs-tooltip').tooltip("hide");
    });
    $('.close-msg-component').click(function () {
        $('.responsive-msg-component').hide();
    });
});
$(document).ready(function(){
    $('.bs-tooltip').click(function () {
       $('.bs-tooltip').tooltip("hide");
    });
});
var App = function() {
    var MediaSize = {
        xl: 1200,
        lg: 992,
        md: 991,
        sm: 576
    };
    var ToggleClasses = {
        headerhamburger: '.toggle-sidebar',
        inputFocused: 'input-focused',
    };
    var Selector = {
        mainHeader: '.header.navbar',
        headerhamburger: '.toggle-sidebar',
        fixed: '.fixed-top',
        mainContainer: '.main-container',
        sidebar: '#sidebar',
        sidebarContent: '#sidebar-content',
        sidebarStickyContent: '.sticky-sidebar-content',
        ariaExpandedTrue: '#sidebar [aria-expanded="true"]',
        ariaExpandedFalse: '#sidebar [aria-expanded="false"]',
        contentWrapper: '#content',
        contentWrapperContent: '.container',
        mainContentArea: '.main-content',
        searchFull: '.toggle-search',
        rightBar:'.right-bar',
        overlay: {
            sidebar: '.overlay',
            cs: '.cs-overlay',
            search: '.search-overlay'
        }
    };
    var toggleFunction = {
        sidebar: function($recentSubmenu) {
            $('.sidebarCollapse').on('click', function (sidebar) {
                sidebar.preventDefault();
                $(Selector.mainHeader).toggleClass('expand-header');
                $('.overlay').toggleClass('show');
                if($(Selector.mainContainer).hasClass("sidebar-closed")){
                    setTimeout(function(){ 
                        $(Selector.mainContainer).removeClass("sidebar-closed");
                    }, 400);
                } else {
                    $(Selector.mainContainer).addClass("sidebar-closed");
                }
                if($(Selector.mainContainer).hasClass("sbar-open")){
                    setTimeout(function(){ 
                        $(Selector.mainContainer).removeClass("sbar-open");
                    }, 400);
                } else {
                    $(Selector.mainContainer).addClass("sbar-open");
                }
                
                if($('html,body').hasClass('sidebar-noneoverflow')){
                    setTimeout(function(){ 
                        $('html,body').removeClass('sidebar-noneoverflow'); 
                    }, 400);
                } else {
                    $('html,body').toggleClass('sidebar-noneoverflow'); 
                }
                
                // $('html,body').toggleClass('t-sidebar-collapse');

                // Uncomment below line and comment above line to reduce the waiting time
                if($('html,body').hasClass('t-sidebar-collapse')){
                    $('html,body').removeClass('t-sidebar-collapse');
                } else {
                    setTimeout(function(){ 
                        $('html,body').addClass('t-sidebar-collapse');
                    }, 600);
                }
            });
        },
        overlay: function() {
            $('#dismiss, cs-overlay').on('click', function () {
                // hide sidebar
                $(Selector.mainContainer).addClass('sidebar-closed');
                $(Selector.mainContainer).removeClass('sbar-open');
                // hide overlay
                $('.overlay').removeClass('show');
                $('html,body').removeClass('sidebar-noneoverflow');
            });
        },
        search: function() {
            $(Selector.searchFull).click(function(event) {
               $(this).parents('.search-animated').find('.search-full').addClass(ToggleClasses.inputFocused);
               $(this).parents('.search-animated').addClass('show-search');
               $(Selector.overlay.search).addClass('show');
               $(Selector.overlay.search).addClass('show');
            });

            $(Selector.overlay.search).click(function(event) {
               $(this).removeClass('show');
               $(Selector.searchFull).parents('.search-animated').find('.search-full').removeClass(ToggleClasses.inputFocused);
               $(Selector.searchFull).parents('.search-animated').removeClass('show-search');
            });
        },
        rightbar: function() {
            $('.rightbarCollapse').on('click', function () {
                $('.rightbar-overlay').toggleClass('show');               
                $('body').toggleClass('right-bar-enabled');
            });
        },
        rightbarClose: function() {
            $('.rightbar-overlay').on('click', function () {
                $('.rightbar-overlay').removeClass('show');               
                $('body').removeClass('right-bar-enabled');
                // Open first tab in right bar everytime
                $('.right-bar .simplebar-content .nav-tabs .nav-item:nth-child(3) a.nav-link').removeClass('active');
                $('.right-bar .simplebar-content .nav-tabs .nav-item:nth-child(2) a.nav-link').removeClass('active');
                $('.right-bar .simplebar-content .nav-tabs .nav-item:nth-child(1) a.nav-link').addClass('active');
                $('.right-bar .simplebar-content .tab-content .tab-pane:nth-child(3)').removeClass('active');
                $('.right-bar .simplebar-content .tab-content .tab-pane:nth-child(2)').removeClass('active');
                $('.right-bar .simplebar-content .tab-content .tab-pane:nth-child(1)').addClass('active');
            });
        },
    }

    var inBuiltfunctionality = {
        mainCatActivateScroll: function() {
            const ps = new PerfectScrollbar('.menu-categories', {
                wheelSpeed:.5,
                swipeEasing:!0,
                minScrollbarLength:40,
                maxScrollbarLength:300,
                suppressScrollX : true
            });
            const vs = new PerfectScrollbar('.rightbar-tab', {
                wheelSpeed:.5,
                swipeEasing:!0,
                minScrollbarLength:40,
                maxScrollbarLength:300,
                suppressScrollX : true
            });
            
        },
        preventScrollBody: function() {
            $('#sidebar').bind('mousewheel DOMMouseScroll', function(e) {
                var scrollTo = null;

                if (e.type == 'mousewheel') {
                    scrollTo = (e.originalEvent.wheelDelta * -1);
                }
                else if (e.type == 'DOMMouseScroll') {
                    scrollTo = 40 * e.originalEvent.detail;
                }

                if (scrollTo) {
                    e.preventDefault();
                    $(this).scrollTop(scrollTo + $(this).scrollTop());
                }
            });
            $('.rightbar-tab-container').bind('mousewheel DOMMouseScroll', function(e) {
                var scrollTo = null;

                if (e.type == 'mousewheel') {
                    scrollTo = (e.originalEvent.wheelDelta * -1);
                }
                else if (e.type == 'DOMMouseScroll') {
                    scrollTo = 40 * e.originalEvent.detail;
                }

                if (scrollTo) {
                    e.preventDefault();
                    $(this).scrollTop(scrollTo + $(this).scrollTop());
                }
            });
        },
        functionalDropdown: function() {
            var getDropdownElement = document.querySelectorAll('.more-dropdown .dropdown-item');
            for (var i = 0; i < getDropdownElement.length; i++) {
                getDropdownElement[i].addEventListener('click', function() {
                    document.querySelectorAll('.more-dropdown .dropdown-toggle > span')[0].innerText = this.getAttribute('data-value');
                })
            }
        }
    }


    var fullScreenMode = {
        fullscreen: function() {
            var toggle; 
            $('.full-screen-mode').on('click', function () {
                toggle = !toggle;
                var myId = document.getElementById('fullScreenIcon');
                if(toggle){
                    myId.classList.remove("la-compress");
                    myId.classList.add("la-compress-arrows-alt");
  
                    var elem = document.documentElement;
                    if (elem.requestFullscreen) {
                        elem.requestFullscreen();
                    } else if (elem.mozRequestFullScreen) { /* Firefox */
                        elem.mozRequestFullScreen();
                    } else if (elem.webkitRequestFullscreen) { /* Chrome, Safari & Opera */
                        elem.webkitRequestFullscreen();
                    } else if (elem.msRequestFullscreen) { /* IE/Edge */
                        elem.msRequestFullscreen();
                    }
                } else if(!toggle) {
                    myId.classList.remove("la-compress-arrows-alt");
                    myId.classList.add("la-compress");
                    document.getElementById("fullScreenIcon").classList.remove('helo');
                    if (document.exitFullscreen) {
                        document.exitFullscreen();
                    } else if (document.mozCancelFullScreen) {
                        document.mozCancelFullScreen();
                    } else if (document.webkitExitFullscreen) {
                        document.webkitExitFullscreen();
                    } else if (document.msExitFullscreen) {
                        document.msExitFullscreen();
                    } 
                }
            })
        },
        
    }




    var _mobileResolution = {
        onRefresh: function() {
            var windowWidth = window.innerWidth;
            if ( windowWidth <= MediaSize.md ) {
                toggleFunction.sidebar();
            }
        },

    }

    var _desktopResolution = {
        onRefresh: function() {
            var windowWidth = window.innerWidth;
            if ( windowWidth > MediaSize.md ) {
                toggleFunction.sidebar(true);
            }
        },

        
    }

    function formatAMPM(date) {
        var hours = date.getHours();
        var minutes = date.getMinutes();
        var ampm = hours >= 12 ? 'pm' : 'am';
        hours = hours % 12;
        hours = hours ? hours : 12; // the hour '0' should be '12'
        minutes = minutes < 10 ? '0'+minutes : minutes;
        var strTime = hours + ':' + minutes + ' ' + ampm;
        document.getElementById('currentTime').innerHTML = strTime;
        return strTime;
        
    }

    function formatDate() {
        var today = new Date();
        const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        var year = today.getFullYear();
        var month = monthNames[today.getMonth()]
        var date = today.getDate();
        var fullDate = date+" "+month+" "+year;
        document.getElementById('currentDate').innerHTML = fullDate;
        return fullDate;
    }

    function sidebarFunctionality() {
        function sidebarCloser() {

            if (window.innerWidth <= 991 ) {
                $("body").addClass("t-sidebar-collapse");
                if (!$('body').hasClass('alt-menu')) {
                    $("#container").addClass("sidebar-closed");
                    $('.overlay').removeClass('show');
                } else {
                    $(".navbar").removeClass("expand-header");
                    $('.overlay').removeClass('show');
                    $('#container').removeClass('sbar-open');
                    $('html, body').removeClass('sidebar-noneoverflow');
                }

            } else if (window.innerWidth > 991 ) {

                if (!$('body').hasClass('alt-menu')) {

                    $("#container").removeClass("sidebar-closed");
                    $(".navbar").removeClass("expand-header");
                    $('.overlay').removeClass('show');
                    $('#container').removeClass('sbar-open');
                    $('html, body').removeClass('sidebar-noneoverflow');
                } else {
                    $('html, body').addClass('sidebar-noneoverflow');
                    $("#container").addClass("sidebar-closed");
                    $(".navbar").addClass("expand-header");
                    $('.overlay').addClass('show');
                    $('#container').addClass('sbar-open');
                }
            }

        }

        function sidebarMobCheck() {
            if (window.innerWidth <= 991 ) {

                if ( $('.main-container').hasClass('sbar-open') ) {
                    return;
                } else {
                    sidebarCloser()
                }
            } else if (window.innerWidth > 991 ) {
                sidebarCloser();
            }
        }

        sidebarCloser();

        $(window).resize(function(event) {
            sidebarMobCheck();
        });

        // FOR RIPPLE EFFECT

        (function($, window, document, undefined) {

            'use strict';
          
            var $ripple = $('.js-ripple');
          
            $ripple.on('click.ui.ripple', function(e) {
          
              var $this = $(this);
              var $offset = $this.parent().offset();
              var $circle = $this.find('.ripple-ripple__circle');
          
              var x = e.pageX - $offset.left;
              var y = e.pageY - $offset.top;
          
              $circle.css({
                top: y + 'px',
                left: x + 'px'
              });
          
              $this.addClass('is-active');
          
            });
          
            $ripple.on('animationend webkitAnimationEnd oanimationend MSAnimationEnd', function(e) {
                $(this).removeClass('is-active');
            });
          
        })(jQuery, window, document);

    }

    return {
        init: function() {
            toggleFunction.overlay();
            toggleFunction.search();
            toggleFunction.rightbar();
            toggleFunction.rightbarClose();

            // Full Screen Mode
            fullScreenMode.fullscreen();

            /*
                Desktop Resoltion fn
            */
            _desktopResolution.onRefresh();

            // Note : -  _desktopResolution -> onResize | Uncomment it if need for onresize functions for MOBILE RESOLUTION i.e. above or equal to 991px |

            // _desktopResolution.onResize();

            /*
                Mobile Resoltion fn
            */
            _mobileResolution.onRefresh();

            // Note : -  _mobileResolution -> onResize | Uncomment it if need for onresize functions for DESKTOP RESOLUTION i.e. below or equal to 991px |
            
            // _mobileResolution.onResize();
            formatAMPM(new Date);
            formatDate();
            sidebarFunctionality();
            inBuiltfunctionality.mainCatActivateScroll();
            inBuiltfunctionality.preventScrollBody();
            inBuiltfunctionality.functionalDropdown();
        }
    }

}();
