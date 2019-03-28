'Kronberg Robin Ex Ch. 8

Option Strict On
Option Explicit On


Partial Class Navigation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'display site name and user's name 

        lblSiteName.Text = CStr(Application("SiteName"))
        lblUserName.Text = Request.Cookies("UserInfo")("userName")
    End Sub
End Class
