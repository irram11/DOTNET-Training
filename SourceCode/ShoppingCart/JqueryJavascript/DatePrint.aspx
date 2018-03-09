<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePrint.aspx.cs" Inherits="JqueryJavascript.DatePrint" %>

<!DOCTYPE html>


  <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://momentjs.com/downloads/moment.js"></script>
    <script>
        function Message() {
            //var dateval = moment(document.getElementById("txtMessage").value).format('YYYY-DD-MM');
            var dateval = moment(document.getElementById("txtMessage").value).format('YYYY-DD-MM');
            var dateObj = new Date(dateval);
            var month = dateObj.getUTCMonth() + 1; //months from 1-12
            var day = dateObj.getUTCDate();
            var year = dateObj.getUTCFullYear();
            document.getElementById("Day").innerHTML = "Day -" + day;
            document.getElementById("Month").innerHTML = "Month -" + month;
            document.getElementById("Year").innerHTML = "Year -" + year;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input placeholder="dd-mm-yyyy" type="text" id="txtMessage" />
            <input type="button" onclick="Message()" value="Submit" />
        <p id="Day"></p>
        <p id="Month"></p>
        <p id="Year"></p>
    </div>
    </form>
</body>
</html>

