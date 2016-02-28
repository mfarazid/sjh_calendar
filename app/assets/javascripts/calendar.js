var calendar = (function ($) {
  'use strict';

  var calendar = {
    
    // set it all up
    setup: function () {
      calendar.setupToday();
    },


    // setup the today button
    setupToday: function () {
      if (calendar.isCurrentYear()) {
        $('.month [data-doy="' + applicationData.today.doy + '"]').addClass('today');
        $('#day-meta a.today').click(function (event) {
          var slideNumber = applicationData.today.month - 1;
          event.preventDefault();
          calendar.slider.goToSlide(slideNumber);
          $('#month-meta .title h3').text($('.month:eq(' + slideNumber + ')').data('month'));
        });
      }
    },

    // is the calendar for the current year being shown?
    isCurrentYear: function () {
      return applicationData.year === applicationData.today.year;
    }
  };

  return calendar;
})(jQuery);
