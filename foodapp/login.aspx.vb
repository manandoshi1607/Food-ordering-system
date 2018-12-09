Imports System.Data
Imports System.Data.SqlClient
Imports System.Timers

Partial Class login
    Inherits System.Web.UI.Page
    Dim otp As Integer
    Dim pass As String



    Protected Sub lg4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lg4.Click
        lg1.Text = ""
        lg2.Text = ""
    End Sub

    Protected Sub lg3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lg3.Click
        lg2.Text = pass

        If ot3.Text = ot2.Text Then
            Session("Uname") = lg1.Text

            Dim con As New SqlConnection
            Dim cmd As New SqlCommand
            con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
            Dim query As String
            query = "insert into visitor values('" & lg1.Text & "','')"
            cmd = New SqlCommand(query, con)
            con.Open()
            cmd.ExecuteNonQuery()

            con.Close()
            If lg1.Text = "admin" Then
                Response.Redirect("admin.aspx")
            Else
                Response.Redirect("loggedin.aspx")
            End If



        Else


            v1.Visible = True
            Dim rdm As New Random()
            Dim allowChrs() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
            Dim sResult As String = ""
            For i As Integer = 0 To 5
                sResult += allowChrs(rdm.Next(0, allowChrs.Length))
            Next
            ot2.Text = sResult
            Label1.Text = "Invalid OTP"
        End If

    End Sub

    Protected Sub ot_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ot.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
        Dim query As String
        query = "Select * from LOGIN where uname Like '" & lg1.Text & "' AND password LIKE '" & lg2.Text & "'"
        cmd = New SqlCommand(query, con)
        Dim sqlda As New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        sqlda.Fill(dt)
        'Check if record is present'
        If dt.Rows.Count > 0 Then
            'record is present'
            pass = lg2.Text
            ot2.Visible = True
            ot3.Visible = True
            lg3.Visible = True
            lg4.Visible = True
            b1.Visible = True
            ot.Visible = False

            Label2.Visible = True
            Label2.Text = "Enter OTP:"
            'lg2.Enabled = False'
            'lg1.Enabled = False '
            Timer1.Enabled = True

            Dim rdm As New Random()
            Dim allowChrs() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
            Dim sResult As String = ""
            For i As Integer = 0 To 5
                sResult += allowChrs(rdm.Next(0, allowChrs.Length))
            Next
            ot2.Text = sResult





        Else
            lg1.Text = ""
            lg2.Text = ""
            Label1.Text = "Username or Password invalid ..Login Field"
        End If


    End Sub

    Protected Sub b1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles b1.Click
        Dim rdm As New Random()
        Dim allowChrs() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
        Dim sResult As String = ""
        For i As Integer = 0 To 5
            sResult += allowChrs(rdm.Next(0, allowChrs.Length))
        Next
        ot2.Text = sResult

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim rdm As New Random()
        Dim allowChrs() As Char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ0123456789".ToCharArray()
        Dim sResult As String = ""
        For i As Integer = 0 To 5
            sResult += allowChrs(rdm.Next(0, allowChrs.Length))
        Next
        ot2.Text = sResult
    End Sub
End Class
