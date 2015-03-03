<%@ Control Language="VB" AutoEventWireup="true" CodeFile="OpenAuthProviders.ascx.vb" Inherits="OpenAuthProviders" %>

<div id="socialLoginList">
    <h4>Utilisez un autre service pour vous connecter.</h4>
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" value="<%#: Item %>"
                    title="Connexion à l’aide de votre <%#: Item %> compte.">
                    <%#: Item %>
                </button>
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
                <p>Aucun service d’authentification n’est configuré. Consultez <a href="http://go.microsoft.com/fwlink/?LinkId=252803">cet article</a> pour plus d’informations sur la configuration de cette application ASP.NET en vue de la prise en charge de la connexion via des services externes.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>