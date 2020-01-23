<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="hrms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<meta name="DESCRIPTION" content="(n)Code Solutions Career" /><meta name="KEYWORDS" content="(n)Code Solutions Career" /><meta name="COPYRIGHT" content="(n)Code Solutions 2013" /><meta name="AUTHOR" content="Gunjan Prajapati" />
    <link href="~/Content/themes/base/jquery-ui.min.css" rel="stylesheet" />
    <style>
      .redtext {
            color: red;
      }
      .centerAlign {
          align-content: center;
      }
      .form-control {
          background-color: white;
      }
      .form-control-Error {
          background-color: #ffb296;
      }
  </style>
    <script type="text/javascript">
        $(function () {
            $(".date-picker").datepicker({
                dateFormat: 'dd-M-yy'
            });
        });
    </script>
    <script type="text/javascript">
        function WebForm_OnSubmit() {
            if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                for (var i in Page_Validators) {
                    try {
                        var control = document.getElementById(Page_Validators[i].controltovalidate);
                        if (!Page_Validators[i].isvalid) {
                            control.className = "form-control-Error";
                        } else {
                            control.className = "form-control";
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
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3">
                                        <table>
                                            <tr>
                                                <td align="left" class="redtext">
                                                    <span id="ctl00_ContentPlaceHolder1_lblMandatoryFields" title="( Note : Fields marked as (*) are mandatory. )" class="NoteTags">( <u>  Note </u> : Fields marked as (*) are mandatory. )</span>
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
                                        <asp:TextBox ID="fname" runat="server" Width="196px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="fname" ID="RequiredFieldValidator1" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                        <%-- <asp:RegularExpressionValidator ControlToValidate="fname" ID="RegularExpressionValidator1" runat="server" ErrorMessage="" ValidationExpression="[a-zA-Z]{2,15}"></asp:RegularExpressionValidator> --%>
                                    </td>
                                    <td class="auto-style1" align="center">
                                        &nbsp;
                                        <asp:TextBox ID="mname" runat="server" Width="174px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="mname" ID="RequiredFieldValidator2" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                        <%-- <asp:RegularExpressionValidator ControlToValidate="mname" ID="RegularExpressionValidator2" runat="server" ErrorMessage="" ValidationExpression="[a-zA-Z]{2,15}"></asp:RegularExpressionValidator> --%>
                                    </td>
                                    <td class="auto-style1" align="center">
                                        <asp:TextBox ID="lname" runat="server" Width="163px"></asp:TextBox>
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
                                        &nbsp;<asp:TextBox ID="village" runat="server" Width="161px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="village" ID="RequiredFieldValidator4" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="textinnernew" align="center">
                                        &nbsp;<asp:TextBox ID="taluka" runat="server" Width="150px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="taluka" ID="RequiredFieldValidator5" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="textinnernew" align="center">
                                        <asp:TextBox ID="dist" runat="server" Width="164px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator class="redtext" ControlToValidate="dist" ID="RequiredFieldValidator6" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="textinnernew" align="center">
                                        &nbsp;<asp:TextBox ID="state" runat="server" Width="144px"></asp:TextBox>
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
                           
                            <input type="image" name="ctl00$ContentPlaceHolder1$imgPopup" id="ctl00_ContentPlaceHolder1_imgPopup" src="../App_Themes/GNFC/images/button-calendar.gif" align="bottom" onclick="javascript: WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(& quot; ctl00$ContentPlaceHolder1$imgPopup & quot;, & quot;& quot;, true, & quot;& quot;, & quot;& quot;, false, false))" style="border-width:0px;" />
                            <span id="ctl00_ContentPlaceHolder1_refvDOB" style="color:Red;visibility:hidden;">*</span>
                           
                            <span class="redtext">(dd/mm/yyyy)</span>
                           
                        </td>

                       
                                </tr>
                            <br />
                        </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>(4) Religion : </strong>
                        </td>
                            <td align="left">&nbsp;
                                <asp:TextBox ID="religion" runat="server" style="margin-left: 0" Width="175px"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="religion" ID="RequiredFieldValidator8" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                             <td align="right">
                            <strong><span class="redtext">* </span>(5) Nationality : </strong>
                        </td>
                        <td align="left" style="width: 256px">&nbsp;&nbsp;
                            <asp:TextBox ID="nationality" runat="server" Width="161px"></asp:TextBox>
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
                            <span id="ctl00_ContentPlaceHolder1_refvDOB" style="color:Red;visibility:hidden;">*</span>
                           
                            <span class="redtext">(mm/yyyy)</span>
                           
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>(7) Address : (A)Present </strong>
                        </td>
                        <td align="left" colspan="3">&nbsp;
                            <asp:TextBox ID="presentAddress" runat="server" Width="800px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="presentAddress" ID="RequiredFieldValidator25" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
&nbsp;</td>

                    </tr>
                    <tr> <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>Mobile : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <asp:TextBox ID="presentNo" runat="server" Width="188px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="presentNo" ID="RequiredFieldValidator10" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                        <td align="right">
                            <strong><span class="redtext">* </span>Pin-Code : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <span id="ctl00_ContentPlaceHolder1_regpin" style="color:Red;visibility:hidden;">*</span>
                           
                            <asp:TextBox ID="presentPin" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="presentPin" ID="RequiredFieldValidator11" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>

                    </tr>



                    <tr>
                        <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>(8) Permanent Address : </strong>
                        </td>
                        <td align="left" colspan="3">&nbsp;&nbsp;
                            <asp:TextBox ID="permenantAddress" runat="server" Width="800px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="permenantAddress" ID="RequiredFieldValidator26" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr> <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>Mobile : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <asp:TextBox ID="permenantNo" runat="server" Width="197px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="permenantNo" ID="RequiredFieldValidator12" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                        <td align="right">
                            <strong><span class="redtext">* </span>Pin-Code : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <span id="ctl00_ContentPlaceHolder1_regpin" style="color:Red;visibility:hidden;">*</span>
                            <asp:TextBox ID="permenantPin" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="permenantPin" ID="RequiredFieldValidator13" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
&nbsp;</td>

                    </tr>
                    <tr>
                        <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>(9) Permanent Mobile Number : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <asp:TextBox ID="permenantMoNo" runat="server" Width="201px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="permenantMoNo" ID="RequiredFieldValidator14" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                        <td align="right">
                            <strong><span class="redtext">* </span>(10) Email-ID : </strong>
                        </td>
                        <td align="left" style="width: 256px">&nbsp;&nbsp;
                            <span id="ctl00_ContentPlaceHolder1_rfvEmail" class="redtext" style="color:Red;visibility:hidden;">*</span>
                            <asp:TextBox ID="email" runat="server" Width="215px"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="email" ID="RequiredFieldValidator15" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                        </td>
                        </tr>
                        <tr>
                         <td align="right" style="width: 172px">
                            <strong><span class="redtext">* </span>(11) Emergency Contact number : </strong>
                        </td>
                        <td align="left">&nbsp;&nbsp;
                            <span id="ctl00_ContentPlaceHolder1_regexpMobile" style="color:Red;visibility:hidden;">*</span>
                           
                            <asp:TextBox ID="emergencyNO" runat="server" Width="203px"></asp:TextBox>
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
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                            <span id="ctl00_ContentPlaceHolder1_rfvgender" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                                        <span id="ctl00_ContentPlaceHolder1_rfvddlDegree2" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                                        &nbsp;<asp:TextBox ID="edu1" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="edu1" ID="RequiredFieldValidator27" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="uni1" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="uni1" ID="RequiredFieldValidator28" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="center">
                                        <asp:TextBox ID="cgpa1" runat="server"></asp:TextBox>
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
                                        <asp:TextBox ID="edu2" runat="server"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ControlToValidate="edu2" ID="RequiredFieldValidator30" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="uni2" runat="server"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ControlToValidate="uni2" ID="RequiredFieldValidator31" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>--%>
                                    </td>
                                    <td align="center">
                                        &nbsp;<asp:TextBox ID="cgpa2" runat="server"></asp:TextBox>
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
                                        &nbsp;<asp:TextBox ID="organization" runat="server"></asp:TextBox>
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
                                        <span id="ctl00_ContentPlaceHolder1_rfvJoinedYear" class="redtext" style="color:Red;visibility:hidden;">*</span>
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
                                        &nbsp;<asp:TextBox ID="work" runat="server"></asp:TextBox>
                                        
                                    </td>
<td>
                                        &nbsp;<asp:TextBox ID="stipend" runat="server"></asp:TextBox>
                                        
                                    </td>
            <td>
                                        &nbsp;<asp:TextBox ID="rank" runat="server"></asp:TextBox>
                                        
                                    </td>

</tr>
</table>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" />
                <br />
</div>

</asp:Content>
