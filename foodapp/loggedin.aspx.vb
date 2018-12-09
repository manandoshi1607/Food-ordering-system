Imports System.Data
Imports System.Data.SqlClient
Partial Class loggedin
    Inherits System.Web.UI.Page
    Dim cartid As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Uname") = "" Then
            Response.Redirect("login.aspx")
        Else
            Label1.Text = Session("Uname")
        End If

        cartid = 0

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim index As Integer
        index = Val(e.CommandArgument)
        Response.Write(index)
        Dim row As GridViewRow = GridView1.Rows(index)
        'Response.Write(row.Cells(0).Text.ToString)
        'Response.Write(row.Cells(1).Text.ToString)
        'Response.Write(row.Cells(3).Text.ToString)
        Dim quantity As String
        quantity = CType(GridView1.Rows(index).FindControl("dd1"), DropDownList).SelectedValue
        Dim uname As String
        uname = Session("Uname")
        Dim nowdate As String = DateTime.Now.ToString
        'Response.Write("Quantity" & quantity)

        'Response.Write("Username" & uname)
        'Response.Write("Date" & nowdate)
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
        Dim query As String
        query = "select count(*) from Cart"
        cmd = New SqlCommand(query, con)

        con.Open()
        cartid = cmd.ExecuteScalar()
        cartid = cartid + 1
        con.Close()
        Response.Write(cartid)
        con = New SqlConnection("server=.\yash;uid=sa;PWD=sa@1234;database=vr46")
       
        Dim a As Integer
        Dim b As Integer
        Dim c As Integer
        a = Val(row.Cells(0).Text)
        b = Val(row.Cells(1).Text)
        c = Val(row.Cells(3).Text)


        query = "insert into Cart values(" & cartid & "," & a & "," & b & ",'" & uname & "'," & c & "," & quantity & ",'" & nowdate & "')"
        cmd = New SqlCommand(query, con)
        Response.Write("Inserted")


        con.Open()
        cmd.ExecuteNonQuery()

        con.Close()





    End Sub

End Class

