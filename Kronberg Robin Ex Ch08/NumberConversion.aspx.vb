'Kronberg Robin Ex. 6-02

Option Strict On
Option Explicit On

Partial Class NumberConversion
    Inherits System.Web.UI.Page


    Protected Sub btnBinaryCalculate_Click(sender As Object, e As EventArgs) Handles btnBinaryCalculate.Click
        Dim number As Integer
        Dim convert As String = ""
        Dim find As Integer


        Try

            If txtInputDec.Text <> "" Then
                If IsNumeric(txtInputDec.Text) Then
                    If CInt(txtInputDec.Text) >= 0 Then
                        If CInt(txtInputDec.Text) <= 255 Then
                            If Math.Floor(CDec(txtInputDec.Text)) = Math.Ceiling(CDec(txtInputDec.Text)) Then

                                number = CInt(CDec(txtInputDec.Text))


                                For x = 7 To 0 Step -1
                                    Dim exponent As Integer = CInt(2 ^ x)


                                    If exponent <= number Then
                                        convert = convert & "1"
                                        number = number - exponent
                                    Else
                                        convert = convert & "0"

                                    End If
                                Next

                                If chkEightDig.Checked Then
                                    lblBinaryOut.Text = convert



                                Else
                                    find = convert.IndexOf("1")
                                    convert = convert.Substring(find, convert.Length - find)
                                    lblBinaryOut.Text = convert
                                End If

                            Else
                                lblConversionError.Text = "Please enter a whole number."
                            End If
                        Else : lblConversionError.Text = "Please enter a number smaller than 255."
                        End If
                    Else : lblConversionError.Text = "Please enter a number greater than 0."
                    End If
                Else : lblConversionError.Text = "Please enter a number."
                End If
            Else : lblConversionError.Text = "Please enter something."
            End If


        Catch ex As Exception
            lblConversionError.Text = "Something went horribly wrong."

        End Try

    End Sub


    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        lblSiteName.Text = CStr(Application("SiteName"))
    End Sub
End Class
