'Kronberg Robin Ex. Ch 8

Option Strict On
Option Explicit On
Partial Class accountCreationCongratulatory
    Inherits System.Web.UI.Page

    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        'see if cookies exist
        If Not Request.Cookies("UserInfo") Is Nothing Then
            'output cookie info in labels
            lblFirstName.Text = Request.Cookies("UserInfo")("userName")
            lblUserName.Text = Request.Cookies("UserInfo")("userID")
            lblUserPassword.Text = Request.Cookies("UserInfo")("userPW")

        End If

        lblSiteName.Text = CStr(Application("SiteName"))
    End Sub
End Class
