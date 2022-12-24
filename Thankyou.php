<?php
include('./includes/config.php');
if (isset($_GET['partnerCode'])) {

    $code_order = rand(0, 9999);
    $partnerCode = $_GET['partnerCode'];
    $orderId = $_GET['orderId'];
    $amount = $_GET['amount'];
    $orderInfo = $_GET['orderInfo'];
    $orderType = $_GET['orderType'];
    $transId = $_GET['transId'];
    $payType = $_GET['payType'];
    $cart_payment = 'momo';

    //insert database vnpay
    $insert_momo = "INSERT INTO tbl_momo(partner_Code,order_Id,amount,order_Info,order_Type,trans_Id,pay_Type,code_Cart) VALUE('" . $partnerCode . "','" . $orderId . "','" . $amount . "','" . $orderInfo . "','" . $orderType . "','" . $transId . "','" . $payType . "','" . $code_order . "')";
    $cart_query = mysqli_query($con, $insert_momo);

    if ($cart_query) {
        //insert gio hàng
        echo '<h3>Giao dịch thanh toán bằng MOMO thành công</h3>';
        echo '<p>Vui lòng vào trang <a target="_blank" href="order-history.php">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
    } else {
        echo 'Giao dịch MOMO thất bại';
    }
}
?>
<p>Cám ơn bạn đã mua hàng ,chúng tôi sẽ liên hệ bạn trong thời gian sớm nhất</p>