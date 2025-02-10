<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="iron_swords.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <link href="../style/boxes.css" rel="stylesheet" />
    <link href="../style/StyleSheet.css" rel="stylesheet" />
    <title>WellnessWorkouts</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="video-container">
         <div class="intro-text">
             <p>Welcome to Wellness Fitness</p>
                <p style="font-size: 40px">Log in For Content </p>
             <p style="font-size: 35px">Scroll down for more infromation </p>
         </div>
        <video class="intro" autoplay muted loop>
            <source src="../media/hompagevideo.mp4" type="video/mp4">
        </video>
    </div>
    <div class="headline">
        <h3>At Wellness Fitness, we're dedicated to helping you achieve your fitness and nutrition goals<br /> with carefully planned workouts and protein-rich meals.<br /> Whether you're on a quest to build muscle, shed pounds, or simply maintain a healthy lifestyle, we've got you covered.</h3>
    </div>
    &nbsp;    &nbsp;
    <div class="align">
        <h1><u>What We Offer</u></h1>
        <div class="box">
            <img class="boximage" src="../pictures/Planned Workouts.jpg" />
            <h2>Planned Workouts</h2>
            <p>Explore a range of fitness routines designed to suit all fitness levels. From strength training to cardio workouts, our detailed plans are crafted to help you reach your peak performance.</p>
        </div>
        <div class="box">
            <img class="boximage" src="../pictures/Protein-Packed Meals.jpg" />
            <h2>Protein-Packed Meals</h2>
            <p>Discover a variety of mouthwatering protein meal ideas that support muscle recovery and fuel your active lifestyle. From breakfast to dinner, we've got your protein needs covered.</p>
        </div>
        <div class="box">
            <img class="boximage" src="../pictures/fitness tips.jpg" />
            <h2>Training Tips</h2>
            <p>Explore our expert training tips to improve your strength training routines. Learn about proper form, effective strategies, and progression techniques to optimize your workouts and achieve your fitness goals.</p>
        </div>
        <h1><u>Why Choose WellnessWorkouts?</u></h1>
        <div class="box">
            <img class="boximage" src="../pictures/Expert Guidance.jpg" />
            <h2>Expert Guidance</h2>
            <p>Our workout plans and meal recipes are curated by fitness experts and nutritionists, ensuring you receive reliable and effective guidance.</p>
        </div>
        <div class="box">
            <img class="boximage" src="../pictures/Flexibility.jpg" />
            <h2>Wide Selection</h2>
            <p>We understand that everyone has unique goals. That's why we offer a wide selection of workouts and meal options to cater to your individual needs.</p>
        </div>
        <div class="box">
            <img class="boximage" src="../pictures/Community Support.png" />
            <h2>Community Support</h2>
            <p>Join our growing fitness community, share your progress, and connect with fellow fitness enthusiasts. We're here to inspire and motivate each other.</p>
        </div>
        <h1><a style="color:black" href="Login%20form.aspx">Start Your Journey</a></h1>
        <div class="headline">
            <h3>Ready to embark on your fitness and nutrition journey? Dive into our content pages and explore the world of wellness. Whether you're a beginner or an experienced fitness enthusiast, we're your trusted companion on this path to a healthier and stronger you.</h3>
        </div>
        <br />
    </div>    
</asp:Content>
