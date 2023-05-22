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
    var product = showProduct(result.listResult);
    var navigation = pagination(result.totalPage, result.page);
    $('#products').html(product);
    $('#navigation').html(navigation);
}

function showProduct(list) {
    var str = "";
    for (let tree of list) {
        str += "  <div class='col-md-3 col-sm-3 col-xs-6 product-resize product-item-box'>";
        str += "    <div class='product-item'>"
        str += "       <div class='image image-resize'>"
        str += "      <a href='/chi-tiet-san-pham?id=" + tree.id + "'>";
        str += "       <img src='" + tree.mediaList[0].path + "'style='display: inline-block;height: 252px '>";
        str += "      </a>";
        str += "   <span class='hot'>";
        str += tree.discount ? tree.discountFormat : "Mới" + "</span>";
        str += "    </div>";
        str += "   <div class='right-block'>";
        str += "    <h2 class='name'>";
        str += "       <a href='/chi-tiet-san-pham?id=" + tree.id + "'>";
        str += tree.name + "</a>";
        str += " </h2>";
        str += " <div class='rating'>";
        str += " <div class='rating-1'>";
        str += "   <span class='rating-img'>";
        str += "  </span>";
        str += "</div>";
        str += " </div>";
        if (tree.quantity) {
            str += " <div class='price'>";
            str += "   <div><span class='price-old'>";
            str += tree.discount ? tree.priceFormat : "" + "</span>";
            str += "   </div>";
            str += " <div><span class='price-new'>" + tree.priceDiscount;
            str += " </span>";
            str += "</div>";
            str += "</div>";
            str += "  <div class='button'>";
            str += " <a class='btn btn-default' href='/thanh-toan?id=" + tree.id + "'>Mua ngay</a>";
            str += "  <a class='btn btn-default'";
            str += "onclick=' addCart(" + tree.id + ")' >Thêm giỏ hàng</a>";
            str += "</div>";
        } else {


            str += "   <div class='price'>";
            str += "   <div><span class='price-old'></span>";
            str += "   </div>";
            str += " <div> <span class='price-new'>Hết hàng</span>";
            str += " </div>";
            str += " </div>";
            str += "  <div class='button'>";
            str += " <a class='btn btn-default' href='/chi-tiet-san-pham?id=" + tree.id + "'>Chi tiết sản phẩm</a>";
            str += " </div>";
        }
        str += " </div>";
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
            tree_id: tree_id
        }
    }).done(function (list) {
        if (list == null) {
            window.location = "/dang-nhap";
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
    var keySearch = document.getElementById("search").value;
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


