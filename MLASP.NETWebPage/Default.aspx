<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MLASP.NETWebPage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Azure ML Predictive Model Tester - Income Prediction</h1>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Age:</td>
                <td><asp:Textbox ID="txtAge" runat="server" /></td>
            </tr>
            <tr>
                <td>WorkClass</td>
                <td>
                    <asp:DropDownList Id="ddlWorkClass" runat="server">
                        <asp:ListItem Text="Private" Value="Private" />
                        <asp:ListItem Text="State-gov" Value="State-gov" />
                        <asp:ListItem Text="Self-emp-not-inc" Value="Self-emp-not-inc" />
                        <asp:ListItem Text="Federal-gov" Value="Federal-gov" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Fnlwgt</td>
                <td><asp:Textbox ID="txtFnlwgt" runat="server" /></td>
            </tr>
            <tr>
                <td>Education</td>
                <td>
                    <asp:DropDownList ID="ddlEducation" runat="server">
                        <asp:ListItem Text="Doctorate" Value="Doctorate" />
                        <asp:ListItem Text="Masters" Value="Masters" />
                        <asp:ListItem Text="Bachelors" Value="Bachelors" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Education-num</td>
                <td>
                    <asp:Textbox ID="txtEducationNum" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>Marital-Status</td>
                <td>
                    <asp:DropDownList ID="ddlMaritalStatus" runat="server">
                        <asp:ListItem Text="Never-married" Value="Never-married" />
                        <asp:ListItem Text="Married-civ-spouse" Value="Married-civ-spouse" />
                        <asp:ListItem Text="Divorced" Value="Divorced" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Occupation</td>
                <td>
                    <asp:DropDownList ID="ddlOccupation" runat="server">
                        <asp:ListItem Text="Adm-clerical" Value="Adm-clerical" />
                        <asp:ListItem Text="Exec-managerial" Value="Exec-managerial" />
                        <asp:ListItem Text="Handlers-cleaners" Value="Handlers-cleaners" />
                        <asp:ListItem Text="Prof-specialty" Value="Prof-specialty" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Relationship</td>
                <td>
                    <asp:DropDownList ID="ddlRelationship" runat="server">
                        <asp:ListItem Text="Not-in-family" Value="Not-in-family" />
                        <asp:ListItem Text="Husband" Value="Husband" />
                        <asp:ListItem Text="Wife" Value="Wife" />
                        <asp:ListItem Text="Own-child" Value="Own-child" />
                        <asp:ListItem Text="Unmarried" Value="Unmarried" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Race</td>
                <td>
                    <asp:DropDownList ID="ddlRace" runat="server">
                        <asp:ListItem Text="White" Value="White" />
                        <asp:ListItem Text="Black" Value="Black" />
                        <asp:ListItem Text="Asian-Pac-Islander" Value="Asian-Pac-Islander" />
                        <asp:ListItem Text="Amer-Indian-Eskimo" Value="Amer-Indian-Eskimo" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Sex</td>
                <td>
                    <asp:DropDownList ID="ddlSex" runat="server">
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" Value="Female" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Capital-gain</td>
                <td><asp:Textbox ID="txtCapitalGain" runat="server" /></td>
            </tr>
            <tr>
                <td>Capital-loss</td>
                <td><asp:Textbox ID="txtCapitalLoss" runat="server" /></td>
            </tr>
            <tr>
                <td>Hours-per-week</td>
                <td><asp:Textbox ID="txtHoursPerWeek" runat="server" /></td>
            </tr>
            <tr>
                <td>Native-country</td>
                <td>
                    <asp:DropDownList ID="ddlNativeCountry" runat="server">
                        <asp:ListItem Text="United-States" Value="United-States" />
                        <asp:ListItem Text="Cuba" Value="Cuba" />
                        <asp:ListItem Text="Jamaica" Value="Jamaica" />
                        <asp:ListItem Text="India" Value="India" />
                        <asp:ListItem Text="Mexico" Value="Mexico" />
                        <asp:ListItem Text="China" Value="China" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnSubmit" runat="server" Text="Make Prediction" OnClick="Submit" /></td>
            </tr>
        </table>
    </div>
    <br/>
    <asp:Label ID="lblResult" runat="server" /><br/><br/>
    <asp:Label ID="lblRawResult" runat="server" />
    </form>
</body>
</html>
