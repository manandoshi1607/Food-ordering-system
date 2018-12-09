
Imports System.Data
Imports System.Data.SqlClient
Partial Class admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim c As Integer
        con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
        Dim query As String
        query = "select count(distinct name) from visitor"
        cmd = New SqlCommand(query, con)
        con.Open()
        c = cmd.ExecuteScalar()
        Response.Write(c)

        con.Close()
        Label1.Visible = True
        Label1.Text = c



    End Sub
End Class
