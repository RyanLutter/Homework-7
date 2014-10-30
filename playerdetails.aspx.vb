
Partial Class playerdetails
    Inherits System.Web.UI.Page


    Protected Sub fv_details_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles fv_details.ItemUpdated
        fv_details.Visible = False
        fv_update.Visible = True
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        fv_update.Visible = False
    End Sub
End Class
