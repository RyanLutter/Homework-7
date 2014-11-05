
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Text_TextChanged(sender As Object, e As EventArgs) Handles tb_player.TextChanged
        Dim searchWord As String

        searchWord = "Select * From rlutter_HW7 where (First_Name Like '%" + tb_player.Text.ToString() + "%') or (Last_Name Like '%" + tb_player.Text.ToString() + "%')"

        sql_playerdata.SelectCommand = searchWord

        gv_search.Visible = True

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        gv_search.Visible = False

        tb_player.Focus()

    End Sub

End Class
