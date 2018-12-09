Imports System.Data
Imports System.Data.SqlClient
Partial Class viewcart
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        If (Session("uname") = "") Then
            Response.Redirect("login.aspx")

        End If
        con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
        Dim query As String
        query = "select sum(price*quantity) from Cart  where uname LIKE '" & Session("uname") & "'"
        cmd = New SqlCommand(query, con)

        Dim rows As Integer
        con.Open()
        rows = cmd.ExecuteScalar
        con.Close()
        Label1.Text = rows.ToString

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim t As String



        con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
        Dim query As String
        Dim oid As Integer
        query = "select count(*)from TBLOrder"
        cmd = New SqlCommand(query, con)

        con.Open()
        oid = cmd.ExecuteScalar

        oid = oid + 1
        con.Close()
        Session("orderid") = oid
        Dim u As String
        u = Session("uname")

        con = New SqlConnection("Server=.\yash; UID=sa; PWD=sa@1234; database=vr46")
        query = "insert into TBLOrder values(" & oid & ",'" & DateTime.Now.ToString & "','" & u & "'," & Label1.Text & ",'" & r1.SelectedValue & "','')"
        cmd = New SqlCommand(query, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        If r1.SelectedValue = "COD" Then
            Response.Redirect("confirmation.aspx?oid=" & oid)

        ElseIf r1.SelectedValue = "NB" Then
            Response.Redirect("netb.aspx")

        Else
            Response.Redirect("card.aspx")

        End If

    End Sub
End Class
