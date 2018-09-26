$(document).ready(function() {
    console.log("hello !")

    var vehicleSelect = $('.vehicle-select');

    vehicleSelect.on("change",function() {
        var self = $(this);
        $.ajax({
            url : '/GetVehicle',
            data : {
                vehicleId : $(this).find(':selected').val()
            },
            dataType : "json",
            statusCode: {
                500: function() {
                    self.closest('.modal-body').find('.vehicle-owner').val("Coś nie tak");
                }
            },
            success : function(result) {
                var od = result ;
                var odString = JSON.stringify(result) ;
                console.log(odString);
                console.log(self);
                self.closest('.modal-body').find('.vehicle-owner').val(od.client.firstName + " " + od.client.lastName);
            },
            error: function(data){
                self.closest('.modal-body').find('.vehicle-owner').val("Brak połączenia z bazą danych");
            }
        });
    });

    $('#employee').on("change",function() {
        $('#hourly-rate').val($(this).find(':selected').data('hourly-rate'));
    });

    var costsCounting = $("form").find(".costs-counting");

    costsCounting.on("change",function() {
        var hourlyRate = Number($("#employee").find(':selected').data('hourly-rate'));
        var partsCost = Number($("#parts-cost").val());
        var manHours = Number($("#man-hours").val());

        var result = (hourlyRate * manHours) + partsCost;

        result = (Math.round(result*100)/100).toFixed(2);

        $("#total-cost").val(result);

    });

    var ordersList = $('#orders-list').html();
    var header = $('.filtred-orders');
    if(header.length !=0) {
        var editedHeader = header.html();
        var n = header.html().lastIndexOf('pracownika');
        if(n >= 0) {
            editedHeader = header.substring(0,n)
        }

    }


    $('#employees').on("change",function() {
        if($(this).find(':selected').val()) {

            $.ajax({
                url : '/GetOrders',
                data : {
                    employeeId : $(this).find(':selected').val(),
                    vehicleId : $(this).data('vehicle-id')
                },
                dataType : "json",
                statusCode: {
                    500: function() {
                        $('#ajax-info').html("Nie ma takiego powiązania");
                        $('#orders-list').html("");
                    }
                },
                success : function(result) {

                    if(result.length>0) {
                        var od = result ;
                        var employeeOrders = "";
                        $.each(od,function (key,value) {
                            employeeOrders += "<tr>";
                            employeeOrders += "<td>" + value.serviceAccept +"</td>";
                            employeeOrders += "<td>" + value.vehicle.client.firstName + " " + value.vehicle.client.lastName + "</td>";
                            employeeOrders += "<td>" + value.vehicle.model + " " + value.vehicle.make + "</td>";
                            employeeOrders += "<td>" + value.employee.firstName + " " + value.employee.lastName + "</td>";
                            employeeOrders += "<td>" + value.status.name + "</td>";
                            var repairCost = (value.repairCost > 0) ? value.repairCost.toFixed(2) : "";
                            repairCost = repairCost.replace(".",",")
                            employeeOrders += "<td>" + repairCost + "</td>";
                            employeeOrders += "<td><a class='btn btn-success' href='/order/details?id=" + value.id + "'>szczegóły</a></td>";
                            employeeOrders += "<td><a class='btn btn-primary' href='/order/update?id=" + value.id + "'>edytuj</a></td>";
                            employeeOrders += "<td><a class='btn btn-danger' href='#'>usuń</a></td>";
                            employeeOrders += "</tr>";

                        });
                        $('#orders-list').html(employeeOrders);
                        var newHeader = editedHeader + " pracownika: " + od[0].employee.firstName + " " + od[0].employee.lastName;
                        header.html(newHeader);
                        $('#ajax-info').html("");
                    } else {
                        $('#ajax-info').html("Nie ma takiego powiązania");
                        $('#orders-list').html("");
                        header.html(editedHeader);
                    }

                },
                error: function(data){
                    $('#ajax-info').html("Błąd połączenia do bazy danych");
                }
            });
        } else {
            $('#orders-list').html(ordersList);
            header.html(editedHeader);
            $('#ajax-info').html("");
        }
    });

    // zaznaczanie w menu obecnie otwartej zakładki

    var navbarMenu = $('.navbar');
    navbarMenu.find('li.active').removeClass('active');
    navbarMenu.find('a[href="' + location.pathname + '"]').closest('li').addClass('active');

    // po walidacji po stronie serwera formularza do edycji zlecen ponowne otwarcie formularza z dodanymi przez serwer komunikatami

    var formValid = $('.formValid.editor-add');
    console.log(formValid);
    console.log(formValid.data('is-valid'));


    if(formValid.data('is-valid') == '0') {

        console.log("formularz nie zwalidowany");
        var formToInvolve = formValid.closest(".modal")[0].id;

        console.log(formToInvolve)

        var elementToInvole = $(".add-elements").find("[data-target='#" + formToInvolve + "']");
        console.log(elementToInvole);

        elementToInvole.click();

    }

    // przycisk anuluj w formularzu czysci dane i komunikaty z serwera,

    $('button.btn.btn-default').on("click",function () {

        if(formValid.data('is-valid') !== undefined) {

            $('.modal.fade').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function(e) {

                if(formValid.data('location') !== "") {
                    var url = formValid.data("location");
                } else {
                    var url = "/";
                }

                window.location.href = url;
                return false;

                // $(this).closest('form').find("input[type=text], input[type=date] textarea, select").val("");
                //
                // var toClear = $(this).closest('form').find('.modal-header').find('.formValid');
                // toClear.attr("data-is-valid", "1")
                // toClear.find("ul").empty();
            });
        }
    })

    //FIXED HEADER ON SCROLL
    // When the user scrolls the page, execute myFunction
    window.onscroll = function() {myFunction()};

    // Get the header
    var header = document.getElementById("header");
    var navbarBackground = document.getElementById("navbarBackground");

    // Get the offset position of the navbar
    var sticky = header.offsetTop;

    // Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
    function myFunction() {
        if (window.pageYOffset > sticky) {
            // header.classList.add("sticky");
            navbarBackground.classList.add("sticky");
        } else {
            // header.classList.remove("sticky");
            navbarBackground.classList.remove("sticky");
        }
    }
});