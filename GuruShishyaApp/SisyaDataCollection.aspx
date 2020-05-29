<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SisyaDataCollection.aspx.cs" Inherits="GuruShishyaApp.SisyaDataCollection" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
    <link href="Content/Custom.css" rel="stylesheet" type="text/css" />
    <%--<link rel="stylesheet" type="text/css" href="Content/fontawesomeall.css" />--%>
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />
    <script src="Scripts/jquery-3.0.0.min.js" type="text/javascript"></script>
    <script src="Scripts/gijgo.min.js" type="text/javascript"></script>
    <%--<link href="Content/gijgo.min.css" rel="stylesheet" type="text/css" />--%>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <title>પૂજ્ય શ્રી જયરામદાશ મહારાજ શિષ્ય માહિતી</title>
</head>
<body>
    <form runat="server">
        <div class="container-fluid register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <img src="Content/Swagat.jpg" alt="શુભ સ્વાગતમ" />
                    <h3>
                        સ્વાગત છે</h3>
                    <p>
                        પૂજ્ય શ્રી જયરામદાસ મહારાજ ના દરેક શિષ્યએ આપની માહિતી આ ફોર્મ માં ભરી આપવા વિનંતી
                    </p>
                    <p>
                        ફોર્મ ભરવાના કોઈપણ પ્રશ્નો માટે કૃપા કરીને ગૌતમ લિંબાણી (9974013335) નો સંપર્ક કરો.
                    </p>
                </div>
                <div class="col-md-9 register-right">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading">શિષ્ય માહિતી અને તેમની વિગતો</h3>
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-user"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="વ્યક્તિ પોતાનું નામ *" maxlength="15" id="firstname" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-user"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="પિતા / પતિ નુ નામ *" maxlength="15" id="middlename" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-user"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="અટક / જાતિ *" maxlength="15" id="lastname" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-address-card"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="હાલનું સરનામું - ઘર/શેરી/ફળિયું *" maxlength="30" id="corresAddrLine1" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-address-card"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="હાલનું સરનામું - ગામ/શહેર *" maxlength="15" id="corresAddrCity" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-address-card"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="હાલનું સરનામું - તાલુકો *" maxlength="15" id="corresAddrTaluka" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-address-card"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="હાલનું સરનામું - જીલ્લો *" maxlength="15" id="corresAddrDistrict" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-address-card"></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="હાલનું સરનામું - રાજ્ય *" maxlength="15" id="corresAddrState" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-address-card"></span>
                                            </span>
                                        </div>
                                        <input type="text" minlength="6" maxlength="6" name="txtPincode" class="form-control" placeholder="હાલનું સરનામું - પીન કોડ *" id="corresAddrPincode" runat="server" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-envelope"></span>
                                            </span>
                                        </div>
                                        <input type="email" class="form-control" maxlength="30" placeholder="તમારો ઇમેઇલ" id="email" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-phone"></span>
                                            </span>
                                        </div>
                                        <input type="text" minlength="10" maxlength="10" name="phone" class="form-control" placeholder="તમારો મોબાઈલ નંબર *" id="phone" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <%--<span class="fa fa-industry"></span>--%>
                                                <i class="fa fa-industry" aria-hidden="true"></i>
                                            </span>
                                        </div>
                                        <input type="text" maxlength="20" name="occupation" class="form-control" placeholder="તમારો વ્યવસાય" id="occupation" runat="server" />
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fas fa-school"></span>
                                            </span>
                                        </div>
                                        <asp:DropDownList runat="server" ID="ddlEducation" CssClass="form-control dropdown">
                                            <asp:ListItem Value="-1">તમારો અભ્યાસ</asp:ListItem>
                                            <asp:ListItem>< 10</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>Diploma Degree</asp:ListItem>
                                            <asp:ListItem>Bachelor Degree</asp:ListItem>
                                            <asp:ListItem>Master Degree</asp:ListItem>
                                            <asp:ListItem>Doctorate Degree</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fas fa-clinic-medical"></span>
                                            </span>
                                        </div>
                                        <asp:DropDownList runat="server" ID="ddlBloodgroup" CssClass="form-control dropdown">
                                            <asp:ListItem Value="-1">તમારું બ્લડ ગ્રુપ</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group input-group my-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-upload"></span>
                                            </span>
                                        </div>
                                        <div class="custom-file">
                                            <asp:FileUpload runat="server" id="filePhoto" class="custom-file-input" area-describedby="filePhotoAddon" accept=".png,.jpg,.jpeg" />
                                            <label class="custom-file-label" for="filePhoto">તમારો ફોટો અપલોડ કરવા ક્લિક કરો</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input id="datepicker" type="text" placeholder="જન્મ તારીખ - DD/MM/YYYY" class="form-control" runat="server" />
                                        <script>
                                            $('#datepicker').datepicker({ uiLibrary: 'bootstrap4', iconsLibrary: 'materialicons', format: 'dd/mm/yyyy' });
                                        </script>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="gender" id="genMale" value="male" runat="server" checked />
                                            <label class="form-check-label" for="genMale">
                                                પુરુષ
                                            </label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="gender" id="genFemale" runat="server" value="female" />
                                            <label class="form-check-label" for="genFemale">
                                                સ્ત્રી
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <asp:Button ID="btnRegister" runat="server" CssClass="btnRegister" OnClientClick="return Validate();" OnClick="btnRegister_OnClick" Text="Register" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>

    <script src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript">
        function Validate() {
            var retVal = true;
            var msg = "";
            var firstNm = document.getElementById("firstname");
            if (firstNm.value.length <= 0) {
                retVal = false;
                msg = "વ્યક્તિ પોતાનું નામ આવશ્યક છે.";
            }

            var middleNm = document.getElementById("middlename");
            if (middleNm.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nપિતા / પતિ નુ નામ આવશ્યક છે." : "પિતા / પતિ નુ નામ આવશ્યક છે.";
            }

            var lastNm = document.getElementById("lastname");
            if (lastNm.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nઅટક / જાતિ આવશ્યક છે." : "અટક / જાતિ આવશ્યક છે.";
            }

            var corresAddrLine1 = document.getElementById("corresAddrLine1");
            if (corresAddrLine1.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nહાલનું સરનામું - લાઇન 1 આવશ્યક છે." : "હાલનું સરનામું - લાઇન 1 આવશ્યક છે.";
            }
            
            var corresAddrCity = document.getElementById("corresAddrCity");
            if (corresAddrCity.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nહાલનું સરનામું - ગામ/શહેર આવશ્યક છે." : "હાલનું સરનામું - ગામ/શહેર આવશ્યક છે.";
            }
            
            var corresAddrTaluka = document.getElementById("corresAddrTaluka");
            if (corresAddrTaluka.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nહાલનું સરનામું - તાલુકો આવશ્યક છે." : "હાલનું સરનામું - તાલુકો આવશ્યક છે.";
            }
            
            var corresAddrDistrict = document.getElementById("corresAddrDistrict");
            if (corresAddrDistrict.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nહાલનું સરનામું - જીલ્લો આવશ્યક છે." : "હાલનું સરનામું - જીલ્લો આવશ્યક છે.";
            }

            var corresAddrState = document.getElementById("corresAddrState");
            if (corresAddrState.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nહાલનું સરનામું - રાજ્ય આવશ્યક છે." : "હાલનું સરનામું - રાજ્ય આવશ્યક છે.";
            }
            
            var corresAddrPincode = document.getElementById("corresAddrPincode");
            if (corresAddrPincode.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nહાલનું સરનામું - પીન કોડ આવશ્યક છે." : "હાલનું સરનામું - પીન કોડ આવશ્યક છે.";
            }

            var phone = document.getElementById("phone");
            if (phone.value.length <= 0) {
                retVal = false;
                msg = msg.length > 0 ? msg + "\nતમારો મોબાઈલ નંબર આવશ્યક છે." : "તમારો મોબાઈલ નંબર આવશ્યક છે.";
            }

            var file = document.getElementById("filePhoto");
            if (file.files.length > 0) {
                var fileSize = file.files.item(0).size;
                //gets the full file name including the extension
                var fileName = file.files.item(0).name;
                //finds where the extension starts
                var dotPosition = fileName.lastIndexOf(".");
                //gets only the extension
                var fileExt = fileName.substring(dotPosition).toLowerCase();
                //checks whether the file is .png and less than 1 MB
                if (!(fileSize <= 1024 * 1024 && (fileExt == ".png" || fileExt == ".jpg" || fileExt == ".jpeg"))) {
                    msg = msg.length > 0 ? msg + "\nતમારો ફોટો 1 MB કરતા ઓછી સાઈઝ તથા 'JPG / JPEG / PNG' નો હોવો જોઈએ." : "તમારો ફોટો 1 MB કરતા ઓછી સાઈઝ તથા 'JPG / JPEG / PNG' નો હોવો જોઈએ.";
                }
            }

            if (msg.length > 0) {
                msg += "\n\nબધી સ્ટાર ચિન્હિત (*) વિગતો આવશ્યક છે.";
                alert(msg);
            } else {
                //document.getElementById("btnRegister").disabled = true;
                //__doPostBack('btnRegister.ClientID', ''); 
            }

            return retVal;
        }
    </script>
</body>
</html>
