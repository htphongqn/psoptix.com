<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blue2UV.aspx.cs" Inherits="psoptix.com.Blue2UV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $("#nav4").addClass('active');
            $("#nav1").removeClass('active');
            $("#nav3").removeClass('active');
            $("#nav5").removeClass('active');
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="body2">
        <div class="main zerogrid">
            <div style="text-align:center;" align="center">
                <img src="images/Blue2UV2.png" />
            </div>
            <h2 class="under">
                Background on blue light & UV
            </h2>
            <article>
                <ul class="list">
                    <li>Blue light ranges from 380-500nm in the visual light spectrum</li>
                    <li>Blue light is from the sun and man made devices such as LED lights, computers, tablets and phones.</li>
                    <li>Beneficial Blue Light (blue-turquoise) ranges from 465-495nm aides sleep and cognitive performance by maintaing body clock if adequate and timely exposure is maintained.</li>
                    <li>So called ‘bad blue light’ that damages retinal and RPE cells range from 415-455nm. They are actually in the violet region.</li>
                    <li>UV-B (286-320nm) causes sunburn and snow blindness when absorbed in the cornea.</li>
                    <li>UV-A (320-400nm) damages the lens.</li>
                    <li>UV-C (<286nm) does not reach earth surface much.</li>
                    <li>Blue and Violet (500 – 381nm) can penetrate macular pigments and reach retina to damage it.</li>
                    <li>Age reduces macular pigments (50% by 60 years) and these lights are a big risk factor for AMD.</li>
                </ul>
            </article>
            <h2 class="under">
                Seeing is believing
            </h2>
            <article>
                <ul class="list">
                    <li>Impact of blue light is real <a class="link1" href="http://www.revoptom.com/continuing_education/tabviewtest/lessonid/109744/">
                        http://www.revoptom.com/continuing_education/tabviewtest/lessonid/109744/ </a></li>
                    <li>Many products on the market claim to have blue light protection.</li>
                    <li>But does it really and at what level?</li>
                </ul>
            </article>
            <h2 class="under">Introducing</h2>
            <article>
                <ul class="list">
                    <li>Blue and UV light meter. Demonstrating blue light & UV transmittance</li>
                </ul>
                <div style="text-align:center" align="center">
                    <img src="images/Blue2UV.jpg" />
                </div>
            </article>
            <h2 class="under">
                Key Features
            </h2>
            <article>
                <ul class="list">
                    <li>2 AAA powered</li>
                    <li>Low power auto sleep– long battery life.</li>
                    <li>7 Light level LED’s for UV (violet color) level indication in standalone mode.</li>
                    <li>7 Light level LED’s for Blue light (blue color) level indication in standalone mode.</li>
                    <li>Can be used stand alone or with a tablet.</li>
                    <li>BLE and Bluetooth data transmission for interface with Apple and Android devices.</li>
                </ul>
            </article>
            <h2 class="under">
                Sensor 1 - Special UV sensor
            </h2>
            <article>
                <img src="images/Sensor1.png" />
                <ul class="list">
                    <li>Special UV sensor only sees light in the UVA-UVB region.</li>
                    <li>Much of UVC does not reach earth surface. Only germ killing artificial light produces UVC and is effective within a a few inches at the most.</li>
                    <li>UVC is not a concern in offices or homes.</li>
                </ul>
            </article>
            <h2 class="under">
                Sensor 2 - Wideband with applied filter
            </h2>
            <article>
                <img src="images/Sensor2.png" />
                <ul class="list">
                    <li>The second sensor is a photodiode with a violet filter applied to see the 415 -455nm  light.</li>
                </ul>
                <img src="images/Sensor2-1.png" />
            </article>
            <h2 class="under">
                Calibration
            </h2>
            <article>
                <ul class="list">
                    <li>Instrument is calibrated for repeatability accuracy.</li>
                    <li>Calibration is referenced to NIST traceable UV and Light level meters.</li>
                    <li>365nm and 420 nm sources and filters generate the references.</li>
                </ul>
                <img src="images/Calibration.png" />
            </article>
            <h2 class="under">
                Demo Photos
            </h2>
            <article><div style="text-align:center;">
                <img src="images/Blue2UV-1.png" height="100" /></div>
                <h3>IPAD UI</h3>
                <div align="center">
                <img src="images/Blue2UV-3.png" />
                <img src="images/Blue2UV-2.png" /></div>
            </article>
        </div>
    </div>
</asp:Content>
