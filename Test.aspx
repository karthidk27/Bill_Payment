<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .linkbtn {
            background-color: dodgerblue;
            color: white;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 5px;
        }

        .tblbtn, .tblcont {
            border-collapse: separate;
            border-spacing: 0 15px;
        }

        .tblbtnrow, .tblbtncol {
            text-align: center;
            padding: 5px;
        }

        .tblcontrow, .tblcontcol {
            padding: 5px;
        }

        .btn {
            background-color: dodgerblue;
            color: white;
            padding: 5px 10px;
        }

        .txtboxcolor {
            border-color: blue;
        }

        .txtcolor {
            color: blue;
        }

        .auto-style1 {
            padding: 5px;
            height: 32px;
        }

        .auto-style2 {
            width: 231px;
        }

        .auto-style4 {
            width: 243px;
        }

        .auto-style5 {
            width: 12px;
        }

        .auto-style6 {
            padding: 5px;
            width: 135px;
        }
    </style>
</head>
<body style="background-image: url(Image/bg.png); height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
    <form id="form1" runat="server">
        <div>
            <table style="border-collapse: collapse">
                <thead>
                    <tr style="border: none">
                        <td class="auto-style5" width="7%"></td>
                        <td align="center" width="20%">
                            <h2 class="txtcolor">BillPayz</h2>
                        </td>
                        <td style="border-left: solid 1px dodgerblue" class="auto-style2" width="20%"></td>
                        <td width="40%"></td>
                        <td style="border-left: solid 1px dodgerblue" class="auto-style4" width="13%">
                            <asp:Label ID="Label24" runat="server"></asp:Label><br />
                            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Logout</asp:LinkButton>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr style="border: none">
                        <td class="auto-style5"></td>
                        <td>
                            <table class="tblcont" id="TableHide1" runat="server">
                                <tr align="center" class="tblcontrow">
                                    <td colspan="2" class="tblcontrow">
                                        <h2 class="txtcolor">Login</h2>
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td style="width: 161px; vertical-align: top" class="tblcontrow">
                                        <asp:Label ID="Label2" runat="server" Text="Username" class="txtcolor"></asp:Label>
                                        <span style="color: red">*</span></td>
                                    <td class="tblcontrow">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtboxcolor" AutoCompleteType="Disabled"></asp:TextBox><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username cannot be empty" ForeColor="Red" ValidationGroup="Login" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>

                                </tr>
                                <tr class="tblcontrow">
                                    <td style="width: 161px" class="tblcontrow">
                                        <asp:Label ID="UserName" runat="server" Text="Password" class="txtcolor"></asp:Label>
                                        <span style="color: red">*</span></td>
                                    <td class="tblcontrow">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="txtboxcolor"></asp:TextBox><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Password cannot be empty" ForeColor="Red" ValidationGroup="Login" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td colspan="2" align="center" class="tblcontrow">
                                        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" ValidationGroup="Login" CssClass="btn" />
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td colspan="2" align="center" class="tblcontrow">
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>

                            </table>
                            <table class="tblcont" runat="server" id="TableHide2">
                                <tr align="center" class="tblcontrow">
                                    <td colspan="4" class="tblcontrow">
                                        <h2 class="txtcolor">Register</h2>
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td class="tblcontrow">
                                        <asp:Label ID="Label18" runat="server" Text="Username" class="txtcolor"></asp:Label>
                                        <span style="color: red">*</span>
                                    </td>
                                    <td class="tblcontrow">
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="txtboxcolor" AutoCompleteType="Disabled"></asp:TextBox><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="username cannot be empty" ControlToValidate="TextBox10" ForeColor="Red" ValidationGroup="Register" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td class="tblcontrow">
                                        <asp:Label ID="Label22" runat="server" Text="E-mail" class="txtcolor"></asp:Label>
                                        <span style="color: red">*</span>
                                    </td>
                                    <td class="tblcontrow">
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="txtboxcolor" AutoCompleteType="Disabled"></asp:TextBox><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="email cannot be empty" ControlToValidate="TextBox11" ForeColor="Red" ValidationGroup="Register" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Entered format is wrong" ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Register"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td class="tblcontrow">
                                        <asp:Label ID="Label19" runat="server" Text="Password" class="txtcolor"></asp:Label>
                                        <span style="color: red">*</span>
                                    </td>
                                    <td class="tblcontrow">
                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="txtboxcolor" TextMode="Password"></asp:TextBox><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password cannot be empty" ControlToValidate="TextBox12" ForeColor="Red" ValidationGroup="Register" Display="Dynamic"></asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td class="tblcontrow">
                                        <asp:Label ID="Label20" runat="server" Text="Confirm Password" class="txtcolor"></asp:Label>
                                        <span style="color: red">*</span>
                                    </td>
                                    <td class="tblcontrow">
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="txtboxcolor" TextMode="Password"></asp:TextBox><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Confirm Password cannot be empty" ControlToValidate="TextBox13" ForeColor="Red" ValidationGroup="Register" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="TextBox13" ControlToValidate="TextBox12" Display="Dynamic" ForeColor="Red" ValidationGroup="Register"></asp:CompareValidator>
                                    </td>
                                </tr>

                                <tr class="tblcontrow">
                                    <td colspan="4" align="center" class="tblcontrow">
                                        <asp:Button ID="Button6" runat="server" Text="Register" ValidationGroup="Register" OnClick="Button6_Click" CssClass="btn" />
                                    </td>
                                </tr>
                                <tr class="tblcontrow">
                                    <td colspan="4" align="center" class="tblcontrow">
                                        <asp:Label ID="Label23" runat="server" ForeColor="#00CC00"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="border-left: solid 1px dodgerblue" class="auto-style2">
                            <table class="tblbtn">
                                <tr class="tblbtnrow">
                                    <td class="tblbtncol">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="linkbtn">Mobile Recharge</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr class="tblbtnrow">
                                    <td class="tblbtncol">
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="linkbtn">DTH Recharge</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr class="tblbtnrow">
                                    <td class="tblbtncol">
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CssClass="linkbtn">Broadband Bill Payment</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr class="tblbtnrow">
                                    <td class="tblbtncol">
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" CssClass="linkbtn">Electricity Bill Payment</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr class="tblbtnrow">
                                    <td class="tblbtncol">
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" CssClass="linkbtn">CreditCard Bill Payment</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <asp:Panel runat="server" ID="MRecharge">
                                <table class="tblcont">
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontcol">
                                            <h3 class="txtcolor">Mobile Recharge</h3>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow" style="vertical-align: top">
                                            <asp:Label ID="Label3" runat="server" Text="Enter Mobile Number" CssClass="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="10" CssClass="txtboxcolor" AutoCompleteType="Disabled"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="mobile" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Number allowed" ControlToValidate="TextBox2" ValidationExpression='\d+' ForeColor="Red" ValidationGroup="mobile" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label4" runat="server" Text="Select Operator" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtboxcolor" DataTextField="operator" DataValueField="operator" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red" InitialValue="0" ValidationGroup="mobile"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label5" runat="server" Text="Choose Plan" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txtboxcolor" AutoPostBack="True" DataTextField="dataplan" DataValueField="dataplan" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList><br />
                                            <asp:Label ID="Label25" runat="server"></asp:Label>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList2" ForeColor="Red" InitialValue="0" ValidationGroup="mobile" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <asp:Button ID="Button1" runat="server" Text="Make Payment" CssClass="btn" ValidationGroup="mobile" OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel runat="server" ID="DthRecharge">
                                <table class="tblcont">
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="auto-style1">
                                            <h3 class="txtcolor">DTH Recharge</h3>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow" style="vertical-align: top">
                                            <asp:Label ID="Label6" runat="server" Text="Enter Customer Id" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone" MaxLength="13" CssClass="txtboxcolor" AutoCompleteType="Disabled" ToolTip="This is a 13 digit number"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="dth" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only Number allowed" ControlToValidate="TextBox3" ValidationExpression='\d+' ForeColor="Red" ValidationGroup="dth" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label7" runat="server" Text="Select Operator" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="txtboxcolor" AutoPostBack="True" DataTextField="dthoperator" DataValueField="dthoperator" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList3" Display="Dynamic" ForeColor="Red" InitialValue="0" ValidationGroup="dth"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label8" runat="server" Text="Choose Plan" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="txtboxcolor" AutoPostBack="True" DataTextField="dthplan" DataValueField="dthplan" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"></asp:DropDownList><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList4" Display="Dynamic" ForeColor="Red" InitialValue="0" ValidationGroup="dth"></asp:RequiredFieldValidator>
                                            <asp:Label ID="Label26" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <asp:Button ID="Button2" runat="server" Text="Make Payment" CssClass="btn" ValidationGroup="dth" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel runat="server" ID="BroadbandPay">
                                <table class="tblcont">
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <h3 class="txtcolor">Broadband Bill Payment</h3>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow" style="vertical-align: top">
                                            <asp:Label ID="Label9" runat="server" Text="Enter Account Number" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" MaxLength="10" CssClass="txtboxcolor" AutoCompleteType="Disabled" ToolTip="This is a 10 digit number"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="internet" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only Number allowed" ControlToValidate="TextBox4" ValidationExpression='\d+' ForeColor="Red" ValidationGroup="internet" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label10" runat="server" Text="Select ISP" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="txtboxcolor" AutoPostBack="True" DataTextField="isp" DataValueField="isp" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"></asp:DropDownList><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList5" Display="Dynamic" ForeColor="Red" InitialValue="0" ValidationGroup="internet"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label11" runat="server" Text="Choose Plan" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="txtboxcolor" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" AutoPostBack="True" DataTextField="internetplan" DataValueField="internetplan"></asp:DropDownList><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList6" Display="Dynamic" ForeColor="Red" InitialValue="0" ValidationGroup="internet"></asp:RequiredFieldValidator>
                                            <asp:Label ID="Label27" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <asp:Button ID="Button3" runat="server" Text="Make Payment" CssClass="btn" ValidationGroup="internet" OnClick="Button3_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel runat="server" ID="ElectricityBill">
                                <table class="tblcont">
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <h3 class="txtcolor">Electricity Bill Payment</h3>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow" style="vertical-align: top">
                                            <asp:Label ID="Label12" runat="server" Text="Enter Service Number" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone" MaxLength="12" CssClass="txtboxcolor" AutoCompleteType="Disabled" ToolTip="This is a 12 digit number"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox5" ForeColor="Red" ValidationGroup="EB" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Only Number allowed" ControlToValidate="TextBox5" ValidationExpression='\d+' ForeColor="Red" ValidationGroup="EB" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="tblcontrow">
                                            <asp:Label ID="Label13" runat="server" Text="Select Provider" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="txtboxcolor" DataTextField="provider" DataValueField="provider" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please choose an option" ControlToValidate="DropDownList7" Display="Dynamic" ForeColor="Red" InitialValue="0" ValidationGroup="EB"></asp:RequiredFieldValidator>
                                            <asp:Label ID="Label28" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <asp:Button ID="Button4" runat="server" Text="Make Payment" CssClass="btn" ValidationGroup="EB" OnClick="Button4_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel runat="server" ID="CreditCardBill">
                                <table class="tblcont">
                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <h3 class="txtcolor">CreditCard Bill Payment</h3>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="auto-style6" style="vertical-align: top">
                                            <asp:Label ID="Label14" runat="server" Text="Enter Card Number" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Phone" MaxLength="16" CssClass="txtboxcolor" AutoCompleteType="Disabled" ToolTip="This is 16 digit number"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox6" ForeColor="Red" ValidationGroup="credit" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Only Number allowed" ControlToValidate="TextBox6" ValidationExpression='\d+' ForeColor="Red" ValidationGroup="credit" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="auto-style6">
                                            <asp:Label ID="Label17" runat="server" Text="Select Valid Thru" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="txtboxcolor">
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                <asp:ListItem>01</asp:ListItem>
                                                <asp:ListItem>02</asp:ListItem>
                                                <asp:ListItem>03</asp:ListItem>
                                                <asp:ListItem>04</asp:ListItem>
                                                <asp:ListItem>05</asp:ListItem>
                                                <asp:ListItem>06</asp:ListItem>
                                                <asp:ListItem>07</asp:ListItem>
                                                <asp:ListItem>08</asp:ListItem>
                                                <asp:ListItem>09</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList9" runat="server" CssClass="txtboxcolor">
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                <asp:ListItem>23</asp:ListItem>
                                                <asp:ListItem>24</asp:ListItem>
                                                <asp:ListItem>25</asp:ListItem>
                                                <asp:ListItem>26</asp:ListItem>
                                                <asp:ListItem>27</asp:ListItem>
                                                <asp:ListItem>28</asp:ListItem>
                                                <asp:ListItem>29</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="auto-style6">
                                            <asp:Label ID="Label16" runat="server" Text="Enter Name on Card" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="txtboxcolor"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tblcontrow">
                                        <td class="auto-style6">
                                            <asp:Label ID="Label15" runat="server" Text="Enter Amount" class="txtcolor"></asp:Label>
                                        </td>
                                        <td class="tblcontrow">
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="txtboxcolor"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr class="tblcontrow">
                                        <td colspan="2" align="center" class="tblcontrow">
                                            <asp:Button ID="Button5" runat="server" Text="Make Payment" CssClass="btn" ValidationGroup="credit" OnClick="Button5_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td style="border-left: solid 1px dodgerblue;" class="auto-style4">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/billpay.png" Width="310" Height="550" />
                        </td>
                    </tr>
                    <tr style="border: none">
                        <td colspan="5"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
    <script type="text/javascript">
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>
</body>
</html>
