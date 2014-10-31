
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles tb_playerone.TextChanged
        Dim searchWord As String

        searchWord = "Select * From rlutter_HW7 where (First_Name Like '%" + tb_playerone.Text.ToString() + "%')"

        sql_playerdata.SelectCommand = searchWord

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles tb_playertwo.TextChanged
        Dim searchWord As String

        searchWord = "Select * From rlutter_HW7 where (First_Name Like '%" + tb_playertwo.Text.ToString() + "%')"

        sql_playerdata.SelectCommand = searchWord

    End Sub

End Class
