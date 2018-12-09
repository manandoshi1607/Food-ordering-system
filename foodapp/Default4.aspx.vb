
Partial Class Default4
    Inherits System.Web.UI.Page
    Dim temp As String
    Private Sub Default4_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            TextBox1.Text = temp
            'If temp <> "" Then
            '    TextBox1.Text = ViewState("psw").ToString()
            'End If

        Else
            temp = ""
            Response.Write("")
            TextBox1.Text = ""

        End If

    End Sub
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        ViewState("psw") = TextBox1.Text

        temp = TextBox1.Text

        Dim upper As Integer
        Dim lower As Integer
        Dim numbers As Integer
        Dim other As Integer
        For i = 0 To temp.Length - 1
            If Char.IsLetter(temp(i)) Then
                If Char.IsUpper(temp(i)) Then
                    upper += 1
                    'Label1.Text = "Password is Strong"
                Else
                    lower += 1
                    'Label1.Text = "Password is Weak"
                End If
            ElseIf Char.IsNumber(temp(i)) Then
                numbers += 1
                ' Label1.Text = "Password is Medium"'

            End If
        Next
        Dim p As Integer = upper + lower + numbers + other
        If p <= 5 Then
            pp.ForeColor = Drawing.Color.Red
            pp.Text = "Weak"
        End If
        If p > 5 AndAlso p <= 8 Then
            pp.ForeColor = Drawing.Color.Blue
            pp.Text = "Medium"
        End If
        If p > 10 Then
            pp.ForeColor = Drawing.Color.Green
            pp.Text = "Strong"
        End If

    End Sub

End Class
