<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="paytm.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title></title>
    <script>
        var x;
        function Logout() {
            x = new XMLHttpRequest();
            x.open("GET", "ajax.aspx?status=end", true);
            x.onreadystatechange = MyFunction;
            x.send(null);
        }

        function MyFunction() {
            if (x.readyState == 4) {
                location = '../index.aspx';
            }
        }

        function noBack() {
            window.history.forward();
        }
    </script>
</head>
<body onload="Logout(),noBack()">
    <form id="form1" runat="server">
    <div>
    Redirecting please wait.....
    </div>
    </form>
</body>
</html>
