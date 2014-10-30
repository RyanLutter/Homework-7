
Partial Class players
    Inherits System.Web.UI.MasterPage


    Protected Sub dateLabel_Load(sender As Object, e As EventArgs) Handles dateLabel.Load
        dateLabel.Text = System.DateTime.Now.ToString("MMMM dd yyyy")
    End Sub
End Class

