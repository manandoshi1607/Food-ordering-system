
Partial Class test
    Inherits System.Web.UI.Page

    Private Sub test_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim rdm As New Random()
        Dim allowChrs() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
        Dim sResult As String = ""
        For i As Integer = 0 To 5
            sResult += allowChrs(rdm.Next(0, allowChrs.Length))
        Next
        TextBox1.Text = sResult


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If CheckBox1.Checked Then
            Response.Cookies("UserName").Expires = DateTime.Now.AddDays(30)
            Response.Cookies("Password").Expires = DateTime.Now.AddDays(30)
        Else
            Response.Cookies("UserName").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("Password").Expires = DateTime.Now.AddDays(-1)
        End If
        Response.Cookies("UserName").Value = TextBox2.Text.Trim
        Response.Cookies("Password").Value = TextBox3.Text.Trim
    End Sub
    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim rdm As New Random()
        Dim allowChrs() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
        Dim sResult As String = ""
        For i As Integer = 0 To 5
            sResult += allowChrs(rdm.Next(0, allowChrs.Length))
        Next
        TextBox1.Text = sResult
    End Sub


End Class
