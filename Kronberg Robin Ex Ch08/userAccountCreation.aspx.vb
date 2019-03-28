'Kronberg Robin Ex. Ch 8

Option Strict On
Option Explicit On
Partial Class userAccountCreation
    Inherits System.Web.UI.Page

    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None
        lblSiteName.Text = CStr(Application("SiteName"))
    End Sub




    Protected Sub btnCreateAccount_Click(sender As Object, e As EventArgs) Handles btnCreateAccount.Click
        'see if validation worked
        If Page.IsValid Then

            'make cookies 
            Dim userInfoCookie As HttpCookie = New HttpCookie("UserInfo")
            Dim minutesToLast As Integer
            minutesToLast = 3

            userInfoCookie("userID") = txtUserID.Text
            userInfoCookie("userPW") = txtConfirmPW.Text
            userInfoCookie("userName") = txtFirstName.Text
            userInfoCookie.Expires = Now.AddMinutes(minutesToLast)
            Response.Cookies.Add(userInfoCookie)


            Response.Redirect("accountCreationCongratulatory.aspx")

        End If
    End Sub

    Protected Sub CheckUserIDLength(source As Object, args As ServerValidateEventArgs) Handles checkLength.ServerValidate
        If Len(args.Value) < 5 Then
            args.IsValid = False

        Else
            args.IsValid = True

        End If
    End Sub


    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        'reset textboxes and focus
        txtLastName.Text = ""
        txtFirstName.Text = ""
        txtBirthDate.Text = ""
        txtUserID.Text = ""
        txtPW.Text = ""
        txtConfirmPW.Text = ""
        txtLastName.Focus()

    End Sub
End Class
