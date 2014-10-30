
Partial Class newplayer
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles fv_insert.ItemInserted

        Response.Redirect("./Default.aspx")

    End Sub

    Protected Sub FormView1_Load(sender As Object, e As EventArgs) Handles fv_insert.Load

        fv_insert.Focus()

    End Sub

End Class
