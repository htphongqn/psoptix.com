<%@ Page Title="Blue2UV" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blue2UV.aspx.cs" Inherits="psoptix.com.Blue2UV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $('#menu li').removeClass('active');
            $('#menu #nav4').addClass('active');
        });
	</script>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="body3">
        <div class="main zerogrid productindex" style="margin-top:20px;margin-bottom:20px">
            <div style="text-align:center;padding-top:15px" align="center">
                <img src="images/Blue2UV2.png" />
            </div>
            <h2 class="under">
                <span class="auto-style2">Background on blue light & UV</span>
            </h2>
            <article>
                <ul class="list">
                    <li>Blue light ranges from 380-500nm in the visible light spectrum</li>
                    <li>Blue light is emitted from the sun and man made devices such as LED lights, computers, tablets and phones.</li>
                    <li>Beneficial Blue Light (blue-turquoise) ranges from 465-495nm aides sleep and cognitive performance by maintaing body clock if adequate and timely exposure is maintained.</li>
                    <li>So called ‘bad blue light’ that damages retinal and RPE cells range from 415-455nm. They are actually in the violet region.</li>
                    <li>UV-B (286-320nm) causes sunburn and snow blindness when absorbed in the cornea.</li>
                    <li>UV-A (320-400nm) damages the lens.</li>
                    <li>UV-C (<286nm) does not reach earth surface much. Not a concern in home or office.</li>
                    <li>Blue and Violet (500 – 381nm) can penetrate macular pigments and reach retina to damage it.</li>
                    <li>Age reduces macular pigments (50% by 60 years) and these lights are a big risk factor for AMD.</li>
                </ul>
            </article>
            <h2 class="under">
                <span class="auto-style2">Seeing is believing</span>
            </h2>
            <article>
                <ul class="list">
                    <li id="http://www.revoptom.com/continuing_education/tabviewtest/lessonid/109744/">Impact of Blue light is real: &quot;http://www.revoptom.com/continuing_education/tabviewtest/lessonid/109744/&quot;</li>
                    <li id="http://www.revoptom.com/continuing_education/tabviewtest/lessonid/109744/">Many products on the market claim to have blue light protection, But does it really and at what level?</li>
                    <li>BLUE2UV allows you to assess the protection.</li>
                </ul>
            </article>
            <h2 class="under" style="font-size: xx-large">Introducing</h2>
            <article>
                <ul class="list">
                    <li>Blue and UV light meter. Demonstrating blue light & UV transmittance</li>
                </ul>
                <div style="text-align:center" align="center">
                    <img src="images/Blue2UV_banner.jpg" width="940" />
                </div>
            </article>
            <h2 class="under" style="font-size: xx-large">
                Key Features
            </h2>
            <article>
                <ul class="list">
                    <li>2 AAA powered</li>
                    <li>Low power auto sleep– long battery life.</li>
                    <li>7 Light level LED’s for UV (violet color) level indication in standalone mode.</li>
                    <li>7 Light level LED’s for Blue light (blue color) level indication in standalone mode.</li>
                    <li>Can be used stand alone or with a tablet.</li>
                    <li>Dual sensors design</li>
                    <li>BLE and Bluetooth data transmission for interface with Apple and Android devices.</li>
                </ul>
            </article>
            &nbsp;<h2 class="under">IPAD App</h2>
            <div style="padding-bottom:15px">
                &nbsp;<br />
                <img src="images/Blue2UV-2.png" width="940" />
            </div>
        </div>
        <br />
    </div>
</asp:Content>
