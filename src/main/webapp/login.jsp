<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your JSP Page</title>
	<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>

	<link href="../css/test.css" rel='stylesheet'>
    <script src="../js/test2.js"></script>
    
   <style>
    $clr-s: #4E598C;
    $clr-l: #FFFFFF;
    $clr-p-l: #F9C784;
    $clr-p: #FCAF58;
    $clr-p-d: #FF8C42;
    $clr-p-d-2: #bb4d05;

    * {
        box-sizing: border-box;
        max-width: 100%;
    }

    body,
    html {
        position: relative;
        height: 100%;
        font-family: 'Poppins', sans-serif;
        overflow: hidden;
        margin: 0;
        background: linear-gradient(145deg, rgb(119, 46, 195), rgb(58, 18, 153));
    }

    a:visited,
    a:link {
        color: unset;
    }

    .container {
        width: 50rem;
        height: 36rem;
        box-shadow: 2px 3px 7px 3px #00000014;
        position: absolute;
        top: 50%;
        left: 66%;
        transform: translate(-50%, -50%);
        perspective: 100rem;
        border-radius: 10px;
        background: $clr-l;
        background-color:white;
    }

    .side-1 {
        transform: rotateY(0deg);
        transform-origin: 100%;
        background-color: orange;
        border-radius: 10px;
        border-radius: 10px 0 0 10px;
    }

    .side-2 {
        transform: rotateY(-180deg);
        transform-origin: 00%;
        left: 50%;
        background-color: red;
        border-radius: 10px;
        border-radius: 0 10px 10px 0;
    }

    .side-1,
    .side-2 {
        backface-visibility: hidden;
        background-size: 200%;
        
        width: 50%;
        height: 100%;
        position: absolute;
        transition: 1200ms;
        box-shadow: inset 0px 0px 100px 7px #e0660059;
        z-index: 10;
    }

    .header {
        position: absolute;
        color: $clr-l;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 80%;
        text-align: center;
        text-shadow: 2px 1px 2px #0000007d;
    }

    .toggle-log {
        font-size: 1rem;
        padding: .4rem 2rem;
        background: transparent;
        border: 1px solid $clr-l;
        color: $clr-l;
        border-radius: 2rem;
        transition: 200ms;
        &:hover {
            background: $clr-l;
            color: $clr-p-d;
        }
        &:focus {
            border: 2px solid $clr-l;
            outline: none;
        }
    }

    .sign-in {
        width: 50%;
        position: absolute;
        transform: translateY(-50%);
        left: 50%;
        top: 50%;
        text-align: center;
		
        fieldset.block {
            transform: translateX(10%);
            opacity: 0
        }
        
    }

    .sign-up {
        width: 50%;
        position: absolute;
        transform: translateY(-50%);
        left: 0;
        top: 50%;
        text-align: center;

        fieldset.block {
            transform: translateX(-10%);
            opacity: 0
        }
    }

    .log-buttons {
        margin-top: 1rem;
    }

    .log-btn {
        display: inline-block;
        border: 1px solid #c7c7c7;
        width: 2rem;
        height: 2rem;
        border-radius: 50%;
        position: relative;
        transition: 200ms;
        margin: 0 1rem;
        &:hover {
            cursor: pointer;
            border: 1px solid transparent;
            &::before {
                color: white;
            }
        }
    }

    .log-btn::before {
        font-family: "Font Awesome 5 Brands";
        font-weight: 400;
        display: inline-block;
        font-size: 1rem;
        font-style: normal;
        font-variant: normal;
        text-rendering: auto;
        -webkit-font-smoothing: antialiased;
        position: absolute;
        transform: translate(-50%, -50%);
        left: 50%;
        top: 50%;
    }

    .log-fb::before {
        content: "\f39e";
        color: #3b5998;
    }

    .log-gp::before {
        content: "\f0d5";
        color: #d34836;
    }

    .log-li::before {
        content: "\f0e1";
        color: #0077b5;
    }

    .log-fb:hover {
        background: #3b5998;
    }

    .log-gp:hover {
        background: #d34836;
    }

    .log-li:hover {
        background: #0077b5;
    }

    .log-buttons {
        a:visited, a:link {
            text-decoration: none;
        }
    }

    .input-text {
        display: block;
        margin: 1rem auto;
        border: none;
        background: #4e598c2b;
        padding: .5rem 1rem;
        font-size: 1rem;
        font-family: inherit;
    }

    .input-submit {
        display: block;
        margin: 1rem auto;
        font-size: 1rem;
        padding: .5rem 2rem;
        background: $clr-s;
        border: 1px solid $clr-s;
        color: $clr-l;
        border-radius: 2rem;
        transition: 200ms;
        position: relative;
        &:hover {
            background: $clr-l;
            color: $clr-s;
        }
    }

    fieldset {
        border: none;
        position: relative;
        transition: 1000ms ease;
        &.block {
            &:after {
                content: '';
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                position: absolute;
                background: transparent;
            }
        }
    }
    .container2 {
       width: 25rem;
    height: 20rem;
    box-shadow: 2px 3px 7px 3px #00000014;
    position: absolute;
    top: 50%;
    left: 19%;
    transform: translate(-50%, -50%);
    perspective: 100rem;
    border-radius: 10px;
    background: transparent;
    backdrop-filter: blur(5px); /* Initial blur value */
    transition: backdrop-filter 0.5s ease;
    border: 2px solid black;	
        
    }
    .container2:hover {
    backdrop-filter: blur(15px); /* Hovered blur value */
}

  .container3 {
       width: 30rem;
    height: 35rem;
    box-shadow: 2px 3px 7px 3px #00000014;
    position: absolute;
    top: 50%;
    left: 19%;
    transform: translate(-50%, -50%);
    perspective: 100rem;
    border-radius: 10px;
    background-image:url("../media/coder3.gif");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
        
    }
    
</style>

</head>
<body>
    <div class="container">
        <div class="side-1">
            <div class="header">
                <h2 class="h-main">Welcome Back!</h2>
                <p class="h-sec">Please log in with your username and password</p>
                <button class="toggle-log">SIGN UP</button>
            </div>
        </div>

        <div class="side-2">
            <div class="header">
                <h2 class="h-main">Hey there!</h2>
                <p class="h-sec">Enter your personal details and start today!</p>
                <button class="toggle-log">SIGN IN</button>
            </div>
        </div>

        <div class="forms">
            <div class="sign-up">
                <div class="form">
                    <fieldset class="block">
                    <h2 class="form-h">Sign up</h2>
                     <!--    
                        <div class="log-buttons">
                            <a href="#" class="log-btn log-fb"></a>
                            <a href="#" class="log-btn log-gp"></a>
                            <a href="#" class="log-btn log-li"></a>
                        </div> -->
 							<form action="insert" method="post" onsubmit="return validateForm()">
                            <input type="text" id="email" name="email" placeholder="Email" required class="input-text">
                            <input type="text" id="name" name="name" placeholder="Name" required class="input-text">
                            <input type="password" id="password" name="password" placeholder="Password" required class="input-text">
                            <input type="date" id="dob" name="dob" placeholder="Date of Birth" required class="input-text">
                            <input type="text" id="mobileno" name="mobileno" placeholder="Mobile Number" required class="input-text">
                            <input type="submit" value="SIGN UP" class="input-submit">
                        </form>
                    </fieldset>
                </div>
            </div>

            <div class="sign-in">
                <div class="form">
                    <fieldset>
                        <h2 class="form-h">Sign in</h2>
                      <!--   <div class="log-buttons">
                            <a href="#" class="log-btn log-fb"></a>
                            <a href="#" class="log-btn log-gp"></a>
                            <a href="#" class="log-btn log-li"></a>
                        </div> -->
                        <form action="loginUser" method="post">
                        	<h2 class="h-main">${message}</h2>
                            <input placeholder="Email" name="email" type="email" required class="input-text">
                            <input placeholder="Password" name="pass" type="password" required class="input-text">
                            <a href='#' class="forgot">Forgot your password?</a>
                            <input type="submit" value="SIGN IN" class="input-submit">
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <div class="container3"></div>
    <div class="container2">
    <br>
    	
    	<br>
    	<br>
    	<br>
    <center><h1>SHORTY.link</h1></center>
    	<br>
        <p class="line-1 anim-typewriter">A Simple Link Shortner Application.</p>
        <br>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="../js/test.js"></script>
</body>
</html>