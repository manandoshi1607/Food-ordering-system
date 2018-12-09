Imports System.Data
Imports System.Data.SqlClient


Partial Class register
    Inherits System.Web.UI.Page
    Dim regid As Integer
    Dim a As String


    Protected Sub sb_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles sb.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        Dim query As String
        query = "Select count(*)from REGISTER"
        cmd = New SqlCommand(query, con)

        con.Open()
        regid = cmd.ExecuteScalar()
        regid = regid + 1
        con.Close()
        Response.Write(regid)

        'Inserting web form into registration table'


        Dim temp As Integer
        Dim t As Integer
        Dim m As Integer
        t = 0
        temp = 0
        m = 0
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        query = "select * from Login where uname='" & fnt.Text & "'"
        cmd = New SqlCommand(query, con)

        con.Open()
        t = cmd.ExecuteScalar()
        con.Close()

        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        query = "select * from Register where email='" & emt.Text & "'"
        cmd = New SqlCommand(query, con)

        con.Open()
        m = cmd.ExecuteScalar()
        Response.Write(m)
        con.Close()

        If t > 0 Then
            Label1.Visible = True
            Label1.Text = "Username already exists you may use"
            Dim s As String
            s = regt.Text
            Dim rdm As New Random()
            Dim allowChrs() As Char = "0123456789".ToCharArray()
            Dim sResult As String = ""
            For i As Integer = 0 To 2
                sResult += allowChrs(rdm.Next(0, allowChrs.Length))
            Next
            s = s + sResult
            Label2.Text = s
            temp = 1
        End If
        If m > 0 Then
            Label3.Visible = True
            Label3.Text = "Email address already registered"
            temp = 1
        End If


        If temp = 0 Then
            con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
            Dim bdate As String
            bdate = dd0.Text & " - " & dd1.SelectedValue & " - " & dd2.Text

            pt.Text = Label4.Text
            Response.Write(pt.Text)
            query = "insert into REGISTER values(" & regid & ",'" & regt.Text & "','" & at.Text & "','" & pht.Text & "'," & bdate & ",'" & gen.SelectedValue & "','" & ct.Text & "','" & pct.Text & "','" & emt.Text & "','" & fnt.Text & "','" & pt.Text & "')"
            cmd = New SqlCommand(query, con)

            con.Open()
            cmd.ExecuteNonQuery()

            con.Close()

            con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")



            query = "insert into LOGIN values(" & regid & ",'" & unt.Text & "','" & pt.Text & "')"
            cmd = New SqlCommand(query, con)

            con.Open()
            cmd.ExecuteNonQuery()

            con.Close()
        End If


    End Sub


    Protected Sub pt_TextChanged(sender As Object, e As EventArgs) Handles pt.TextChanged
        Response.Write(pt.Text)
        Label4.Text = pt.Text
        ViewState("psd") = pt.Text
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        Label4.Text = ViewState("psd")
        'pt.Text = Label4.Text
        'Label4.Text = "defaulttext"
        ' End If
    End Sub
End Class


