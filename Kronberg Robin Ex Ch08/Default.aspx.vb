'Kronberg Robin Ex Ch. 8

Option Strict On
Option Explicit On


Partial Class _Default
    Inherits System.Web.UI.Page

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        'input
        Dim username As String
        Dim password As String



        username = txtUsername.Text
        password = txtPassword.Text

        'processing

        Try

            If username <> "" Or password <> "" Then

                'compare against existing cookies

                If username = Request.Cookies("UserInfo")("userID") Then
                    If password = Request.Cookies("UserInfo")("userPW") Then
                        Response.Redirect("Navigation.aspx")

                    Else : Response.Redirect("loginError.aspx")
                    End If

                Else : Response.Redirect("loginError.aspx")
                End If

            Else : Response.Redirect("loginError.aspx")
            End If
        Catch ex As Exception
            lblMajorError.Visible = True

        End Try


    End Sub

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load

        'hide major error label
        lblMajorError.Visible = False
        lblSiteName.Text = CStr(Application("SiteName"))

        'check cookies, enable/disable login and account create buttons

        If Not Request.Cookies("UserInfo") Is Nothing Then

            btnAccountCreation.Enabled = False
            btnLogin.Enabled = True

            txtUsername.Text = Request.Cookies("UserInfo")("userID")
            txtPassword.Text = Request.Cookies("UserInfo")("userPW")

        Else
            btnAccountCreation.Enabled = True
            btnLogin.Enabled = False

        End If




    End Sub


    Protected Sub btnAccountCreation_Click(sender As Object, e As EventArgs) Handles btnAccountCreation.Click
        Response.Redirect("userAccountCreation.aspx")
    End Sub
End Class
