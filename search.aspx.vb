
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim searchWord As String

        searchWord = "Select * From Tools where (toolName Like '%" + TextBox1.Text.ToString() + "%')"

        <datasource>.SelectCommand = searchWord

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged
        Dim searchWord As String

        searchWord = "Select * From Tools where (toolName Like '%" + TextBox2.Text.ToString() + "%')"

        <datasource>.SelectCommand = searchWord
    End Sub
End Class
