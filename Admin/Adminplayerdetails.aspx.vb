
Partial Class Admin_Adminplayerdetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.Redirect("Default.aspx")
    End Sub
End Class
