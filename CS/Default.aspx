<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ContentPlaceHolderID="SiteBodyContentPlaceHolder" runat="server">
    <div class="text-center card-header">
        <h4>Registration Page</h4>
    </div>
    <div class="card-body">
        <dx:BootstrapFormLayout runat="server" ID="FormLayout1" LayoutType="Vertical" RequiredMarkDisplayMode="None">
            <SettingsItems ShowCaption="false" />
            <Items>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapTextBox runat="server" ID="UsernameTextBox" NullText="Username">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please fill out this field" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapTextBox runat="server" ID="PasswordTextBox" NullText="Password" Password="true">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please fill out this field" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapTextBox runat="server" ID="EmailTextBox" NullText="E-mail">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please fill out this field" />
                                    <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapTextBox ID="PhoneNumberTextBox" NullText="Phone Number" runat="server">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RegularExpression ValidationExpression="\(?\b[0-9]{3}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits" />
                                </ValidationSettings>
                                <MaskSettings Mask="+1 (999) 999-9999" IncludeLiterals="None" />
                            </dx:BootstrapTextBox>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapDateEdit ID="BirthdayDateEdit" runat="server" NullText="Birthday">
                            </dx:BootstrapDateEdit>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapComboBox ID="OccupationComboBox" DropDownStyle="DropDown" NullText="Occupation" runat="server">
                                <Items>
                                    <dx:BootstrapListEditItem Value="Academic" />
                                    <dx:BootstrapListEditItem Value="Administrative" />
                                    <dx:BootstrapListEditItem Value="Art/Entertainment" />
                                    <dx:BootstrapListEditItem Value="College Student" />
                                    <dx:BootstrapListEditItem Value="Community & Social" />
                                    <dx:BootstrapListEditItem Value="Computers" />
                                    <dx:BootstrapListEditItem Value="Education" />
                                    <dx:BootstrapListEditItem Value="Engineering" />
                                    <dx:BootstrapListEditItem Value="Financial Services" />
                                    <dx:BootstrapListEditItem Value="Government" />
                                    <dx:BootstrapListEditItem Value="High School Student" />
                                    <dx:BootstrapListEditItem Value="Law" />
                                    <dx:BootstrapListEditItem Value="Managerial" />
                                    <dx:BootstrapListEditItem Value="Manufacturing" />
                                    <dx:BootstrapListEditItem Value="Medical/Health" />
                                    <dx:BootstrapListEditItem Value="Military" />
                                    <dx:BootstrapListEditItem Value="Non-government Organization" />
                                    <dx:BootstrapListEditItem Value="Other Services" />
                                    <dx:BootstrapListEditItem Value="Professional" />
                                    <dx:BootstrapListEditItem Value="Retail" />
                                    <dx:BootstrapListEditItem Value="Science & Research" />
                                    <dx:BootstrapListEditItem Value="Sports" />
                                    <dx:BootstrapListEditItem Value="Technical" />
                                    <dx:BootstrapListEditItem Value="University Student" />
                                    <dx:BootstrapListEditItem Value="Web Building" />
                                </Items>
                            </dx:BootstrapComboBox>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapMemo ID="NotesMemo" runat="server" NullText="Notes" Rows="4">
                            </dx:BootstrapMemo>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12" HorizontalAlign="Center">
                    <ContentCollection>
                        <dx:ContentControl>
                            <dx:BootstrapButton ID="RegisterButton" runat="server" Text="Register" ValidationGroup="Validation">
                                <CssClasses Control="form-control" />
                                <SettingsBootstrap RenderOption="Primary" />
                            </dx:BootstrapButton>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem ColSpanMd="12" HorizontalAlign="Center">
                    <ContentCollection>
                        <dx:ContentControl>
                            <span class="text-muted">Already have an account?</span><br />
                            <dx:BootstrapButton ID="LoginButton" runat="server" Text="Login" PostBackUrl="?ShowLogin=true">
                                <SettingsBootstrap RenderOption="Link" />
                            </dx:BootstrapButton>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
            </Items>
        </dx:BootstrapFormLayout>
    </div>
</asp:Content>
