<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regster.aspx.cs" Inherits="regster" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
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
                margin-top:50px;
                margin-bottom:100px;
                width:340px;
                height:350px;
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
                color:yellow;
                font-size:large;
                margin-left:70%;
            }
            #title{
                color:yellowgreen;
   
            }
            .table1{
                margin-left:50px;
            }
        .auto-style1 {
            height: 35px;
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
                        <td><h2 id="title">注册新用户</h2></td>
                    </tr>
                </table>     
            </div>
        </div>
        <div class="logincontext">
            <div class="div3">
                <div class="infos">
                <table class="field">
                  <tbody>
                  <tr>
                    <td class="field">学　　号：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_id" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="reg_edit_id" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d{5,11}$">格式错误</asp:RegularExpressionValidator>
                      </td></tr>
                  <tr>
                    <td class="field">姓　　名：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_name" /></td></tr>
                  <tr>
                    <td class="field">密　　码：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_pwd" TextMode="Password" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="reg_edit_pwd" ErrorMessage="RegularExpressionValidator" ValidationExpression="^.{6,20}$">密码太弱</asp:RegularExpressionValidator>
                      </td></tr>
                  <tr>
                    <td class="field">确认密码：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_pwdagain" TextMode="Password" /> 
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="reg_edit_pwd" ControlToValidate="reg_edit_pwdagain" ErrorMessage="CompareValidator">密码相异</asp:CompareValidator>
                      </td></tr>
                  <tr>
                    <td class="auto-style1">电　　话：</td>
                    <td class="auto-style1"><asp:TextBox CssClass="input" runat="server" ID="reg_edit_phone" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="reg_edit_phone" ValidationExpression="^(13[0-9]|14[0-9]|15[0-9]|166|17[0-9]|18[0-9]|19[8|9])\d{8}$">格式错误</asp:RegularExpressionValidator>
                      </td></tr>
                  <tr>
                    <td class="field">单　　位：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_depart" /></td></tr>
                      <tr>
                    <td class="field">住　　址：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_address" /></td></tr>
                       <tr>
                    <td class="field">邮　　箱：</td>
                    <td><asp:TextBox CssClass="input" runat="server" ID="reg_edit_email" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="reg_edit_email" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$">格式错误</asp:RegularExpressionValidator>
                           </td></tr>
                      <tr>
                          <td></td>
                          <td>
                              <asp:Button CssClass="button" Text="注册" runat="server" ID="btn_reg" OnClick="btn_reg_Click" />
                          </td>
                      </tr>
                  </tbody>
                </table>
                </div>
            </div>
        </div>
        <div class="logintitle">
        </div>
    </div>
    </form>
</body>
</html>
