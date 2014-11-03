
Partial Class Admin_Adminplayerdetails
    Inherits System.Web.UI.Page

    Protected Sub FV_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles fv_details.ItemDeleted
        fv_details.Visible = False

        Dim last As String = e.Values("Last_Name").ToString()

        updateLabel.Text = "Mr. " & last & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=Default.aspx")
    End Sub


    Protected Sub FV_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles fv_details.ItemUpdated
        fv_details.Visible = False

        updateLabel.Text = "You have updated the player information in the database."

        Response.AddHeader("REFRESH", "3;URL=Default.aspx")
    End Sub


End Class
