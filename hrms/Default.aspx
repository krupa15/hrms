<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="hrms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<meta name="DESCRIPTION" content="(n)Code Solutions Career" /><meta name="KEYWORDS" content="(n)Code Solutions Career" /><meta name="COPYRIGHT" content="(n)Code Solutions 2013" /><meta name="AUTHOR" content="Gunjan Prajapati" />
    <link href="~/Content/themes/base/jquery-ui.min.css" rel="stylesheet" />
    <style>
      .redtext {
            color: red;
            font-weight: bold;
      }
      .centerAlign {
          align-content: center;
      }
      .defaultColor {
          background-color: white;
      }
      .errorColor {
          background-color: #ffb296;
      }
  </style>
    <script type="text/javascript">
        function WebForm_OnSubmit() {
            if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                for (var i in Page_Validators) {
                    try {
                        var control = document.getElementById(Page_Validators[i].controltovalidate);
                        if (!Page_Validators[i].isvalid) {
                            control.className = "errorColor";
                        } else {
                            control.className = "defaultColor";
                        }
                    } catch (e) { }
                }
                return false;
            }
            return true;
        }
</script>
    </head>
    <center>
        <div id="ctl00_ContentPlaceHolder1_updpnl">

                <div style="left: 0px; top: 38%; position: fixed;">
                </div>

                <table cellpadding="1" cellspacing="2" class="table" width="98%">
                    <tr>
                        <td colspan="4">
                            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                <tr class="tablehead">
                                    <td align="center" class="tablehead2" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3">
                                        <table>
                                            <tr>
                                                <td align="left" class="redtext">
                                                    <span id="ctl00_ContentPlaceHolder1_lblMandatoryFields" title="( Note : Fields marked as (*) are mandatory. )" class="NoteTags">
                                                    <br />
                                                    <br />
                                                    ( <u>  Note </u> : Fields marked as (*) are mandatory. )</span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr class="tablehead">
                                    <td align="center" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="Basic Personal Information Section"><u>(1) Personal Information
                                            Details</u> </strong>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <table cellpadding="2" cellspacing="2" width="90%" border="1">
                                <tr class="tablehead">
                                    <td valign="middle" align="center" style="height: 23px">
                                        <span class="redtext">* </span>First Name
                                    </td>
                                    <td valign="middle" align="center" style="height: 23px">
                                        <span class="redtext">* </span>Middle Name
                                    </td>
                                    <td valign="middle" align="center" style="height: 23px">
                                        <span class="redtext">* </span>Last Name
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style1" align="center">
                                        &nbsp;
                                        <asp:TextBox ID="fname" runat="server" pattern="[A-Za-z]{2,15}" Width="196px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="fname" ID="RequiredFieldValidator1" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                        <%-- <asp:RegularExpressionValidator ControlToValidate="fname" ID="RegularExpressionValidator1" runat="server" ErrorMessage="" ValidationExpression="[a-zA-Z]{2,15}"></asp:RegularExpressionValidator> --%>
                                    </td>
                                    <td class="auto-style1" align="center">
                                        &nbsp;
                                        <asp:TextBox ID="mname" runat="server" pattern="[A-Za-z]{2,15}" Width="174px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="mname" ID="RequiredFieldValidator2" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                        <%-- <asp:RegularExpressionValidator ControlToValidate="mname" ID="RegularExpressionValidator2" runat="server" ErrorMessage="" ValidationExpression="[a-zA-Z]{2,15}"></asp:RegularExpressionValidator> --%>
                                    </td>
                                    <td class="auto-style1" align="center">
                                        <asp:TextBox ID="lname" runat="server" pattern="[A-Za-z]{2,15}" Width="163px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="lname" ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ></asp:RequiredFieldValidator>
                                        <%-- <asp:RegularExpressionValidator ControlToValidate="lname" ID="RegularExpressionValidator3" runat="server" ErrorMessage="" ValidationExpression="[a-zA-Z]{2,15}"></asp:RegularExpressionValidator> --%>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <table cellpadding="2" cellspacing="2" width="90%" border="1">
                                <tr class="tablehead">
                                    <td valign="middle" align="center" class="auto-style2">
                                        <span class="redtext">* </span>Village/town
                                    </td>
                                    <td valign="middle" align="center" class="auto-style2">
                                        <span class="redtext">* </span>Taluka
                                    </td>
                                    <td valign="middle" align="center" class="auto-style2">
                                        <span class="redtext">* </span>Dist.
                                    </td>
                                     <td valign="middle" align="center" class="auto-style2">
                                        <span class="redtext">* </span>state
                                    </td>
                                </tr>
                                <tr>
                                    <strong>(2) Place of Birth : </strong>
                                    <td class="textinnernew" align="center">
                                        &nbsp;<asp:TextBox ID="village" runat="server" pattern="[A-Za-z]{2,15}" Width="161px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="village" ID="RequiredFieldValidator4" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="textinnernew" align="center">
                                        &nbsp;<asp:TextBox ID="taluka" runat="server" pattern="[A-Za-z]{2,15}" Width="150px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="taluka" ID="RequiredFieldValidator5" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="textinnernew" align="center">
                                        <asp:TextBox ID="dist" runat="server" pattern="[A-Za-z]{2,15}" Width="164px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="dist" ID="RequiredFieldValidator6" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="textinnernew" align="center">
                                        &nbsp;<asp:TextBox ID="state" runat="server" pattern="[A-Za-z]{2,15}" Width="144px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ControlToValidate="state" ID="RequiredFieldValidator7" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(3) Date of Birth : </strong>
                                </td>
                                <td align="left" colspan="3">&nbsp;
                                    <input name="ctl00$ContentPlaceHolder1$txtDOB" type="text" maxlength="10" id="ctl00_ContentPlaceHolder1_txtDOB" Name=BD title="Date of Birth ( Note :- It should be more than 18 Yrs." class="textajax" autocomplete="off" />
                                    <input type="image" name="" id="" src="../App_Themes/GNFC/images/button-calendar.gif" align="bottom" onclick="javascript: WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(& quot; ctl00$ContentPlaceHolder1$imgPopup & quot;, & quot;& quot;, true, & quot;& quot;, & quot;& quot;, false, false))" style="border-width:0px;" />
                            
                                    <span class="redtext">(dd/mm/yyyy)</span>
                           
                                </td>
                             </tr>
                            <br />
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(4) Religion : </strong>
                                </td>
                                <td align="left">&nbsp;
                                    <asp:TextBox ID="religion" runat="server" pattern="[A-Za-z]{2,15}" style="margin-left: 0" Width="175px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="religion" ID="RequiredFieldValidator8" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                                <td align="right">
                                    <strong><span class="redtext">* </span>(5) Nationality : </strong>
                                </td>
                                <td align="left" style="width: 256px">&nbsp;&nbsp;
                                    <asp:TextBox ID="nationality" runat="server" pattern="[A-Za-z]{2,15}" Width="161px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="nationality" ID="RequiredFieldValidator9" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(6) Domiciated in Gujarat : </strong>
                                </td>
                                <td align="left" colspan="3">&nbsp;
                                    <input name="ctl00$ContentPlaceHolder1$txtDOB" type="text" maxlength="10" id="ctl00_ContentPlaceHolder1_txtDOB" title="Domiciated in Gujarat ( Note :- It should be more than 18 Yrs." class="textajax" autocomplete="off" />&nbsp;&nbsp;
                                    <input type="image" name="ctl00$ContentPlaceHolder1$imgPopup" id="ctl00_ContentPlaceHolder1_imgPopup" src="../App_Themes/GNFC/images/button-calendar.gif" align="bottom" onclick="javascript: WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(& quot; ctl00$ContentPlaceHolder1$imgPopup & quot;, & quot;& quot;, true, & quot;& quot;, & quot;& quot;, false, false))" style="border-width:0px;" />
                                    <span class="redtext">(mm/yyyy)</span>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(7) Address : (A)Present </strong>
                                </td>
                                <td align="left" colspan="3">&nbsp;
                                    <asp:TextBox ID="presentAddress" runat="server" minlength="5" maxlenght="80" Width="800px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="presentAddress" ID="RequiredFieldValidator25" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                &nbsp;</td>

                            </tr>
                            <tr> 
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>Mobile : </strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:TextBox ID="presentNo" runat="server" maxlength="10" pattern="\d{10}" Width="188px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="presentNo" ID="RequiredFieldValidator10" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                                <td align="right">
                                    <strong><span class="redtext">* </span>Pin-Code : </strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:TextBox ID="presentPin" maxlength="6" pattern="\d{6}" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="presentPin" ID="RequiredFieldValidator11" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(8) Permanent Address : </strong>
                                </td>
                                <td align="left" colspan="3">&nbsp;&nbsp;
                                    <asp:TextBox ID="permenantAddress" runat="server" minlength="5" maxlenght="80" Width="800px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="permenantAddress" ID="RequiredFieldValidator26" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr> 
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>Mobile : </strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:TextBox ID="permenantNo" maxlength="10" pattern="\d{10}" runat="server" Width="197px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="permenantNo" ID="RequiredFieldValidator12" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                                <td align="right">
                                    <strong><span class="redtext">* </span>Pin-Code : </strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:TextBox ID="permenantPin" maxlength="6" pattern="\d{6}" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="permenantPin" ID="RequiredFieldValidator13" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(9) Permanent Mobile Number : </strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:TextBox ID="permenantMoNo" runat="server" maxlength="10" pattern="\d{10}" Width="201px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="permenantMoNo" ID="RequiredFieldValidator14" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                                <td align="right">
                                    <strong><span class="redtext">* </span>(10) Email-ID : </strong>
                                </td>
                                <td align="left" style="width: 256px">&nbsp;&nbsp;
                                    <asp:TextBox ID="email" runat="server" pattern="([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})" Width="215px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="email" ID="RequiredFieldValidator15" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                 <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(11) Emergency Contact number : </strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:TextBox ID="emergencyNO" maxlength="10" pattern="\d{10}" runat="server" Width="203px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="emergencyNO" ID="RequiredFieldValidator16" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(a) Scheduled Caste/Scheduled Tribe</strong>
                                </td>
                                <td align="left">&nbsp;&nbsp;
                                    <asp:DropDownList ID="subA" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator17" runat="server" ControlToValidate="subA"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                </td>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(d) Ex-Serviceman </strong>
                                </td>
                                <td align="left">&nbsp;
                                    <asp:DropDownList ID="subD" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator18" runat="server" ControlToValidate="subD"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(b) Nomadic/Denotified Tribe</strong>
                                </td>
                                <td align="left">&nbsp;
                                   <asp:DropDownList ID="subB" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator19" runat="server" ControlToValidate="subB"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                </td>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(e) Phiysically Handicapped</strong>
                                </td>
                                <td align="left">&nbsp;
                                    <asp:DropDownList ID="subE" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator20" runat="server" ControlToValidate="subE"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(C) Socially & Educationally Backward Class</strong>
                                </td>
                                <td align="left">&nbsp;
                                   <asp:DropDownList ID="subC" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator21" runat="server" ControlToValidate="subC"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                </td>
                                <td align="right" style="width: 172px">
                                    <strong><span class="redtext">* </span>(f) Land Loser Family</strong>
                                </td>
                                <td align="left">&nbsp;
                                    <asp:DropDownList ID="subF" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator22" runat="server" ControlToValidate="subF"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <br />
                                    <br />
                                    <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                        <tr class="tablehead">
                                            <td align="left" class="tablehead" colspan="3">
                                                <strong class="DETAILSLINK" title="Acadamic Qualification :(State details from ssc onwards and enclose certificates/marksheets)"><u>Acadamic Qualification :(State details from ssc onwards and enclose certificates/marksheets)</u> </strong>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                            <td colspan="4" align="center">
                                <table cellpadding="1" cellspacing="1" width="99%" class="Records" border="1">
                                    <tr class="NewTableHead">
                                        <td>
                                            <strong>School/College</strong>
                                        </td>
                                        <td>
                                            <strong>Degree</strong>
                                        </td>
                                        <td>
                                            <strong>Passing Year</strong>
                                        </td>
                                        <td>
                                            <strong>Educational Institute</strong>
                                        </td>
                                        <td>
                                            <strong>Board/University</strong>
                                        </td>
                                        <td>
                                            <strong>% / CGPA</strong>
                                        </td>
                                    </tr>
                                <tr>
                                    <td align="center">
                                        <span class="redtext">* </span>Graduation</td>
                                    <td>
                                    <asp:DropDownList ID="graduation" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>B.E (EC)</asp:ListItem>
                                        <asp:ListItem>B.E/B.TECH (CE)</asp:ListItem>
                                        <asp:ListItem>B.E/B.TECH (CS)</asp:ListItem>
                                        <asp:ListItem>B.E/B.TECH (ELECTRICAL)</asp:ListItem>
                                        <asp:ListItem>B.E/B.TECH (ICT)</asp:ListItem>
                                        <asp:ListItem>B.E/B.TECH (IT)</asp:ListItem>
                                        <asp:ListItem>B.E/B.TECH (OTHERS)</asp:ListItem>
                                        <asp:ListItem>B.Tech(EC)</asp:ListItem>
                                        <asp:ListItem>BA</asp:ListItem>
                                        <asp:ListItem>BBA</asp:ListItem>
                                        <asp:ListItem>BCA</asp:ListItem>
                                        <asp:ListItem>BCom</asp:ListItem>
                                        <asp:ListItem>BSc</asp:ListItem>
                                        <asp:ListItem>BSc (IT)</asp:ListItem>
                                        <asp:ListItem>BSc (CS)</asp:ListItem>
                                        <asp:ListItem>C.A.</asp:ListItem>
                                        <asp:ListItem>DIPLOMA</asp:ListItem>
                                        <asp:ListItem>ICWA</asp:ListItem>
                                        <asp:ListItem>ITI</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                        <asp:ListItem>PGDM</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator23" runat="server" ControlToValidate="graduation"
                                    ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="passYear1" runat="server">
                                            <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2014</asp:ListItem>
                                            <asp:ListItem>2013</asp:ListItem>
                                            <asp:ListItem>2012</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2006</asp:ListItem>
                                            <asp:ListItem>2005</asp:ListItem>
                                            <asp:ListItem>2004</asp:ListItem>
                                            <asp:ListItem>2003</asp:ListItem>
                                            <asp:ListItem>2002</asp:ListItem>
                                            <asp:ListItem>2001</asp:ListItem>
                                            <asp:ListItem>2000</asp:ListItem>
                                            <asp:ListItem>1999</asp:ListItem>
                                            <asp:ListItem>1998</asp:ListItem>
                                            <asp:ListItem>1997</asp:ListItem>
                                            <asp:ListItem>1996</asp:ListItem>
                                            <asp:ListItem>1995</asp:ListItem>
                                            <asp:ListItem>1994</asp:ListItem>
                                            <asp:ListItem>1993</asp:ListItem>
                                            <asp:ListItem>1992</asp:ListItem>
                                            <asp:ListItem>1991</asp:ListItem>
                                            <asp:ListItem>1990</asp:ListItem>
                                            <asp:ListItem>1989</asp:ListItem>
                                            <asp:ListItem>1988</asp:ListItem>
                                            <asp:ListItem>1987</asp:ListItem>
                                            <asp:ListItem>1986</asp:ListItem>
                                            <asp:ListItem>1985</asp:ListItem>
                                            <asp:ListItem>1984</asp:ListItem>
                                            <asp:ListItem>1983</asp:ListItem>
                                            <asp:ListItem>1982</asp:ListItem>
                                            <asp:ListItem>1981</asp:ListItem>
                                        </asp:DropDownList>
                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator24" runat="server" ControlToValidate="passYear1"
                                ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                       
                                        
                                    </td>
                                    <td>
                                        &nbsp;<asp:TextBox ID="edu1" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="edu1" ID="RequiredFieldValidator27" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="uni1" pattern="[A-Za-z]{2,7}" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="uni1" ID="RequiredFieldValidator28" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="center">
                                        <asp:TextBox ID="cgpa1" MaxLength="5" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="cgpa1" ID="RequiredFieldValidator29" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        Post-Graduation</td>
                                    <td>
                                        <asp:DropDownList ID="postGrad" runat="server">
                                            <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(CE)</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(CS)</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(EC)</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(ELECTRICAL)</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(ICT)</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(IT)</asp:ListItem>
                                            <asp:ListItem>M.E/M.TECH(OTHERS)</asp:ListItem>
                                            <asp:ListItem>MA</asp:ListItem>
                                            <asp:ListItem>MBA</asp:ListItem>
                                            <asp:ListItem>MCA</asp:ListItem>
                                            <asp:ListItem>MCom</asp:ListItem>
                                            <asp:ListItem>MSc</asp:ListItem>
                                            <asp:ListItem>MSc (CS)</asp:ListItem>
                                            <asp:ListItem>MSc (IT)</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                        </asp:DropDownList>
                                        <%-- <asp:RequiredFieldValidator  ID="RequiredFieldValidator26" runat="server" ControlToValidate="postGrad"
                                        ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td>
                                       <asp:DropDownList ID="passYear2" runat="server">
                                            <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2014</asp:ListItem>
                                            <asp:ListItem>2013</asp:ListItem>
                                            <asp:ListItem>2012</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2006</asp:ListItem>
                                            <asp:ListItem>2005</asp:ListItem>
                                            <asp:ListItem>2004</asp:ListItem>
                                            <asp:ListItem>2003</asp:ListItem>
                                            <asp:ListItem>2002</asp:ListItem>
                                            <asp:ListItem>2001</asp:ListItem>
                                            <asp:ListItem>2000</asp:ListItem>
                                            <asp:ListItem>1999</asp:ListItem>
                                            <asp:ListItem>1998</asp:ListItem>
                                            <asp:ListItem>1997</asp:ListItem>
                                            <asp:ListItem>1996</asp:ListItem>
                                            <asp:ListItem>1995</asp:ListItem>
                                            <asp:ListItem>1994</asp:ListItem>
                                            <asp:ListItem>1993</asp:ListItem>
                                            <asp:ListItem>1992</asp:ListItem>
                                            <asp:ListItem>1991</asp:ListItem>
                                            <asp:ListItem>1990</asp:ListItem>
                                            <asp:ListItem>1989</asp:ListItem>
                                            <asp:ListItem>1988</asp:ListItem>
                                            <asp:ListItem>1987</asp:ListItem>
                                            <asp:ListItem>1986</asp:ListItem>
                                            <asp:ListItem>1985</asp:ListItem>
                                            <asp:ListItem>1984</asp:ListItem>
                                            <asp:ListItem>1983</asp:ListItem>
                                            <asp:ListItem>1982</asp:ListItem>
                                            <asp:ListItem>1981</asp:ListItem>
                                        </asp:DropDownList>
                                <%--<asp:RequiredFieldValidator  ID="RequiredFieldValidator25" runat="server" ControlToValidate="passYear2"
                                ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator> --%>
                                        
                                    </td>
                                    <td>
                                        <asp:TextBox ID="edu2" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ControlToValidate="edu2" ID="RequiredFieldValidator30" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="uni2" pattern="[A-Za-z]{2,7}" runat="server"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ControlToValidate="uni2" ID="RequiredFieldValidator31" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td align="center">
                                        &nbsp;<asp:TextBox ID="cgpa2" MaxLength="5" runat="server"></asp:TextBox>
                                       <%-- <asp:RequiredFieldValidator ControlToValidate="cgpa2" ID="RequiredFieldValidator32" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <table width="99%">
                                <tr>
                                    <td colspan="8" align="left">
                                        <span id="ctl00_ContentPlaceHolder1_lblNoteTagTotalExp1" title="(Note : Enter Latest job first &amp; Information about latest job is mandatory. )" class="NoteTags">( <u>Note :</u> Enter Latest job first & Information about latest job is mandatory. )</span>
                                    </td>
                                </tr>
                    </table>
                    <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
                        <tr>
                            <td colspan="9" align="center">
                                <span id="ctl00_ContentPlaceHolder1_lblErrorgDet" class="redtext"></span>
                            </td>
                        </tr>
                        <tr class="NewTableHead">
                            <td>
                                <strong>Name of the Organization</strong>
                            </td>
                            <td align="center" colspan="2">
                                 <strong>Joined In</strong>
                            </td>
                            <td align="center" colspan="2">
                                 <strong>Left In</strong>
                            </td>
                            <td>
                                 <strong>Nature of Work / course</strong>
                            </td>
                            <td>
                                 <strong>Stipenend/Honorrium (Rs.)</strong>
                            </td>
                            <td>
                                <strong>Grading/ Rank in Exam</strong>
                             </td>

                         <tr>
                            <td>
                                &nbsp;<asp:TextBox ID="organization" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:DropDownList ID="joinMo1" runat="server">
                                    <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                    <asp:ListItem>Jan</asp:ListItem>
                                    <asp:ListItem>Feb</asp:ListItem>
                                    <asp:ListItem>Mar</asp:ListItem>
                                    <asp:ListItem>Apr</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>Jun</asp:ListItem>
                                    <asp:ListItem>Jul</asp:ListItem>
                                    <asp:ListItem>Aug</asp:ListItem>
                                    <asp:ListItem>Sep</asp:ListItem>
                                    <asp:ListItem>Oct</asp:ListItem>
                                    <asp:ListItem>Nov</asp:ListItem>
                                    <asp:ListItem>Dec</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="joinYr1" runat="server">
                                    <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>2009</asp:ListItem>
                                    <asp:ListItem>2008</asp:ListItem>
                                    <asp:ListItem>2007</asp:ListItem>
                                    <asp:ListItem>2006</asp:ListItem>
                                    <asp:ListItem>2005</asp:ListItem>
                                    <asp:ListItem>2004</asp:ListItem>
                                    <asp:ListItem>2003</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                    <asp:ListItem>1986</asp:ListItem>
                                    <asp:ListItem>1985</asp:ListItem>
                                    <asp:ListItem>1984</asp:ListItem>
                                    <asp:ListItem>1983</asp:ListItem>
                                    <asp:ListItem>1982</asp:ListItem>
                                    <asp:ListItem>1981</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="leftMo1" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                                <asp:ListItem>Feb</asp:ListItem>
                                <asp:ListItem>Mar</asp:ListItem>
                                <asp:ListItem>Apr</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>Jun</asp:ListItem>
                                <asp:ListItem>Jul</asp:ListItem>
                                <asp:ListItem>Aug</asp:ListItem>
                                <asp:ListItem>Sep</asp:ListItem>
                                <asp:ListItem>Oct</asp:ListItem>
                                <asp:ListItem>Nov</asp:ListItem>
                                <asp:ListItem>Dec</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2004</asp:ListItem>
                                        <asp:ListItem>2003</asp:ListItem>
                                        <asp:ListItem>2002</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1990</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox pattern="[A-Za-z]{2,15}" ID="work" runat="server"></asp:TextBox>  
                                </td>
                                <td>
                                   &nbsp;<asp:TextBox maxlength="6" pattern="\d" ID="stipend" runat="server"></asp:TextBox>     
                                </td>
                                <td>
                                    &nbsp;<asp:TextBox maxlength="2" ID="rank" runat="server"></asp:TextBox>   
                                </td>
                            </tr>
                        </table>
                <br />
                <br />
</div>

        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="Previous work Exprienece(Start  from the latest and enclose copy of each service certificate)"><u>Previous work Exprienece(Start  from the latest and enclose copy of each service certificate)</u> </strong>
                                    </td>
                                </tr>
 <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         <td rowspan="2">Name of organization</td>
         <td rowspan="2">Address</td>
         <td rowspan="2">Name and designation of immidiate superior</td>
         <td colspan="2">Period</td>
         <td colspan="2">Position</td>
         <td colspan="2">Gross Salary</td>
         <td rowspan="2">Nature of work</td>
         <td rowspan="2">Reason for leaving</td>

     </tr>
     <tr>
         <td>From</td>
         <td>To</td>
         <td>Initial</td>
         <td>Final</td>
         <td>Initial</td>
         <td>Final</td>
     </tr>

     <td>
                                    <asp:TextBox ID="TextBox1" pattern="[A-Za-z]{2,15}" runat="server" Width="85px"></asp:TextBox>
                                    </td>
<td>
                                      <asp:TextBox ID="TextBox2" pattern="[A-Za-z]{2,15}" runat="server" Width="84px"></asp:TextBox>
                                        <span id="ctl00_ContentPlaceHolder1_rfvJoinedYear" class="redtext" style="color:Red;visibility:hidden;">*</span>
                                    </td>
<td>
                                        <asp:TextBox ID="TextBox3" pattern="[A-Za-z]{2,15}" runat="server" Width="79px"></asp:TextBox>
                                    </td>
<td>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Jan</asp:ListItem>
                                        <asp:ListItem>Feb</asp:ListItem>
                                        <asp:ListItem>Mar</asp:ListItem>
                                        <asp:ListItem>Apr</asp:ListItem>
                                        <asp:ListItem>May</asp:ListItem>
                                        <asp:ListItem>Jun</asp:ListItem>
                                        <asp:ListItem>Jul</asp:ListItem>
                                        <asp:ListItem>Aug</asp:ListItem>
                                        <asp:ListItem>Sep</asp:ListItem>
                                        <asp:ListItem>Oct</asp:ListItem>
                                        <asp:ListItem>Nov</asp:ListItem>
                                        <asp:ListItem>Dec</asp:ListItem>
                                    </asp:DropDownList>
                                    </td>
<td>
                                      <asp:DropDownList ID="DropDownList5" runat="server">
                                        <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                        <asp:ListItem>Jan</asp:ListItem>
                                        <asp:ListItem>Feb</asp:ListItem>
                                        <asp:ListItem>Mar</asp:ListItem>
                                        <asp:ListItem>Apr</asp:ListItem>
                                        <asp:ListItem>May</asp:ListItem>
                                        <asp:ListItem>Jun</asp:ListItem>
                                        <asp:ListItem>Jul</asp:ListItem>
                                        <asp:ListItem>Aug</asp:ListItem>
                                        <asp:ListItem>Sep</asp:ListItem>
                                        <asp:ListItem>Oct</asp:ListItem>
                                        <asp:ListItem>Nov</asp:ListItem>
                                        <asp:ListItem>Dec</asp:ListItem>
                                    </asp:DropDownList>
                                        <span id="ctl00_ContentPlaceHolder1_rfvJoinedYear" class="redtext" style="color:Red;visibility:hidden;">*</span>
                                    </td>
<td>
                                        <asp:TextBox ID="TextBox4" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
     </td>
<td>
                                        <asp:TextBox ID="TextBox5" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
            <td>
                                        <asp:TextBox ID="TextBox6" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox7" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox8" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox9" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
     
     </table>
        <br />
        <br />
        <br />
        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="Details on Institutional Membership (If any)
                                </tr>"><u>(12) Details on Institutional Membership (If any)   </tr><br />


     <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         <td rowspan="2">Institution/Assocition</td>
         <td rowspan="2">Category of memebership</td>
         <td colspan="2">Actual Participation</td>
          <td rowspan="2">Any Other Information</td>

     </tr>
     <tr>
         <td>Capacity</td>
         <td>Duration</td>
         
     </tr>
         <td>
                                        <asp:TextBox ID="TextBox10" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox11" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox12" pattern="[A-Za-z0-9]" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox13" pattern="[A-Za-z0-9]" runat="server"></asp:TextBox>
                                       
                                    </td>
         <td>
                                        <asp:TextBox ID="TextBox14" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
        </table>
        <br />
       </center>

             
 </u></strong>


                    <table>
                         <tr>
                        <td align="left" style="width: 300px">
                            <strong><span class="redtext">
                            <br />
                            <br />
                            * </span>(13) Details on Published work: </strong>
                        </td>                      
                        </tr>
                       
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(a) Articles
                        </td>
                            <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="articles" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="articles" ID="RequiredFieldValidator33" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(b) books</strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="books" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="books" ID="RequiredFieldValidator32" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                            </table>
                             <table>
                        <td align="left" style="width: 300px">
                            <strong><span class="redtext">
                            <br />
                            <br />
                            * </span>(14)Family Background </strong>
                        </td>                      
                        </tr>
                        <tr>
                        <td align="left" style="width: 172px">
                            <strong><span class="redtext">* </span>(i) Marital Status<strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <asp:DropDownList ID="maritalStatus" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>widow</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator30" runat="server" ControlToValidate="maritalStatus"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                        </td></tr>



                           
                       
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(ii) No of children(with age)</strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="child" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="child" ID="RequiredFieldValidator31" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                         <br />
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(iii) No of Other dependents (With Relationship) </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="otherDepend" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="otherDepend" ID="RequiredFieldValidator34" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                       
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(iv) Father"s / Husband's Name </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="fSname" pattern="[A-Za-z]{2,15}" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="fSname" ID="RequiredFieldValidator35" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                       
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(v) Occupation of Father/husband </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="fSoccupation" pattern="[A-Za-z]{2,15}" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="fSoccupation" ID="RequiredFieldValidator36" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                       
                                 </table>
    <table>
                         

                 
                       <tr>
                        <td align="left" style="width: 300px">
                            <strong><span class="redtext">
                            <br />
                            <br />
                            * </span> (15) HEALTH DATA</strong>
                        </td>                      
                        </tr>
                     
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(i)Height(cms)</strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="height" runat="server" maxlength="3" pattern="\d{3}" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="height" ID="RequiredFieldValidator37" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                   
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(ii) Weight (kgs) </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="weight" runat="server" maxlength="3" pattern="\d{3}" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="weight" ID="RequiredFieldValidator38" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                     
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(iii)Blood Group </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="bloodGrp" runat="server" pattern="" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="bloodGrp" ID="RequiredFieldValidator39" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                 
                         <tr>
                        <td align="left" style="width: 300px">
                            <strong><span class="redtext">* </span>(iv) Vision(if wearing Glass) </strong>
                        </td>                      
                        </tr>
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(a) Right </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="visionA" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="visionA" ID="RequiredFieldValidator40" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td><br />
                        <tr> <td align="left" style="width: 172px">
                        <strong><span class="redtext">* </span>(b) Left</strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="visionB" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="visionB" ID="RequiredFieldValidator41" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                     
                        <tr> <td align="left" style="width: 172px">
                        <strong>(v) Physical disability(if any) </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox26" runat="server" Width="197px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="permenantNo" ID="RequiredFieldValidator42" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td></tr>
                       
                         



                        </table>


    <table>
    <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="Detatls on illness you may have suffered (during last 5 years) requiring hospitalistaion/prolonged
treatment for more than 3 weeks
                                </tr>"><u>
                                        <br />
                                        <br />
                                        Details on illness you may have suffered (during last 5 years) requiring hospitalistaion/prolonged
treatment for more than 3 weeks   </tr><br />
</table>

     <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td >Narure of illness</td>
         <td >Period of hospitalisation / treatment</td>
         <td >Name & Address of Hosphtal/ Doctor</td>
         

     </tr>
     
         <td>
                                        <asp:TextBox ID="TextBox33" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox34" pattern="[A-Za-z0-9]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox35" pattern="[A-Za-z]{3,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
     
        </table>

    <table> <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="Hobbies
                                </tr>"><u>
                                        <br />
                                        <br />
                                        (15) Hobbies  </tr><br />
        </table>
    <table>
        <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         <td>
             
         </td>
         <td >Name of sports/
Game/Fine Arts:</td>
         <td >Details of
Participation</td>
         <td >Distinction achieved</td>
          <td >whether still intrested</td>

     </tr>
             <td>
                                        sport</td>
      <td>
                                        <asp:TextBox ID="TextBox37" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox38" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
            <td>
                                        <asp:TextBox ID="TextBox39" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
       
             <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator49" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
       
            <tr>
                <td>
                                        Fine arts</td>
      <td>
                                        <asp:TextBox ID="TextBox36" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox42" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
            <td>
                                        <asp:TextBox ID="TextBox43" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
     
            <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList8" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator50" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
               
            </tr>

            <tr>
                <td>
                                        Others</td>
      <td>
                                        <asp:TextBox ID="TextBox46" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox47" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
            <td>
                                        <asp:TextBox ID="TextBox48" pattern="[A-Za-z]{2,15}" runat="server"></asp:TextBox>
                                       
                                    </td>
           
            <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList9" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator51" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
            </tr>

    </table>





        <table> <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="Hobbies
                                </tr>"><u>
                                        <br />
                                        <br />
                                        (17) LANGUAGE KNOWN (Classify : Very Well, Good, Fair, Little)  </tr><br />
        </table>
    <table>
        <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         <td>
             
         </td>
         <td >Language</td>
         <td >Speak</td>
         <td >Read</td>
          <td >Write</td>
         <td >Exam pass~</td>

     </tr>
             <td>
                                        Mother tongue</td>
      <td align="left">&nbsp;
                            <asp:DropDownList ID="mLanguage" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator46" runat="server" ControlToValidate="mLanguage"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
       <td align="left">&nbsp;
                            <asp:DropDownList ID="mSpeak" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator47" runat="server" ControlToValidate="mSpeak"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
            <td align="left">&nbsp;
                            <asp:DropDownList ID="mRead" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator48" runat="server" ControlToValidate="mRead"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
           <td align="left">&nbsp;
                            <asp:DropDownList ID="mWrite" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator52" runat="server" ControlToValidate="mWrite"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
             <td align="left">&nbsp;
                            <asp:DropDownList ID="mExam" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator43" runat="server" ControlToValidate="mExam"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
           
            <tr>
                <td>
                                       Others</td>
       <td align="left">&nbsp;
                            <asp:DropDownList ID="oLanguage" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator53" runat="server" ControlToValidate="oLanguage"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
       <td align="left">&nbsp;
                            <asp:DropDownList ID="oSpeak" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator54" runat="server" ControlToValidate="oSpeak"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
            <td align="left">&nbsp;
                            <asp:DropDownList ID="oRead" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator55" runat="server" ControlToValidate="oRead"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
 <td align="left">&nbsp;
                            <asp:DropDownList ID="oWrite" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>very well</asp:ListItem>
                                <asp:ListItem>good</asp:ListItem>
                                <asp:ListItem>Fai</asp:ListItem>
                                <asp:ListItem>Little</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator56" runat="server" ControlToValidate="oWrite"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
            <td align="left">&nbsp;
                            <asp:DropDownList ID="oPass" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator44" runat="server" ControlToValidate="oPass"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
               
            </tr>

           

    </table>

     <table>
    <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>
                                        <br />
                                        <br />
                                        Are you havlng any service agreementlbond with your
present employer ?(yes or no) </tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="agreeCurrent" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator45" runat="server" ControlToValidate="agreeCurrent"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
        <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="10%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td >If yes ,expiry date</td>
       
        </tr><td>
             <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>

            </td>
        </table>


        <table>
    <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>
                                        <br />
                                        <br />
                                        (19) Have you applied in GNFC earlier? </tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="applied" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator57" runat="server" ControlToValidate="applied"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
        <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="10%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td >If yes ,Position</td>
       
        </tr><td>
             <asp:TextBox ID="TextBox28" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
            </td>
            <td >Interview Date</td>
       
        <td>
             <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            </td>
       </tr>
        </table>
        <table>
         <tr>
                        <td align="right" style="width: 172px">
                            <strong><span class="redtext">
                            <br />
                            <br />
                            * </span>(20)Can we refer to your present employer ?</strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <asp:DropDownList ID="refer" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator58" runat="server" ControlToValidate="refer"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                        </td>


             </table>
    <br />
    <br />
    <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(21)Are there any of your relative working in the company or In Narmada Chematur Petrochemicals Ltd. (NCPL) ?
If yes, please give detail</tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList24" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator60" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
        <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td >Name</td>
         <td >Whether in GNFC or NCPL</td>
         <td >Designation</td>
         <td >Relationship</td>
         

     </tr>
     
         <td>
                                    <asp:TextBox ID="TextBox30" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                      <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList23" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Gnfc</asp:ListItem>
                                <asp:ListItem>Ncpl</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator59" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
      <td>
                                        <asp:TextBox ID="TextBox32" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
         <td>
                                        <asp:TextBox ID="TextBox40" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
     
        </table>

        <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(22)Are you related to any of our present or past Directors ?
If yes please grve details</tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList25" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator61" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
         <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td >Name of Director</td>
         <td >Relationship</td>
         
         

     </tr>
     
       
      <td>
                                        <asp:TextBox ID="TextBox41" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
         <td>
                                        <asp:TextBox ID="TextBox44" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
     
        </table>
         <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(23)Have you any political affiliation ? If yes, please
give details in brief</tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList26" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator62" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
         <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td > <asp:TextBox ID="TextBox49" pattern="[A-Za-z]{2,100}" runat="server"></asp:TextBox></td>
   
         
         


     
        </table>


        <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(24)Has any disciplinary action been taken or enquiry conducted against you in any of your pervious employment? if yes , details</tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList27" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator63" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
         <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td > <asp:TextBox ID="TextBox31" pattern="[A-Za-z]{2,100}" runat="server"></asp:TextBox></td>
   
  </table>

   <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(25) Have you ever been prosecuted or convicted by any court for any offence and imprisoned? if yes, details</tr><br />
         <td align="left">&nbsp;
                            <asp:DropDownList ID="DropDownList28" runat="server">
                                <asp:ListItem style="display:none">--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator64" runat="server" ControlToValidate="subE"
                            ErrorMessage="" InitialValue="--Select--"></asp:RequiredFieldValidator>
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
                        </td>
</table>
         <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td > <asp:TextBox ID="TextBox45" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox></td>
   
  </table>
  <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(26) How soon can you join if the post is offered to you? </tr><br />
          <td > <asp:TextBox ID="TextBox51" pattern="[A-Za-z0-9]{2,12}" runat="server"></asp:TextBox></td>
</table>
  <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(27) Present Salary (gross p.m.) RS. </tr><br />
          <td > <asp:TextBox ID="TextBox50" maxlength="6" pattern="\d" runat="server"></asp:TextBox></td>
      <td align="left" class="tablehead" colspan="3">
                                    (please attach seperate sheet with detailed breakup of salary &perks)</tr><br />
</table>
  <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(28) Salary expected (gross p.m.) RS. </tr><br />
          <td > <asp:TextBox ID="TextBox52" maxlength="6" pattern="\d" runat="server"></asp:TextBox></td>
       <td align="left" class="tablehead" colspan="3">
                                    (Inclusive Of all benefits)</tr><br />
</table>
 <table>
    <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title=" References (persons metioned shouls hold responsible position and should not be relative)
                                </tr>"><u>(29) References (persons metioned shouls hold responsible position and should not be relative) </tr><br />
</table>

     <table id="ctl00_ContentPlaceHolder1_tblOrgDetails" width="100%" border="1" cellpadding="1" cellspacing="1">
     
     <tr>
         
         <td >Name</td>
         <td >Address</td>
         <td >Occupation</td>
         <td >Year of acquaintance</td>

         

     </tr>
     
         <td>
                                        <asp:TextBox ID="TextBox53" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox54" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
      <td>
                                        <asp:TextBox ID="TextBox55" pattern="[A-Za-z]{2,30}" runat="server"></asp:TextBox>
                                       
                                    </td>
        <td>
                                        <asp:TextBox ID="TextBox56" pattern="[A-Za-z0-9]{2,12}" runat="server"></asp:TextBox>
                                       
                                    </td>
     
        </table>
        <table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>(30)Any other information which you may like to give </tr><br />
          <td > <asp:TextBox ID="TextBox57" pattern="[A-Za-z0-9\.]{2,100}" runat="server"></asp:TextBox></td>
</table>
 <center><table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u> D E C L A R A T I O N</tr><br />
</table></center>
<table>


        <tr class="tablehead">
                                    <td align="left" class="tablehead" colspan="3">
                                        <strong class="DETAILSLINK" title="
                                </tr>"><u>Should any information stated by me in this application be found incorrect , my emlpoyment with the company is liable for immediate termination without payment of any compensation thereof.  </tr><br />
         
</table>

        <tr>
                        <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>Date : </strong>
                        </td>
                        <td align="left" colspan="3">&nbsp;
                            <asp:TextBox ID="dateApplication" runat="server" Width="620px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="dateApplication" ID="RequiredFieldValidator65" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
&nbsp;</td>

                    </tr>
                    <tr> <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>Place : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <asp:TextBox ID="placeApplication" pattern="[A-Za-z]{2,12}" runat="server" Width="188px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="placeApplication" ID="RequiredFieldValidator66" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                        <td align="right">
                            <strong><span class="redtext">* </span>Signature : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <span id="ctl00_ContentPlaceHolder1_regpin" style="color:Red;visibility:hidden;">*</span>
                           
                            <asp:TextBox ID="signatureApplication" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="signatureApplication" ID="RequiredFieldValidator67" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>

                    </tr><br />
    </u></strong>
</table>

    </table>
    <br />
    <br />
    <center>
        <asp:Button ID="submit" class="btn btn-success" runat="server" Text="Submit" Width="236px" />
    </center>
</asp:Content>
