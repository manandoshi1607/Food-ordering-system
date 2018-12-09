Imports System.Data
Imports System.Data.SqlClient
Partial Class confirmation
    Inherits System.Web.UI.Page
    Dim updateaddress As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("uname") = "") Then
            Response.Redirect("login.aspx")
        Else

            Label1.Text = Session("uname")
        End If

        Dim con As New SqlConnection
        Dim com As New SqlCommand
        Dim dar As SqlDataReader
        Dim query As String




        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        con.Open()
        query = "select * from TBLOrder where o_id = " & Request.QueryString("oid")

        com = New SqlCommand(query, con)
        dar = com.ExecuteReader

        While dar.Read
            Label2.Text = dar(1)
            Label4.Text = dar(3)
            Label3.Text = dar(4)

        End While
        con.Close()
        Dim add As String

        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        con.Open()
        query = "select address from REGISTER where uname like '" & Label1.Text & "'"
        com = New SqlCommand(query, con)
        add = com.ExecuteScalar
        con.Close()
        tb1.Text = add



    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Response.Write(tb1.Text)
        Dim con As SqlConnection
        Dim com As SqlCommand
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        Dim query As String
        Dim id As Integer
        id = Val(Request.QueryString("oid"))
        If CheckBox1.Checked = True Then


            query = "update TBLOrder set  address='" & TextBox1.Text & "' where o_id=" & id
            com = New SqlCommand(query, con)
            con.Open()
            com.ExecuteNonQuery()
            con.Close()
        End If
        Dim t As String
        t = Session("uname")
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        query = "delete from Cart where uname= '" & t & "'"
        com = New SqlCommand(query, con)
        con.Open()
        com.ExecuteNonQuery()
        con.Close()
    End Sub


    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            TextBox1.Visible = True
        Else
            TextBox1.Visible = False
        End If
    End Sub


End Class
