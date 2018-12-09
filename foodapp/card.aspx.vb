Imports System.Data
Imports System.Data.SqlClient
Partial Class card
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("uname") = "") Then
            Response.Redirect("login.aspx")
        Else

            Label1.Text = Session("uname")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("invoice.aspx")
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        Dim query As String
        Dim payid As Integer
        query = "select count(*)from PAYMENT"
        cmd = New SqlCommand(query, con)
        con.Open()
        payid = cmd.ExecuteScalar()
        payid = payid + 1
        con.Close()
        Dim fu As String
        fu = DropDownList1.SelectedValue + DropDownList2.SelectedValue
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        query = "insert into PAYMENT values(" & payid & "," & Session("oid") & ",'" & Session("uname") & "','" & RadioButtonList1.SelectedValue & "'," & TextBox1.Text & ",'" & "Visa" & "','" & fu & "')"
        cmd = New SqlCommand(query, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()


    End Sub
End Class
