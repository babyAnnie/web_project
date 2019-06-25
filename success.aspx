<%@ Page Language="C#" AutoEventWireup="true" CodeFile="success.aspx.cs" Inherits="success" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
</head>
    <style>
            body{
	        font-family:"Trebuchet MS", "Myriad Pro", Arial, sans-serif;
	        font-size:14px;
	        background:#FFFFFF url(/imgsrc/bg.gif) repeat top left;
	        color:#333;
	        
	        overflow-y:scroll;
           }
            .logintitle{
            border:2px solid;
            padding:10px 40px; 
            width:300px;
            height:40px;
            resize:both;
            margin:0 auto;
            background:#444 ;
    }
            .logincontext{
            border:2px solid;
            padding:10px 40px; 
            width:300px;
            height:400px;
            margin:0 auto;
            background-color: #FFFFFF;
           
            }

            #div1{
                margin:0 auto;  
              
              
            
          }
            #div2 {
                float: left;
            }
            .div3 {
                margin:0 auto;  
                margin-top:150px;
                margin-bottom:100px;
                width:200px;
                height:100px;
                position: relative;  
                
            }
            #head{
                color:red;
                padding: 0px 30px 0px 0px;
            }
            .input{
                width:190px;
                border: 1px solid black;
                border-radius: 3px;
                padding-left:5px;
                margin-top: 0px;
                padding-right: 0px;
                padding-top: 7px;
                padding-bottom: 7px;
        }
            .input:focus{
                    border-color: #66afe9;
                    outline: 0;
                    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
                    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
            }
            .button{
                border: 1px solid #ccc;
                border-radius: 3px;
                padding-left:5px;
                margin-top: 20px;
                margin-left:25px;
                margin-right:25px;
                padding-right: 0px;
                padding-top: 7px;
                padding-bottom: 7px;
                width: 150px;
                height: 30px;
                text-align:center;
            }
            .label{
                font-family:"Trebuchet MS", "Myriad Pro", Arial, sans-serif;
                color:black;
                font-size:large;
                position: relative;
                margin-left:0px;
            }
            .reg{
                color:blue;
                font-size:large;
               
            }
            #title{
                color:yellowgreen;
   
            }
            .table1{
                margin-left:70px;
            }
    </style>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="/imgsrc/top.png" width="100%" />
    </div>
    <div class="logindiv">
        <div class="logintitle">
            <div id="div1">
                <table class="table1">
                    <tr>
                        <td><img src="/imgsrc/s.png" /></td>
                        <td><h2 id="title">注册成功</h2></td>
                    </tr>
                </table>     
            </div>
        </div>
        <div class="logincontext">
            
            <div class="div3">
                <a href="login.aspx" class="reg" id="jump">
                <asp:Label Text="注册成功,点击返回登录界面" runat="server" ID="label1" />
                </a>
                <span id="jumpTo">3</span><a href="login.aspx" class="reg">秒后自动跳转到登录界面</a> 
                
               <script type="text/javascript">
                   function countDown(secs, surl) {
                       //alert(surl);     
                       var jumpTo = document.getElementById('jumpTo');
                       jumpTo.innerHTML = secs;
                       if (--secs > 0) {
                           setTimeout("countDown(" + secs + ",'" + surl + "')", 1000);
                       }
                       else {
                           location.href = surl;
                       }
                   }
               </script> 
                <script type="text/javascript">countDown(3, "login.aspx");</script>
            </div>
            
        </div>
        <div class="logintitle">
            
        </div>
    </div>
    </form>
</body>
</html>

