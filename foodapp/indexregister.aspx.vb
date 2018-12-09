Imports System.Data
Imports System.Data.SqlClient
Partial Class indexregister
    Inherits System.Web.UI.Page

    Protected Sub login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles login.Click
        invalids.Visible = False

        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
        Dim query As String
        query = "select * from Login where Uname LIKE '" & user.Text & "' AND Password LIKE '" & pass.Text & "'"
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
            user.Text = ""
            pass.Text = ""
            'login.Text = "Generate OTP"
            'genotp.Visible = True
            'verotp.Visible = True

            'Dim r As New Random
            'Dim otp As Integer
            'otp = r.Next(1000, 1999)
            'genotp.Text = otp
            'verotp.Text = ""

            invalids.Visible = True
            invalids.Text = ""

        End If
    End Sub
End Class
