﻿$(document).ready(function () {
	$("#btnAddress").click(function () {
		$("#newAddress").css("display", "block");
		$("#myAddresses").css("display", "none");
	});

	$("#btnAddresses").click(function () {
		$("#newAddress").css("display", "none");
		$("#myAddresses").css("display", "block");

	});
	$(".gvAddress a").addClass("fancybox").attr("data-type", "iframe");
		$(".fancybox").fancybox();

});

function  setActivePage(page) {
	switch (page) {
		case "addresses":
			$("#newAddress").css("display", "none");
			$("#myAddresses").css("display", "block");
			break;
		case "newAddress":
			$("#newAddress").css("display", "block");
			$("#myAddresses").css("display", "none");break;

		default:
			$("#newAddress").css("display", "none");
			$("#myAddresses").css("display", "block");
	}
}