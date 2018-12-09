
Imports System.Data
Imports System.Data.SqlClient
Partial Class indexreg
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles login.Click
        invalid.Visible = False

        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con = New SqlConnection("Server=USER-PC\SQLEXPRESS2008; UID=sa; PWD=sa@1234; database=foodapp")
        Dim query As String
        query = "select * from Login where Uname LIKE '" & username.Text & "' AND Password LIKE '" & password.Text & "'"
        cmd = New SqlCommand(query, con)
        Dim sqlda As New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        sqlda.Fill(dt)
        'Check if record is present'
        If dt.Rows.Count > 0 Then
            'login.Text = "Generate OTP"
            'genotp.Visible = True
            'verotp.Visible = True

            'Dim r As New Random
            'Dim otp As Integer
            'otp = r.Next(1000, 1999)
            'genotp.Text = otp
            'verotp.Text = ""

            Response.Redirect("loggedin.aspx")
        Else
            username.Text = ""
            password.Text = ""
            'login.Text = "Generate OTP"
            'genotp.Visible = True
            'verotp.Visible = True

            'Dim r As New Random
            'Dim otp As Integer
            'otp = r.Next(1000, 1999)
            'genotp.Text = otp
            'verotp.Text = ""

            invalid.Visible = True

        End If
    End Sub
End Class
