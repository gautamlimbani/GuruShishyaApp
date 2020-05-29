using OfficeOpenXml;
using System;
using System.IO;

namespace GuruShishyaApp
{
    public partial class SisyaDataCollection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_OnClick(object sender, EventArgs e)
        {
            if (!ValidateData()) return;
            try
            {
                var dataFilePathDir = Server.MapPath("~/Data/");
                if (!Directory.Exists(dataFilePathDir))
                    Directory.CreateDirectory(dataFilePathDir);
                var dataFilePath = dataFilePathDir + "Data.xlsx";

                FileInfo dataFile = new FileInfo(dataFilePath);
                //if (!dataFile.Exists) dataFile.Create();

                ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

                using (ExcelPackage package = new ExcelPackage(dataFile))
                {
                    // get the first worksheet in the workbook if it exists.
                    ExcelWorksheet worksheet = null;
                    bool newSheet = false;
                    if (package.Workbook.Worksheets.Count > 0)
                        worksheet = package.Workbook.Worksheets[0];
                    else
                    {
                        // set some document properties
                        package.Workbook.Properties.Title = "Pujya Shree Jayaramdash Maharaj Shishya Bandhu Data";
                        package.Workbook.Properties.Author = "Gautam Limbani";
                        package.Workbook.Properties.Comments =
                            "This document contains the details about the Pujya Shree Jayaramdash Maharaj Shishya Bandhu";

                        // set some extended property values
                        package.Workbook.Properties.Company = "GDL";

                        // set some custom property values
                        package.Workbook.Properties.SetCustomPropertyValue("Checked by", "Gautam Limbani");
                        package.Workbook.Properties.SetCustomPropertyValue("AssemblyName", "EPPlus");

                        worksheet = package.Workbook.Worksheets.Add("Data");
                        newSheet = true;
                    }

                    if (newSheet)
                    {
                        //Create the header row
                        var recPointer = 1;
                        worksheet.Cells["A" + recPointer].Value = "Sr. No.";
                        worksheet.Cells["B" + recPointer].Value = "First Name";
                        worksheet.Cells["C" + recPointer].Value = "Middle Name";
                        worksheet.Cells["D" + recPointer].Value = "Last Name";
                        worksheet.Cells["E" + recPointer].Value = "Correspondence Address Line 1";
                        worksheet.Cells["F" + recPointer].Value = "Correspondence Address Village/City";
                        worksheet.Cells["G" + recPointer].Value = "Correspondence Address Taluka";
                        worksheet.Cells["H" + recPointer].Value = "Correspondence Address District";
                        worksheet.Cells["I" + recPointer].Value = "Correspondence Address State";
                        worksheet.Cells["J" + recPointer].Value = "Correspondence Address Pincode";
                        worksheet.Cells["K" + recPointer].Value = "DOB";
                        worksheet.Cells["L" + recPointer].Value = "Email";
                        worksheet.Cells["M" + recPointer].Value = "Phone";
                        worksheet.Cells["N" + recPointer].Value = "Gender";
                        worksheet.Cells["O" + recPointer].Value = "Occupation";
                        worksheet.Cells["P" + recPointer].Value = "Education";
                        worksheet.Cells["Q" + recPointer].Value = "Blood Group";

                        recPointer = 2;
                        worksheet.Cells["A" + recPointer].Value = recPointer - 1;
                        worksheet.Cells["B" + recPointer].Value = firstname.Value;
                        worksheet.Cells["C" + recPointer].Value = middlename.Value;
                        worksheet.Cells["D" + recPointer].Value = lastname.Value;
                        worksheet.Cells["E" + recPointer].Value = corresAddrLine1.Value;
                        worksheet.Cells["F" + recPointer].Value = corresAddrCity.Value;
                        worksheet.Cells["G" + recPointer].Value = corresAddrTaluka.Value;
                        worksheet.Cells["H" + recPointer].Value = corresAddrDistrict.Value;
                        worksheet.Cells["I" + recPointer].Value = corresAddrState.Value;
                        worksheet.Cells["J" + recPointer].Value = corresAddrPincode.Value;
                        worksheet.Cells["K" + recPointer].Value = datepicker.Value;
                        worksheet.Cells["L" + recPointer].Value = email.Value;
                        worksheet.Cells["M" + recPointer].Value = phone.Value;
                        worksheet.Cells["N" + recPointer].Value = genMale.Checked ? "Male" : "Female";
                        worksheet.Cells["O" + recPointer].Value = occupation.Value;
                        worksheet.Cells["P" + recPointer].Value = ddlEducation.SelectedItem.Text;
                        worksheet.Cells["Q" + recPointer].Value = ddlBloodgroup.SelectedItem.Text;
                    }
                    else
                    {
                        //check to see if the record already exists.
                        var recPointer = worksheet.Dimension.Rows + 1;
                        for (int i = 2; i <= worksheet.Dimension.Rows; i++)
                        {
                            if (string.Equals(worksheet.Cells["B" + i].Value.ToString(), firstname.Value, StringComparison.CurrentCultureIgnoreCase)
                                && string.Equals(worksheet.Cells["C" + i].Value.ToString(), middlename.Value, StringComparison.CurrentCultureIgnoreCase)
                                && string.Equals(worksheet.Cells["D" + i].Value.ToString(), lastname.Value, StringComparison.CurrentCultureIgnoreCase)
                            )
                            {
                                recPointer = i;
                                break;
                            }
                        }

                        worksheet.Cells["A" + recPointer].Value = recPointer - 1;
                        worksheet.Cells["B" + recPointer].Value = firstname.Value;
                        worksheet.Cells["C" + recPointer].Value = middlename.Value;
                        worksheet.Cells["D" + recPointer].Value = lastname.Value;
                        worksheet.Cells["E" + recPointer].Value = corresAddrLine1.Value;
                        worksheet.Cells["F" + recPointer].Value = corresAddrCity.Value;
                        worksheet.Cells["G" + recPointer].Value = corresAddrTaluka.Value;
                        worksheet.Cells["H" + recPointer].Value = corresAddrDistrict.Value;
                        worksheet.Cells["I" + recPointer].Value = corresAddrState.Value;
                        worksheet.Cells["J" + recPointer].Value = corresAddrPincode.Value;
                        worksheet.Cells["K" + recPointer].Value = datepicker.Value;
                        worksheet.Cells["L" + recPointer].Value = email.Value;
                        worksheet.Cells["M" + recPointer].Value = phone.Value;
                        worksheet.Cells["N" + recPointer].Value = genMale.Checked ? "Male" : "Female";
                        worksheet.Cells["O" + recPointer].Value = occupation.Value;
                        worksheet.Cells["P" + recPointer].Value = ddlEducation.SelectedItem.Text;
                        worksheet.Cells["Q" + recPointer].Value = ddlBloodgroup.SelectedItem.Text;
                    }
                    
                    // save our new workbook in the output directory and we are done!
                    package.SaveAs(dataFile);
                }

                if (filePhoto.HasFile && filePhoto.PostedFile.ContentLength > 0)
                {
                    var fileName =
                        (firstname.Value[0].ToString() + middlename.Value[0].ToString() + lastname.Value[0].ToString())
                        .ToString().ToUpper();
                    fileName += phone.Value.ToString();
                    fileName += System.IO.Path.GetExtension(filePhoto.FileName);
                    var dirPath = Server.MapPath("~/images/gallery/");
                    if (!Directory.Exists(dirPath))
                        Directory.CreateDirectory(dirPath);

                    var filePath = dirPath + fileName;

                    if (File.Exists(filePath))
                        File.Delete(filePath);
                    filePhoto.PostedFile.SaveAs(filePath);
                }

                ClearAll();

                Response.Redirect("SuccessLandingPage.html", true);
            }
            catch (Exception ex)
            {
                System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "failure",
                    "document.getElementById('btnRegister').disabled = false; alert('કંઈક ખોટું થયું છે. ફરીથી પ્રયત્ન કરો.!\n\nError...\n" + ex.Message + "');", true);
            }
        }

        private bool ValidateData()
        {
            var retVal = true;
            var msg = "";
            if (firstname.Value.Length <= 0)
            {
                retVal = false;
                msg = "વ્યક્તિ પોતાનું નામ આવશ્યક છે.";
            }

            if (middlename.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nપિતા / પતિ નુ નામ આવશ્યક છે." : "પિતા / પતિ નુ નામ આવશ્યક છે.";
            }

            if (lastname.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nઅટક / જાતિ આવશ્યક છે." : "અટક / જાતિ આવશ્યક છે.";
            }

            if (corresAddrLine1.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nહાલનું સરનામું - લાઇન 1 આવશ્યક છે." : "હાલનું સરનામું - લાઇન 1 આવશ્યક છે.";
            }

            if (corresAddrCity.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nહાલનું સરનામું - ગામ/શહેર આવશ્યક છે." : "હાલનું સરનામું - ગામ/શહેર આવશ્યક છે.";
            }

            if (corresAddrTaluka.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nહાલનું સરનામું - તાલુકો આવશ્યક છે." : "હાલનું સરનામું - તાલુકો આવશ્યક છે.";
            }

            if (corresAddrDistrict.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nહાલનું સરનામું - જીલ્લો આવશ્યક છે." : "હાલનું સરનામું - જીલ્લો આવશ્યક છે.";
            }

            if (corresAddrState.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nહાલનું સરનામું - રાજ્ય આવશ્યક છે." : "હાલનું સરનામું - રાજ્ય આવશ્યક છે.";
            }

            if (corresAddrPincode.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nહાલનું સરનામું - પીન કોડ આવશ્યક છે." : "હાલનું સરનામું - પીન કોડ આવશ્યક છે.";
            }

            if (phone.Value.Length <= 0)
            {
                retVal = false;
                msg = msg.Length > 0 ? msg + "\nતમારો મોબાઈલ નંબર આવશ્યક છે." : "તમારો મોબાઈલ નંબર આવશ્યક છે.";
            }

            if (filePhoto.HasFile)
            {
                var fileSize = filePhoto.PostedFile.ContentLength;
                var fileExt = System.IO.Path.GetExtension(filePhoto.FileName).ToLower();
                if (!(fileSize <= 1024 * 1024 && (fileExt == ".png" || fileExt == ".jpg" || fileExt == ".jpeg")))
                {
                    msg = msg.Length > 0
                        ? msg + "\nતમારો ફોટો 1 MB કરતા ઓછી સાઈઝ તથા 'JPG / JPEG / PNG' નો હોવો જોઈએ."
                        : "તમારો ફોટો 1 MB કરતા ઓછી સાઈઝ તથા 'JPG / JPEG / PNG' નો હોવો જોઈએ.";
                }
            }

            if (msg.Length > 0)
            {
                msg += "\n\nબધી સ્ટાર ચિન્હિત (*) વિગતો આવશ્યક છે.";
                System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "validationfails", "alert('" + msg + "');", true);

            }

            return retVal;
        }

        private void ClearAll()
        {
            firstname.Value = "";
            middlename.Value = "";
            lastname.Value = "";
            corresAddrLine1.Value = "";
            corresAddrCity.Value = "";
            corresAddrTaluka.Value = "";
            corresAddrDistrict.Value = "";
            corresAddrState.Value = "";
            genMale.Checked = true;
            corresAddrPincode.Value = "";
            datepicker.Value = "";
            email.Value = "";
            phone.Value = "";
            occupation.Value = "";
            ddlEducation.SelectedIndex = 0;
            ddlBloodgroup.SelectedIndex = 0;
            filePhoto.PostedFile.InputStream.Dispose();
        }
    }
}