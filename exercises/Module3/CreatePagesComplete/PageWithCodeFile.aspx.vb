
Partial Class PageWithCodeFile
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        myLabel.Text = "Executed at server"
    End Sub
End Class
