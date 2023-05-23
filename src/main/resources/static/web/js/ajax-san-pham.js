function movePage(page) {

    var searchValue = window.location.search;
    $.ajax({
        method: "get",
        url: "danh-sach-san-pham?page=" + page + "&" + searchValue.substring(1),
        dataType: "json",
        cache: "false"
    }).done(function (result) {
        show(result);
    });
}

function show(result) {
    var productGrid = showProduct(result.listResult);
    var navigation = pagination(result.totalPage, result.page);
    $('#grid-view').html(productGrid);
    $('#navigation').html(navigation);
}

function showProduct(list) {
    var str = "";
    for (let tree of list) {
        str += "<div class='col-sm-6 col-md-6 col-lg-4 col-xl-4'>";
        str += "<div class='products-single fix'>";
        str += "<div class='box-img-hover'>";
        str += "<div class='type-lb'>";
        str += "<p class='sale'>";
        str += tree.hotTree ? 'Hot' : '' + "</p>";
        str += "<p class='sale'>";
        str += tree.newTree ? 'New' : '' + "</p>";
        str += "</div>";
        str += "<img src='" + tree.mediaList[0].path + "' class='img-fluid' alt='Image'>";
        str += "<div class='mask-icon'>";
        str += "<ul>";
        str += "<li><a href='/chi-tiet-san-pham?id=" + tree.id + "' data-toggle='tooltip' data-placement='right' title='Chi tiết'><i class='fas fa-eye'></i></a></li>";
        str += "<li><a data-toggle='tooltip' data-placement='right' title='Add to Wishlist'><i class='far fa-heart'></i></a>";
        str += "</li>";
        str += "</ul>";
        str += "<a onclick=' addCart(" + tree.id + ")' style='cursor: pointer' class='cart'>Thêm vào giỏ hàng</a>";
        str += "</div>";
        str += "</div>";
        str += "<div class='why-text'>";
        str += "<h4>" + tree.name + "</h4>";
        str += "<p class='old-price'>";
        str += tree.discount ? tree.priceFormat : "" + "</p>";
        str += "<h5>" + tree.priceDiscount + "</h5>";
        str += "</div>";
        str += "</div>";
        str += "</div>";
    }

    return str;
}


function pagination(total, page) {
    var str = "";
    str += "<ul class='pagination'>";

    if (page == 1) {
        str += "   <li class='page-item first disabled'>";
        str += " <a href='#' class='page-link' id='first-page' >Trang đầu</a>"
        str += "</li>";
        str += " <li class='page-item prev disabled'>";
        str += "    <a href='#' class='page-link' >&lt;&lt;</a>";
        str += " </li>";
    } else {
        str += "<li class='page-item first'>";
        str += " <a href='#' class='page-link' id='first-page' onclick='movePage(" + 1 + ")'>Trang đầu</a>"
        str += "</li>";
        str += " <li class='page-item prev'>";
        str += "    <a href='#' class='page-link' onclick='movePage(" + (page - 1) + ")'>&lt;&lt;</a>";
        str += " </li>";
    }

    for (let i = 1; i <= total; i++) {
        if (i == page) {
            str += "<li class='page-item active diasble'>";
            str += " <a href='#' class='page-link' >" + i + "</a>";
            str += " </li>";
        } else {
            str += "<li class='page-item '>";
            str += " <a href='#' class='page-link' onclick='movePage(" + i + ")'>" + i + "</a>";
            str += " </li>";
        }

    }
    if (page == total) {
        str += " <li class='page-item prev disabled' >";
        str += "    <a href='#' class='page-link'>&gt;&gt;</a>";
        str += " </li>";

        str += "   <li class='page-item last disabled'>";
        str += " <a href='#' class='page-link' >Trang cuối</a>"
        str += "</li>";
    } else {

        str += " <li class='page-item prev'>";
        str += "    <a href='#' class='page-link' onclick='movePage(" + (page + 1) + ")'>&gt;&gt;</a>";
        str += " </li>";

        str += "   <li class='page-item last'>";
        str += " <a href='#' class='page-link' id='first-page' onclick='movePage(" + total + ")'>Trang cuối</a>"
        str += "</li>";
    }

    str += "</ul>";
    return str;
}
function addCart(tree_id) {
    $.ajax({
        method: 'get',
        url: 'them-san-pham',
        dataType: 'json',
        cache: 'false',
        data: {
            id: tree_id
        }
    }).done(function (cart) {
        if (cart.user == null) {
            window.location.href = "/dang-nhap";
        } else {
            alert("Sản phẩm đã được thêm vào giỏ hàng!");
        }
    });
}


function search_title() {
    var keySearch = document.getElementById("search").value;
    $.ajax({
        method: 'get',
        url: '/autocomplete?name=' + keySearch,
        dataType: 'json',
        cache: 'false',
    }).done(function (list) {
        $("#search").autocomplete({
            source: list
        });
    });
}


function search_title_product() {
    var keySearch = document.getElementById("searchName").value;
    $.ajax({
        method: 'get',
        url: '/danh-sach-san-pham?name=' + keySearch,
        dataType: 'json',
        cache: 'false',
    }).done(function (list) {
        show(list)
    });
}

function formatPrice(price) {
    price = price.toLocaleString('it-IT', {style: 'currency', currency: 'VND'});
    return price;
}


