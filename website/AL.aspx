<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="AL.aspx.cs" Inherits="website.AL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <html>
  <head>
  <meta http-equiv="content-type" content="text/html; charset=windows-1251">
  <title>Амбулаторен лист</title>
	<style type="text/css">
	/* <общи> */
		body {
			text-align: center;
			margin-top: 0mm;
			padding-top: 0;
		}
	    .main{
	        width: 190mm;
		    margin-left: auto;
		    margin-right: auto;
		    text-align: left;
		    overflow: hidden;
		    font-family: Arial;
		}
		.container{
	        border: 1px solid #808080;
	        width: 186mm;
	        clear: both;
	        margin-bottom: 1px;
	        overflow: hidden;
	        padding: 1mm;
		}
		.half{
		    float: left;
		    width: 89mm;
		    border: 1px solid #808080;
			height: 40mm;
			padding: 1mm;
			margin-left: 1px;
		}
		.split1{
		    float: left;
		    width: 95mm;
		    border: 1px solid #808080;
			padding: 1mm;
			margin-left: 1px;
			height: 198mm;
		}
		.split2{
		    float: left;
		    width: 85mm;
			margin-left: 1mm;
			height: 200.25mm;
			border-bottom: 1px solid #808080;
		    border-right: 1px solid #808080;
		    border-left: 1px solid #808080;
		}
		.split1 div, .split2 div{
		    font-size: 3.5mm;
		}
		.split1 div, .split2 div{
		    font-size: 3mm;
		}

		h1{
		 	font-size: 3mm;
		 	font-weight: bold;
		 	text-align: center;
		 	margin: 0;
		 	padding: 0;
		}
	    .row{
	        width: 100%;
	        clear: both;
		}
		.separate{
		    border-top: 1px solid #808080;
		    padding: 1px;
		    overflow: hidden;
		    width: 100%;
		}
		div.boxes{
		    float: right;
		    margin-right: 2px;
		}
		.box{
		    border: 1px solid #808080;
		    font-size: 3mm;
		    width: 3.4mm;
		    float: left;
		    height: 3.5mm;
		    text-align: center;
		    margin: 1px 1px 0 0;
		}
		.sbox{
		    border: 1px solid #808080;
		    font-size: 2.5mm;
		    width: 3mm;
		    float: left;
		    height: 3mm;
		    text-align: center;
		    margin: 1px 1px 0 0;
		}
		.dot{
		    float: left;
		    width: 0.5mm;
		    font-size: 3.2mm;
		    font-weight: bold;
		    line-height: 3mm;
		    height: 3mm;
		    margin: 0 1px;
		}
		.legend{
		    font-size: 2mm;
		    color: #808080;
		}
		.divider{
		    margin-top: 1mm;
		}
		.right{
			    text-align: right;
			    float: right;
			    margin-right: 2px;
		}
		.left{
			    text-align: left;
			    float: left;
			    margin-left: 2px;
		}
		.textUnder{
		    float: left;
		    border-bottom: 1px dashed #808080;
		    line-height: 3.5mm;
		    height: 3.5mm;
		    font-size: 3mm;
		    margin-left: 1mm;
		}
	/* </общи> */
	/* overflow: hidden - ako teksta e po-golqm , za da ne se uveli4i ramkata i da se s4upi 6ablona , 4asta koqto izliza 6te se sktrie */
	/* float: left - oblastta nalqvo*/
	/*
		<По редове />
		Начин на именуване на стиловете - от тип wxyz
		където:
		 - w е "t" или "l" за текст или за легенда
		 - x е номера на секцията
		 - y e номера на реда
		 - z е номера на текста в реда

	*/
	/* <заглавна част>
			<първа половина>
	*/
		.t0h111{
		    font-size: 3.2mm;
		    font-weight: bold;
		    float: left;
		    margin: 1px;
		    width: 10mm;
		}
		.l0h121{
		    float: left;
		    width: 28mm;
		}
		.l0h131{
		    float: left;
		    width: 6mm;
		}
		.t0h141{
		    float: left;
		    font-size: 3mm;
		    width: 5mm;
		}
		.t0h142{
		    float: left;
		    font-size: 3mm;
		    width: 8mm;
		    padding-left: 1mm;
		}
		.t0h143{
		    float: left;
		    font-size: 3mm;
		    padding-right: 1mm;
		}
		.t0h161{
		    text-align: center;
		    width: 100%;
		    float: left;
		}
		.t0h181{
			float: left;
			font-size: 3mm;
			width: 18.5mm;
		}
		.t0h182{
			float: left;
			font-size: 3mm;
			width: 63.5mm;
			margin-right: 1mm;
		}
		.t0h191{
			float: left;
			font-size: 3mm;
			padding-right: 1mm;
		}
		.t0h192{
			float: left;
			font-size: 3mm;
			width: 64mm;
		}
		.t0h193{
			float: left;
			font-size: 3mm;
			padding: 0 1mm;
		}
		.t0h194{
			float: left;
			font-size: 3mm;
			width: 11mm;
		}
		.t0h1101{
			float: left;
			font-size: 3mm;
			padding-right: 1mm;
		}
		.t0h1102{
			float: left;
			font-size: 3mm;
			width: 19mm;
		}
		.t0h1103{
			float: left;
			font-size: 3mm;
			padding: 0 1mm;
		}
		.t0h1104{
			float: left;
			font-size: 3mm;
			width: 8mm;
		}
 	/*
 	    </първа половина>
 	    <втора половина>
	 */
		.t0h211{
		    font-size: 3.2mm;
		    font-weight: bold;
		    float: left;
		    margin: 1px;
		    width: 10mm;
		}
		.l0h271{
		    float: left;
		    width: 12mm;
		    font-size: 2.5mm;
		}
		.l0h272{
		    float: left;
		    font-size: 2.5mm;
		    line-height: 4mm;
		    width: 10mm;
			padding-left: 1mm;
		}
		.l0h273{
		    float: left;
		    font-size: 2.5mm;
		    line-height: 4mm;
		    padding-left: 1mm;
		}
		.lh2121{
		    float: left;
		    margin-left: 43mm;
		}
		.t0h281{
		    float: left;
		    width: 78mm;
		}
		.l0h291{
		    float: right;
		    text-align: center;
		    width: 70mm;
		}
	/*
		</втора половина>
	 </заглавна част>

	<амбулаторен лист>
	  */

	.t111{
	    font-size: 4mm;
	    float: left;
	    font-weight: bold;
	    letter-spacing: 1mm;
	    margin: 0 5mm 0 1mm;
	}
	.t112{
	    font-size: 4mm;
	    float: left;
	    font-weight: bold;
	    margin: 0 5mm;
	}
	.t113{
		margin: 0 3mm 0 3mm;
	    font-size: 4mm;
	    float: left;
	    font-weight: bold;
	}
	/*
	</амбулаторен лист>
	<специалист>
	*/

	.t211{
	    font-size: 3mm;
	    float: left;
	    font-weight: bold;
	}
	.t221{
	    font-size: 3mm;
	    float: left;
	}
	.t222{
	    font-size: 3mm;
	    float: left;
	    margin: 0 1mm 0 3mm;
	}
	.t231{
	    font-size: 3mm;
	    float: left;
	    margin-right: 1mm;
	}
	.t232{
	    font-size: 3mm;
	    float: left;
	    width: 5mm;
	}

	.l241{
	    float: left;
	    margin-left: 15mm;
	}
	.l242{
	    float: left;
	    margin-left: 4mm;
	}
	.l243{
	    float: left;
	    margin-left: 32mm;
	}

	.t251{
	    font-size: 3mm;
	    float: left;
	}
	.t252{
	    font-size: 3mm;
	    float: left;
	    margin-right: 1mm;
	}
	/*
	</специалист>
	<тяло>
	    <сплит 1>
	*/
		.s111{
		    text-align: center;
		    font-weight: bold;
		}
		.s121{
			float: left;
			margin-left: 1mm;
			font-weight: bold;
		}
		.s131{
			float: left;
			margin-left: 1mm;
			font-weight: bold;
		}
		.s141{
			float: left;
			width: 5mm;
		}
		.s142{
			float: left;
			margin-left: 1mm;
		}
		.s1131{
			float: left;
			width: 13mm;
		}
		.s1161{
			float: left;
			font-weight: bold;
		}
		.s1162{
			float: left;
			margin-left: 1mm;
		}
		.s1181{
		    float: left;
		    padding-left: 1mm;
		    width: 84mm;
		}
		.s1391{
			float: left;
			width: 12mm;
			text-align: center;
			margin: 0 1mm;
		}
		.s1461{
			float: left;
			width: 34mm;
			margin: 0 1mm;
		}
		.s2711{
			font-weight: bold;
		}
		.s2712{
			float: left;
			width: 98%;
			height: 23mm;
			padding: 1px;
			overflow: hidden;
			font-size: 2.20mm;
		}
		.s2211{
		    width: 57mm;
		    float: left;
		    font-size: 2mm;
		}
		.line{
		    line-height: 4mm;
		    width: 10mm;
			padding-left: 1mm;
		}
         .auto-style6 {
            z-index: 101;
            left: 321px;
            position: absolute;
            top: 182px;
            width: 281px;
            height: 35px;
        }
	/*
	    </сплит 1>
	*/
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Амбулаторен лист" Font-Names="Modern" Font-Size="24pt" ForeColor="Red" CssClass="auto-style6"></asp:Label>
</head>
<body>
   <div class="main">
   <div class="container">
    <div class="half">
	<div class="row">
	       <span class="t0h111">Пациент</span>
	            <div class="boxes">
	            <span class="box"><!--e1--></span>
	            <span class="box"><!--e2--></span>
	            <span class="box"><!--e3--></span>
	            <span class="box"><!--e4--></span>
	            <span class="box"><!--e5--></span>
	            <span class="box"><!--e6--></span>
	            <span class="box"><!--e7--></span>
	            <span class="box"><!--e8--></span>
	            <span class="box"><!--e9--></span>
	            <span class="box"><!--e10--></span>
	            <span class="dot">&nbsp;</span>
	            <span class="box"><!--e11--></span>
	            <span class="box"><!--e12--></span>
	            <span class="dot">&nbsp;</span>
	            <span class="box"><!--e13--></span>
	            <span class="box"><!--e14--></span>
			</div>
				</div>
				<div class="row">
					<span class="legend l0h121">&nbsp;</span>
			<span class="legend left">ЕГН(ЛНЧ) на пациента</span>
			 <span class="legend right">РЗОК № здравен район</span>
				</div>
				<div class="row">
					<div class="boxes">
	            	    <span class="box"><!--e15--></span>
	            	    <span class="box"><!--e16--></span>
	            	    <span class="box"><!--e17--></span>
	            	    <span class="box"><!--e18--></span>
	            	    <span class="box"><!--e19--></span>
	            	    <span class="box"><!--e20--></span>
	            	    <span class="box"><!--e21--></span>
	            	    <span class="box"><!--e22--></span>
	            	    <span class="box"><!--e23--></span>
	            	    <span class="box"><!--e24--></span>
	            	    <span class="box"><!--e25--></span>
	            	    <span class="box"><!--e26--></span>
	            	    <span class="box"><!--e27--></span>
	            	    <span class="box"><!--e28--></span>
	            	    <span class="box"><!--e29--></span>
	            	    <span class="box"><!--e30--></span>
	            	    <span class="box"><!--e31--></span>
	            	    <span class="box"><!--e32--></span>
	            	    <span class="box"><!--e33--></span>
	            	    <span class="box"><!--e34--></span>
					</div>
				</div>
				<div class="row">
			<span class="legend l0h131">&nbsp;</span>
			<span class="legend left">Идентификационен номер</span>
				</div>
				<div class="row">
					<span class="t0h141">&nbsp;</span>
				    <span class="sbox"><!--e35--></span>
					<span class="t0h142">ЛНЧ</span>
					<span class="t0h143">дата на раждане</span>
            	    <span class="sbox"><!--e36--></span>
            	    <span class="sbox"><!--e37--></span>
            	    <span class="dot">.</span>
            	    <span class="sbox"><!--e38--></span>
            	    <span class="sbox"><!--e39--></span>
            	    <span class="dot">.</span>
            	    <span class="sbox"><!--e40--></span>
            	    <span class="sbox"><!--e41--></span>
            	    <span class="sbox"><!--e42--></span>
            	    <span class="sbox"><!--e43--></span>
					<div class="boxes">
	            	    <span class="box"><!--e44--></span>
	            	    <span class="box"><!--e45--></span>
					</div>
				</div>
				<div class="row">
				    <span class="legend right">Код на държава</span>
				</div>
				<div class="row">
				<span class="textUnder t0h161"><!--e46--></span>
				</div>
				<div class="row">
<span class="legend t0h161">име, презиме и фамилия по лична карта</span>
				</div>
				<div class="row">
					<span class="t0h181">Адрес: гр.(с.)</span>
				<span class="textUnder t0h182"><!--e47--></span>
					<span class="sbox"><!--e48--></span>
				</div>
				<div class="row">
				<span class="legend right">неблаг.условия</span>
				</div>
				<div class="row">
				    <span class="t0h191">Ул.</span>
				    <span class="t0h192 textUnder"><!--e49--></span>
				    <span class="t0h193">№</span>
				    <span class="t0h194 textUnder"><!--e50--></span>
				</div>
				<div class="row">
				    <span class="t0h1101">Ж.к.</span>
				   <span class="t0h1102 textUnder"><!--e51--></span>
				    <span class="t0h1103">бл.</span>
				   <span class="t0h1104 textUnder"><!--e52--></span>
				    <span class="t0h1103">вх.</span>
				   <span class="t0h1104 textUnder"><!--e53--></span>
				    <span class="t0h1103">ет.</span>
				   <span class="t0h1104 textUnder"><!--e54--></span>
				    <span class="t0h1103">ап.</span>
				   <span class="t0h1104 textUnder"><!--e55--></span>
				</div>
			</div>
	        <div class="half">
	            <div class="row">
	                <span class="t0h211">Лекар</span>
	                <div class="boxes">
	            	    <span class="box"><!--l1--></span>
	            	    <span class="box"><!--l2--></span>
	            	    <span class="box"><!--l3--></span>
	            	    <span class="box"><!--l4--></span>
	            	    <span class="box"><!--l5--></span>
	            	    <span class="box"><!--l6--></span>
	            	    <span class="box"><!--l7--></span>
	            	    <span class="box"><!--l8--></span>
	            	    <span class="box"><!--l9--></span>
	            	    <span class="box"><!--l10--></span>
					</div>
				</div>
				<div class="row">
<span class="legend lh2121">Регистрационен номер на лечебното заведение</span>
				</div>
	            <div class="row">
	                <div class="boxes">
	            	    <span class="box"><!--l11--></span>
	            	    <span class="box"><!--l12--></span>
	            	    <span class="box"><!--l13--></span>
	            	    <span class="box"><!--l14--></span>
	            	    <span class="box"><!--l15--></span>
	            	    <span class="box"><!--l16--></span>
	            	    <span class="box"><!--l17--></span>
	            	    <span class="box"><!--l18--></span>
	            	    <span class="box"><!--l19--></span>
	            	    <span class="box"><!--l20--></span>
					</div>
				</div>
				<div class="row">
				    <span class="legend lh2121">УИН на лекаря</span>
				</div>
	            <div class="row">
	                <div class="boxes">
	            	    <span class="box"><!--l21--></span>
	            	    <span class="box"><!--l22--></span>
	            	    <span class="box"><!--l23--></span>
	            	    <span class="box"><!--l24--></span>
	            	    <span class="box"><!--l25--></span>
	            	    <span class="box"><!--l26--></span>
	            	    <span class="box"><!--l27--></span>
	            	    <span class="box"><!--l28--></span>
	            	    <span class="box"><!--l29--></span>
	            	    <span class="box"><!--l30--></span>
					</div>
				</div>
				<div class="row">
	<span class="legend lh2121">УИН на заместващия/нает лекар</span>
				</div>
				<div class="row">
					<span class="l0h271">&nbsp;</span>
				    <span class="box"><!--l31--></span>
				    <span class="l0h272">нает</span>
				    <span class="box"><!--l32--></span>
				    <span class="l0h273">заместващ</span>
				</div>
				<div class="row">
					<span class="lh2121">&nbsp;</span>
				</div>
				<div class="row">
					<span class="box"><!--l33--></span>
					<span class="box"><!--l34--></span>
				<span class="textUnder t0h281"><!--l35--></span>
				</div>
				<div class="row">
				    <span class="legend left">код специалност</span>
				    <span class="legend l0h291">име и фамилия</span>
				</div>
			</div>
			</div>
			<div class="container">
				<div class="row">
				    <span class="t111">АМБУЛАТОРЕН ЛИСТ №</span>
					<span class="box"><!--al1--></span>
					<span class="box"><!--al2--></span>
					<span class="box"><!--al3--></span>
					<span class="box"><!--al4--></span>
					<span class="box"><!--al5--></span>
					<span class="box"><!--al6--></span>
					<span class="t112">дата</span>
					<span class="box"><!--al7--></span>
					<span class="box"><!--al8--></span>
					<span class="dot">&nbsp;</span>
					<span class="box"><!--al9--></span>
					<span class="box"><!--al10--></span>
					<span class="dot">&nbsp;</span>
					<span class="box"><!--al11--></span>
					<span class="box"><!--al12--></span>
					<span class="box"><!--al13--></span>
					<span class="box"><!--al14--></span>
					<span class="t113">час</span>
					<span class="box"><!--al15--></span>
					<span class="box"><!--al16--></span>
					<span class="dot">&nbsp;</span>
					<span class="box"><!--al17--></span>
					<span class="box"><!--al18--></span>
				</div>
			</div>
			<div class="container">
				<div class="row">
			<span class="t211">ПОПЪЛВА СЕ ОТ ЛЕКАР СПЕЦИАЛИСТ</span>
				</div>
				<div class="row">
	<span class="t221">КЪМ НАПРАВЛЕНИЕ (бл. 3, бл. 3А, бл. 6)</span>
				    <div class="boxes">
					    <span class="t222">вид бл.</span>
					    <span class="box"><!--al19--></span>
					    <span class="box"><!--al191--></span>
					    <span class="t222">No.</span>
					    <span class="box"><!--al20--></span>
					    <span class="box"><!--al21--></span>
					    <span class="box"><!--al22--></span>
					    <span class="box"><!--al23--></span>
					    <span class="box"><!--al24--></span>
					    <span class="box"><!--al25--></span>
	     				<span class="t222">тип</span>
						<span class="box"><!--al26--></span>
						<span class="box"><!--al27--></span>
						<span class="t222">от дата</span>
						<span class="box"><!--al28--></span>
						<span class="box"><!--al29--></span>
						<span class="dot"></span>
						<span class="box"><!--al30--></span>
						<span class="box"><!--al31--></span>
						<span class="dot"></span>
						<span class="box"><!--al32--></span>
						<span class="box"><!--al33--></span>
						<span class="box"><!--al34--></span>
						<span class="box"><!--al35--></span>
					</div>
				</div>
				<div class="row">
					<div class="boxes">
						<span class="t231">от</span>
						<span class="box"><!--al36--></span>
						<span class="box"><!--al37--></span>
						<span class="box"><!--al38--></span>
						<span class="box"><!--al39--></span>
						<span class="box"><!--al40--></span>
						<span class="box"><!--al41--></span>
						<span class="box"><!--al42--></span>
						<span class="box"><!--al43--></span>
						<span class="box"><!--al44--></span>
						<span class="box"><!--al45--></span>
						<span class="t232">&nbsp;</span>
						<span class="box"><!--al46--></span>
						<span class="box"><!--al47--></span>
						<span class="box"><!--al48--></span>
						<span class="box"><!--al49--></span>
						<span class="box"><!--al50--></span>
						<span class="box"><!--al51--></span>
						<span class="box"><!--al52--></span>
						<span class="box"><!--al53--></span>
						<span class="box"><!--al54--></span>
						<span class="box"><!--al55--></span>
						<span class="t232">&nbsp;</span>
						<span class="box"><!--al56--></span>
						<span class="box"><!--al57--></span>
						<span class="t232">&nbsp;</span>
						<span class="box"><!--al58--></span>
						<span class="t232">&nbsp;</span>
						<span class="box"><!--al59--></span>
						<span class="t232">&nbsp;</span>
						<span class="box"><!--al60--></span>
						<span class="box"><!--al61--></span>
						<span class="box"><!--al62--></span>
						<span class="box"><!--al63--></span>
						<span class="box"><!--al64--></span>
						<span class="box"><!--al65--></span>
						<span class="box"><!--al66--></span>
						<span class="box"><!--al67--></span>
						<span class="box"><!--al68--></span>
						<span class="box"><!--al69--></span>
					</div>
				</div>
				<div class="row">
<span class="legend l241">регистрационен номер на лечебното заведение</span>
					<span class="legend l242">УИН на лекаря</span>
					<span class="legend l243">код спец.</span>
<span class="legend l242">заместващ/нает</span>
<span class="legend l242">УИН на заместващия/нает лекар</span>
				</div>
				<div class="row">
<span class="t251">АМБУЛАТОРЕН ЛИСТ ОТ ПЪРВИЧНО ПОСЕЩЕНИЕ ПРИ СИМП</span>
					<div class="boxes">
						<span class="t252">No.</span>
						<span class="box"><!--al70--></span>
						<span class="box"><!--al71--></span>
						<span class="box"><!--al72--></span>
						<span class="box"><!--al73--></span>
						<span class="box"><!--al74--></span>
						<span class="box"><!--al75--></span>
						<span class="t252">дата</span>
						<span class="box"><!--al76--></span>
						<span class="box"><!--al77--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--al78--></span>
						<span class="box"><!--al79--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--al80--></span>
						<span class="box"><!--al81--></span>
						<span class="box"><!--al82--></span>
						<span class="box"><!--al83--></span>
					</div>
				</div>
			</div>
			<div class="container">
			    <div class="split1">
					<div class="row">
						<div class="s111">Посещение за:</div>
					</div>
					<div class="row">
						<span class="sbox"><!--p1--></span>
						<span class="s121">консултация</span>
					</div>
					<div class="row">
						<span class="sbox"><!--p2--></span>
						<span class="s121">профилактика</span>
					</div>
					
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p3--></span>
				<span class="s142">детско здравеопазване</span>
					</div>
					
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p4--></span>
				<span class="s142">майчино здравеопазване</span>
						<span class="s141">&nbsp;</span>
						<span class="s142">г.с.:</span>
						<span class="sbox"><!--p5--></span>
						<span class="sbox"><!--p6--></span>
					</div>
					
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p7--></span>
						<span class="s142">ЗЗОЛ над 18 г.</span>
						<span class="s141">&nbsp;</span>
						<span class="s142">рискова група</span>
						<span class="sbox"><!--p8--></span>
					</div>
					
					<div class="row">
						<span class="sbox"><!--p9--></span>
					<span class="s121">диспансерен преглед</span>
					 </div>

					<div class="row">
						<span class="sbox"><!--p10--></span>
						<span class="s121">ВСД</span>
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p11--></span>
						<span class="s142">болнична</span>
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p12--></span>
						<span class="s142">извънболнична</span>
					</div>
					
					<div class="row">
						<span class="sbox"><!--p13--></span>
			<span class="s121">рецепта на хоспитализирано ЗЗОЛ</span>
					</div>
					<div class="row">
						<span class="sbox"><!--p14--></span>
		<span class="s121">експертиза на работоспособността</span>
					</div>
					<div class="row">
						<span class="sbox"><!--p15--></span>
					<span class="s121">по искане на ТЕЛК</span>
					</div>
					<div class="row">
						<div class="s111">Вид преглед</div>
     				</div>
					<div class="row">
						<span class="sbox"><!--p16--></span>
						<span class="s121">амбулаторен</span>
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p17--></span>
						<span class="s121">домашен</span>
					</div>
					
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p18--></span>
						<span class="s142">първичен</span>
						<span class="s1131">&nbsp;</span>
						<span class="sbox"><!--p19--></span>
						<span class="s142">първичен</span>
					</div>
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="sbox"><!--p20--></span>
						<span class="s142">вторичен</span>
						<span class="s1131">&nbsp;</span>
						<span class="sbox"><!--p21--></span>
						<span class="s142">вторичен</span>
					</div>
					
					
					<div class="row">
						<span class="s1161">Имунизации</span>
						<div class="boxes">
					<span class="s1162">код</span>
					<span class="box"><!--p22--></span>
					<span class="box"><!--p23--></span>
					<span class="s1162">код</span>
					<span class="box"><!--p24--></span>
					<span class="box"><!--p25--></span>
					<span class="s1162">код</span>
					<span class="box"><!--p26--></span>
					<span class="box"><!--p27--></span>
					<span class="s1162">проба Манту</span>
					<span class="box"><!--p28--></span>
					<span class="box"><!--p29--></span>
						</div>
					</div>
					<div class="row">
					<div class="s111">Издадени документи</div>
					</div>
					
					<div class="row">
						<span class="box"><!--izd1--></span>
<span class="s1181">медицински направления за консултация или за провеждане на съвместно лечение</span>
					</div>

					<div class="row">
					<span class="s142">код специалност</span>
						<span class="s141">&nbsp;</span>
						<span class="s142">напр. No.</span>
						<span class="s141">&nbsp;</span>
					<span class="s142">код специалност</span>
						<span class="s142">напр. No.</span>
					</div>
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="box"><!--izd2--></span>
						<span class="box"><!--izd3--></span>
					    <div class="boxes">
					<span class="s141">&nbsp;</span>
					<span class="box"><!--izd4--></span>
					<span class="box"><!--izd5--></span>
					<span class="box"><!--izd6--></span>
					<span class="box"><!--izd7--></span>
					<span class="box"><!--izd8--></span>
					<span class="box"><!--izd9--></span>
					<span class="s141">&nbsp;</span>
					<span class="box"><!--izd10--></span>
					<span class="box"><!--izd11--></span>
					<span class="s141">&nbsp;</span>
					<span class="box"><!--izd12--></span>
					<span class="box"><!--izd13--></span>
					<span class="box"><!--izd14--></span>
					<span class="box"><!--izd15--></span>
					<span class="box"><!--izd16--></span>
					<span class="box"><!--izd17--></span>
						</div>
					</div>
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="box"><!--izd18--></span>
						<span class="box"><!--izd19--></span>
						<div class="boxes">
				<span class="s141">&nbsp;</span>
					<span class="box"><!--izd20--></span>
					<span class="box"><!--izd21--></span>
					<span class="box"><!--izd22--></span>
					<span class="box"><!--izd23--></span>
					<span class="box"><!--izd24--></span>
					<span class="box"><!--izd25--></span>
					<span class="s141">&nbsp;</span>
					<span class="box"><!--izd26--></span>
					<span class="box"><!--izd27--></span>
					<span class="s141">&nbsp;</span>
					<span class="box"><!--izd28--></span>
					<span class="box"><!--izd29--></span>
					<span class="box"><!--izd30--></span>
					<span class="box"><!--izd31--></span>
					<span class="box"><!--izd32--></span>
					<span class="box"><!--izd33--></span>
						</div>
					</div>
					<div class="row">
						<span class="sbox"><!--izd34--></span>
<span class="s121">медицински направления за ВСД и назначени ВСД</span>
					</div>
					<div class="row">
					<span class="s142">код специалност</span>
						<span class="s141">&nbsp;</span>
						<span class="s142">напр. No.</span>
						<span class="s1131">&nbsp;</span>
						<span class="s142">код ВСД</span>
					</div>
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="box"><!--izd35--></span>
						<span class="box"><!--izd36--></span>
						<span class="s1131">&nbsp;</span>
						<span class="box"><!--izd37--></span>
						<span class="box"><!--izd38--></span>
						<span class="box"><!--izd39--></span>
						<span class="box"><!--izd40--></span>
						<span class="box"><!--izd41--></span>
						<span class="box"><!--izd42--></span>
						<span class="s141">&nbsp;</span>
						<span class="box"><!--izd43--></span>
						<span class="box"><!--izd44--></span>
						<span class="dot">.</span>
						<span class="box"><!--izd45--></span>
						<span class="box"><!--izd46--></span>
					</div>
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="box"><!--izd47--></span>
						<span class="box"><!--izd48--></span>
						<span class="s1131">&nbsp;</span>
						<span class="box"><!--izd49--></span>
						<span class="box"><!--izd50--></span>
						<span class="box"><!--izd51--></span>
						<span class="box"><!--izd52--></span>
						<span class="box"><!--izd53--></span>
						<span class="box"><!--izd54--></span>
						<span class="s141">&nbsp;</span>
						<span class="box"><!--izd55--></span>
						<span class="box"><!--izd56--></span>
						<span class="dot">.</span>
						<span class="box"><!--izd57--></span>
						<span class="box"><!--izd58--></span>
					</div>
					<div class="row">
						<span class="box"><!--mdd1--></span>
					<span class="s121">направления за МДД</span>
					</div>

					<div class="row">
					<span class="s142">Направление No.</span>
						<span class="s1131">&nbsp;</span>
			<span class="s142">Кодове на назначени изследвания</span>
					</div>
					
					<div class="row">
						<span class="box"><!--mdd2--></span>
						<span class="box"><!--mdd3--></span>
						<span class="box"><!--mdd4--></span>
						<span class="box"><!--mdd5--></span>
						<span class="box"><!--mdd6--></span>
						<span class="box"><!--mdd7--></span>
						<div class="boxes">
						<span class="box"><!--mdd8--></span>
						<span class="box"><!--mdd9--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd10--></span>
						<span class="box"><!--mdd11--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd12--></span>
						<span class="box"><!--mdd13--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd14--></span>
						<span class="box"><!--mdd15--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd16--></span>
						<span class="box"><!--mdd17--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd18--></span>
						<span class="box"><!--mdd19--></span>
						</div>
					</div>
					<div class="row">
						<div class="boxes">
						<span class="box"><!--mdd20--></span>
						<span class="box"><!--mdd21--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd22--></span>
						<span class="box"><!--mdd23--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd24--></span>
							<span class="box"><!--mdd25--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd26--></span>
						<span class="box"><!--mdd27--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd28--></span>
						<span class="box"><!--mdd29--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd30--></span>
						<span class="box"><!--mdd31--></span>
						</div>
					</div>
					<div class="row">
						<span class="box"><!--mdd32--></span>
						<span class="box"><!--mdd33--></span>
						<span class="box"><!--mdd34--></span>
						<span class="box"><!--mdd35--></span>
						<span class="box"><!--mdd36--></span>
						<span class="box"><!--mdd37--></span>
						<div class="boxes">
						<span class="box"><!--mdd38--></span>
						<span class="box"><!--mdd39--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd40--></span>
						<span class="box"><!--mdd41--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd42--></span>
						<span class="box"><!--mdd43--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd44--></span>
						<span class="box"><!--mdd45--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd46--></span>
						<span class="box"><!--mdd47--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd48--></span>
						<span class="box"><!--mdd49--></span>
						</div>
					</div>
					<div class="row">
						<div class="boxes">
						<span class="box"><!--mdd50--></span>
						<span class="box"><!--mdd51--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd52--></span>
						<span class="box"><!--mdd53--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd54--></span>
						<span class="box"><!--mdd55--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd56--></span>
						<span class="box"><!--mdd57--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd58--></span>
						<span class="box"><!--mdd59--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd60--></span>
						<span class="box"><!--mdd61--></span>
						</div>
					</div>
					<div class="row">
						<span class="box"><!--mdd62--></span>
						<span class="box"><!--mdd63--></span>
						<span class="box"><!--mdd64--></span>
						<span class="box"><!--mdd65--></span>
						<span class="box"><!--mdd66--></span>
						<span class="box"><!--mdd67--></span>
						<div class="boxes">
						<span class="box"><!--mdd68--></span>
						<span class="box"><!--mdd69--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd70--></span>
						<span class="box"><!--mdd71--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd72--></span>
						<span class="box"><!--mdd73--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd74--></span>
						<span class="box"><!--mdd75--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd76--></span>
						<span class="box"><!--mdd77--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd78--></span>
						<span class="box"><!--mdd79--></span>
						</div>
					</div>
					<div class="row">
						<div class="boxes">
						<span class="box"><!--mdd80--></span>
						<span class="box"><!--mdd81--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd82--></span>
						<span class="box"><!--mdd83--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd84--></span>
						<span class="box"><!--mdd85--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd86--></span>
						<span class="box"><!--mdd87--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd88--></span>
						<span class="box"><!--mdd89--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd90--></span>
						<span class="box"><!--mdd91--></span>
						</div>
					</div>
					<div class="row">
						<span class="box"><!--mdd92--></span>
						<span class="box"><!--mdd93--></span>
						<span class="box"><!--mdd94--></span>
						<span class="box"><!--mdd95--></span>
						<span class="box"><!--mdd96--></span>
						<span class="box"><!--mdd97--></span>
						<div class="boxes">
						<span class="box"><!--mdd98--></span>
						<span class="box"><!--mdd99--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd100--></span>
						<span class="box"><!--mdd101--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd102--></span>
						<span class="box"><!--mdd103--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd104--></span>
						<span class="box"><!--mdd105--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd106--></span>
						<span class="box"><!--mdd107--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd108--></span>
						<span class="box"><!--mdd109--></span>
						</div>
					</div>
					<div class="row">
						<div class="boxes">
						<span class="box"><!--mdd110--></span>
						<span class="box"><!--mdd111--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd112--></span>
						<span class="box"><!--mdd113--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd114--></span>
						<span class="box"><!--mdd115--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd116--></span>
						<span class="box"><!--mdd117--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd118--></span>
						<span class="box"><!--mdd119--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd120--></span>
						<span class="box"><!--mdd121--></span>
						</div>
					</div>
					<div class="row">
						<span class="box"><!--mdd122--></span>
						<span class="box"><!--mdd123--></span>
						<span class="box"><!--mdd124--></span>
						<span class="box"><!--mdd125--></span>
						<span class="box"><!--mdd126--></span>
						<span class="box"><!--mdd127--></span>
						<div class="boxes">
						<span class="box"><!--mdd128--></span>
						<span class="box"><!--mdd129--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd130--></span>
						<span class="box"><!--mdd131--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd132--></span>
						<span class="box"><!--mdd133--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd134--></span>
						<span class="box"><!--mdd135--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd136--></span>
						<span class="box"><!--mdd137--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd138--></span>
						<span class="box"><!--mdd139--></span>
						</div>
					</div>
					<div class="row">
						<div class="boxes">
						<span class="box"><!--mdd140--></span>
						<span class="box"><!--mdd141--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd142--></span>
						<span class="box"><!--mdd143--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd144--></span>
						<span class="box"><!--mdd145--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd146--></span>
						<span class="box"><!--mdd147--></span>
						<span class="dot">&nbsp;</span>
						<span class="box"><!--mdd148--></span>
						<span class="box"><!--mdd149--></span>
						<span class="dot">.</span>
						<span class="box"><!--mdd150--></span>
						<span class="box"><!--mdd151--></span>
						</div>
					</div>
					<div class="row">
						<span class="line">&nbsp;</span>
					</div>
					<div class="row">
						<span class="sbox"><!--me1--></span>
					<span class="s121">талон за МЕ No.</span>
						<span class="s141">&nbsp;</span>
						<span class="box"><!--me2--></span>
						<span class="box"><!--me3--></span>
						<span class="box"><!--me4--></span>
						<span class="box"><!--me5--></span>
						<span class="box"><!--me6--></span>
						<span class="box"><!--me7--></span>
					</div>
					
					<div class="row">
						<span class="sbox"><!--me8--></span>
				<span class="s121">направл. за хоспитализация</span>
				<span class="textUnder s1391"><!--me9--></span>
						<div class="boxes">
						<span class="sbox"><!--me10--></span>
						<span class="s121">талон за ТЕЛК</span>
						</div>
					</div>
					<div class="row">
						<span class="sbox"><!--me11--></span>
						<span class="s121">болничен лист</span>
						<span class="s142">No.</span>
				<span class="textUnder s1391"><!--me12--></span>
						<span class="box"><!--me13--></span>
						<span class="box"><!--me14--></span>
						<span class="s142">дни</span>
						<div class="boxes">
						<span class="s142">МКБ</span>
						<span class="sbox"><!--me15--></span>
						<span class="sbox"><!--me16--></span>
						<span class="sbox"><!--me17--></span>
						<span class="dot">.</span>
						<span class="sbox"><!--me18--></span>
						<span class="sbox"><!--me19--></span>
						</div>
					</div>
					<div class="row">
						<span class="s141">&nbsp;</span>
						<span class="s142">от</span>
				<span class="textUnder s1391"><!--me20--></span>
						<span class="s142">до</span>
				<span class="textUnder s1391"><!--me21--></span>
						<span class="sbox"><!--me22--></span>
						<span class="s142">първичен</span>
						<span class="sbox"><!--me23--></span>
						<span class="s142">продължение</span>
					</div>
					<div class="row">
						<span class="sbox"><!--me24--></span>
						<span class="s121">рецепта</span>
						<span class="sbox"><!--me25--></span>
						<div class="boxes">
				<span class="s142">рецептурна книжка No.</span>
						<span class="box"><!--me26--></span>
						<span class="box"><!--me27--></span>
						<span class="box"><!--me28--></span>
						<span class="box"><!--me29--></span>
						<span class="box"><!--me30--></span>
						<span class="box"><!--me31--></span>
						<span class="box"><!--me32--></span>
						</div>
					</div>
					<div class="row">
						<span class="sbox"><!--me33--></span>
						<span class="s121">бързо известие</span>
						<span class="s1131">&nbsp;</span>
						<span class="sbox"><!--me34--></span>
					<span class="s121">етапна епикриза</span>
					</div>
					<div class="row">
						<span class="line">&nbsp;</span>
					</div>
					<div class="row">
						<span class="s121">Информиран съм за необходимите медицински дейности, назначената терапия и очакваните резултати</span>
					</div>
					<div class="row">
						<span class="line">&nbsp;</span>
					</div>
					<div class="row">
						<span class="s142">пациент</span>
					<span class="textUnder s1461">&nbsp;</span>
						<span class="s142">лекар</span>
					<span class="textUnder s1461">&nbsp;</span>
					</div>
					<div class="row">
					<span class="s142">(родител, настойник)</span>
						<span class="s142">(подпис)</span>
						<span class="s1391">&nbsp;</span>
				<span class="s142">(подпис и личен печат)</span>

					</div>
			    </div>
			    <div class="split2">
			        <div class="separate">
				    	<div class="row">
				<span class="s1161">Основна диагноза МКБ</span>
						</div>
						<div class="row">
							<div class="boxes">
		 				 <span class="box"><!--pr1--></span>
						 <span class="box"><!--pr2--></span>
						 <span class="box"><!--pr3--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr4--></span>
						<span class="box"><!--pr5--></span>
						<span class="dot">&nbsp;</span>
						 <span class="box"><!--pr6--></span>
						<span class="box"><!--pr7--></span>
						<span class="box"><!--pr8--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr9--></span>
						 <span class="box"><!--pr10--></span>
							 </div>
						</div>
				    	<div class="row">
						<span class="t211"><!--pr11--></span>
						</div>
						<div class="row">
						<span class="t221"><!--pr12--></span>
						</div>
					</div>
					<div class="separate">
						<div class="row">
		<div class="s111">Придружаващи заболявания и усложнения</div>
						</div>
					</div>
					<div class="separate">
						<div class="row">
							<div class="boxes">
							<span class="s142">МКБ</span>
						<span class="box"><!--pr13--></span>
						<span class="box"><!--pr14--></span>
						<span class="box"><!--pr15--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr16--></span>
						<span class="box"><!--pr17--></span>
							</div>
						</div>
						<div class="row">
				<span class="textUnder s2211"><!--pr18--></span>
							<div class="boxes">
						<span class="box"><!--pr19--></span>
						<span class="box"><!--pr20--></span>
						<span class="box"><!--pr21--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr22--></span>
						<span class="box"><!--pr23--></span>
							</div>
						</div>
     				</div>
					<div class="separate">
						<div class="row">
							<div class="boxes">
						<span class="s142">МКБ</span>
						<span class="box"><!--pr25--></span>
						<span class="box"><!--pr26--></span>
						<span class="box"><!--pr27--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr28--></span>
						<span class="box"><!--pr29--></span>
							</div>
						</div>
						<div class="row">
				<span class="textUnder s2211"><!--pr30--></span>
							<div class="boxes">
						<span class="box"><!--pr31--></span>
						<span class="box"><!--pr32--></span>
						<span class="box"><!--pr33--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr34--></span>
						<span class="box"><!--pr35--></span>
							</div>
						</div>
     				</div>
					<div class="separate">
						<div class="row">
							<div class="boxes">
							<span class="s142">МКБ</span>
						<span class="box"><!--pr37--></span>
						<span class="box"><!--pr38--></span>
						<span class="box"><!--pr39--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr40--></span>
						<span class="box"><!--pr41--></span>
							</div>
						</div>
						<div class="row">
				<span class="textUnder s2211"><!--pr42--></span>
							<div class="boxes">
						<span class="box"><!--pr43--></span>
						<span class="box"><!--pr44--></span>
						<span class="box"><!--pr45--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr46--></span>
						<span class="box"><!--pr47--></span>
							</div>
						</div>
     				</div>
					<div class="separate">
						<div class="row">
							<div class="boxes">
						<span class="s142">МКБ</span>
						<span class="box"><!--pr49--></span>
						<span class="box"><!--pr50--></span>
						<span class="box"><!--pr51--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr52--></span>
						<span class="box"><!--pr53--></span>
							</div>
						</div>
						<div class="row">
				<span class="textUnder s2211"><!--pr54--></span>
							<div class="boxes">
						<span class="box"><!--pr55--></span>
						<span class="box"><!--pr56--></span>
						<span class="box"><!--pr57--></span>
						<span class="dot">.</span>
						<span class="box"><!--pr58--></span>
						<span class="box"><!--pr59--></span>
							</div>
						</div>
     				</div>
					<div class="separate">
						<div class="row">
							<div class="s2711">Анамнеза</div>
						<span class="s2712"><!--an1--></span>
						</div>
     				</div>
     				<div class="separate">
						<div class="row">
					<div class="s2711">Обективно състояние</div>
						<span class="s2712"><!--ob1--></span>
						</div>
     				</div>
     				<div class="separate">
						<div class="row">
						    <div class="s2711">Изследвания</div>
						  <span class="s2712"><!--izs1--></span>
						</div>
     				</div>
     				<div class="separate">
						<div class="row">
							<div class="s2711">Терапия</div>
						<span class="s2712"><!--t1--></span>
						</div>
     				</div>
     				<div class="separate">
						<div class="row">
							<span class="s1161">Код на извършени специализирани или високо- специализирани дейности/ код на назначени/ изпълнени процедури за физикална и рехабилитациоанна медицина</span>
						</div>
     				</div>
     				<div class="separate">
						<div class="row">
				<span class="s2211 textUnder"><!--kp1--></span>
							<div class="boxes">
						<span class="box"><!--kp2--></span>
						<span class="box"><!--kp3--></span>
						<span class="box"><!--kp4--></span>
						<span class="box"><!--kp5--></span>
						<span class="box"><!--kp6--></span>
							</div>
						</div>
						<div class="row">
				<span class="s2211 textUnder"><!--kp7--></span>
							<div class="boxes">
						<span class="box"><!--kp8--></span>
						<span class="box"><!--kp9--></span>
						<span class="box"><!--kp10--></span>
						<span class="box"><!--kp11--></span>
						<span class="box"><!--kp12--></span>
							</div>
						</div>
						<div class="row">
				<span class="s2211 textUnder"><!--kp13--></span>
							<div class="boxes">
						<span class="box"><!--kp14--></span>
						<span class="box"><!--kp15--></span>
						<span class="box"><!--kp16--></span>
						<span class="box"><!--kp17--></span>
						<span class="box"><!--kp18--></span>
							</div>
						</div> 
						<div class="row">
				<span class="s2211 textUnder"><!--kp19--></span>
							<div class="boxes">
						<span class="box"><!--kp20--></span>
						<span class="box"><!--kp21--></span>
						<span class="box"><!--kp22--></span>
						<span class="box"><!--kp23--></span>
						<span class="box"><!--kp24--></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<span class="legend left">EMS SIMP</span>
				<span class="legend right">Бл. МЗ-НЗОК No. 1</span>
				</div>
			</div>
	    </div>
  	</body>
</html>
</asp:Content>
