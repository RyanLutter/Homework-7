
Partial Class newplayer
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles fv_insert.ItemInserted
        fv_insert.Visible = False

        Dim last As String = e.Values("Last_Name").ToString()

        updateLabel.Text = "Mr. " & last & " has been added to the database."

        Response.AddHeader("REFRESH", "3;URL=Default.aspx")

    End Sub

    Protected Sub FormView1_Load(sender As Object, e As EventArgs) Handles fv_insert.Load
        fv_insert.Focus()

    End Sub

End Class
