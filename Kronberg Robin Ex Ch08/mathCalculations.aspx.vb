'Kronberg Robin Ex Ch. 8

Option Strict On
Option Explicit On

Partial Class mathCalculations
    Inherits System.Web.UI.Page
    Private Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click

        Dim firstNumber As Integer
        Dim secondNumber As Integer
        Dim moneyMathAnswer As Double
        Dim funnyMathAnswer As Integer
        Dim counter As Integer

        Try
            If txtFirstNumber.Text <> "" Then
                If txtSecondNumber.Text <> "" Then
                    If IsNumeric(txtFirstNumber.Text) Then
                        If IsNumeric(txtSecondNumber.Text) Then
                            If CDbl(txtFirstNumber.Text) > 0 Then
                                If CDbl(txtSecondNumber.Text) > 0 Then
                                    If Math.Floor(CDbl(txtFirstNumber.Text)) = Math.Ceiling(CDbl(txtFirstNumber.Text)) Then
                                        If Math.Floor(CDbl(txtSecondNumber.Text)) = Math.Ceiling(CDbl(txtSecondNumber.Text)) Then

                                            lblError.Visible = False
                                            firstNumber = CInt(txtFirstNumber.Text)
                                            secondNumber = CInt(txtSecondNumber.Text)

                                            If radMoneyMath.Checked = True Then
                                               

                                                Dim penniesEntered As Integer
                                                Dim daysEntered As Integer

                                                penniesEntered = firstNumber
                                                daysEntered = secondNumber

                                                For counter = 1 To daysEntered
                                                    moneyMathAnswer = CDbl((penniesEntered * 2 ^ (daysEntered - 1)) / 100)
                                                Next counter

                                                lblAnswer.Text = moneyMathAnswer.ToString("C")

                                            Else : radFunnyMath.Checked = True

                                                Dim newTotal As Integer
                                                For counter = 1 To secondNumber
                                                    newTotal += firstNumber
                                                Next counter

                                                funnyMathAnswer = newTotal
                                                lblAnswer.Text = funnyMathAnswer.ToString
                                            End If

                                        Else : lblError.Visible = True
                                            lblError.Text = "Must be a whole number. "
                                            txtSecondNumber.Focus()
                                        End If

                                    Else : lblError.Visible = True
                                        lblError.Text = "Must be a whole number."
                                        txtFirstNumber.Focus()
                                    End If
                                Else : lblError.Text = "Please enter a number greater than zero.  "
                                    txtSecondNumber.Focus()
                                End If
                            Else
                                lblError.Text = "Please enter a number greater than zero.  "
                                txtFirstNumber.Focus()
                            End If

                        Else : lblError.Visible = True
                            lblError.Text = "Must be a number.  "
                            txtSecondNumber.Focus()
                        End If
                    Else : lblError.Visible = True
                        lblError.Text = "Must be a number.  "
                        txtFirstNumber.Focus()
                    End If
                Else : lblError.Visible = True
                    lblError.Text = "Please enter something.  "
                    txtSecondNumber.Focus()
                End If
            Else : lblError.Visible = True
                lblError.Text = "Please enter something.  "
                txtFirstNumber.Focus()
            End If

        Catch ex As Exception
            lblError.Text = "Something went horribly wrong."
            txtFirstNumber.Focus()
        End Try


    End Sub

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        lblError.Visible = False

        lblFirstNumber.Text = "How many pennies?"
        lblSecondNumber.Text = "How many days?"
        lblSiteName.Text = CStr(Application("SiteName"))


    End Sub



    Protected Sub radFunnyMath_CheckedChanged(sender As Object, e As EventArgs) Handles radFunnyMath.CheckedChanged
            lblFirstNumber.Text = "Multiply this: "
            lblSecondNumber.Text = "By this:"

    End Sub

End Class
