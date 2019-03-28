
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblSiteName.Text = CStr(Application("SiteName"))
    End Sub
End Class
