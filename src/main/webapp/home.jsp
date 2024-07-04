<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shorty | Home</title>
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
            position: relative; /* Added for positioning the logout button */
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            background-color: #333;
            color: #fff;
            width: 250px;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
        }

        .app-name {
            font-size: 2.0rem;
            color: #fff;
            margin-bottom: 20px;
        }

        .sidebar a {
            display: block;
            color: #fff;
            text-decoration: none;
            padding: 15px 20px;
            border-radius: 10px;
            transition: background-color 0.3s ease-in-out;
            box-sizing: border-box;
            margin-bottom: 5px;
        }

        .sidebar a:hover {
            background-color: #555;
            border-radius: 10px;
            padding: 15px 30px;
        }

        .sidebar a.active {
            background-color: #555;
            border-radius: 10px;
            padding: 15px 30px;
        }

        .user-profile {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            margin-left: 0px;
            margin-top: 300px;
            flex: 1;
        }

        .profile-picture {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: #fff;
            margin-right: 10px;
        }

        .user-name {
            color: #fff;
            font-size: 1rem;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .content {
            flex: 1;
            padding: 20px;
        }

        .shorten-form {
            margin-top: 20px;
        }

        .shorten-form label {
            display: block;
            margin-bottom: 8px;
            font-size: 1.2rem;
        }

        .shorten-form input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            margin-bottom: 10px;
        }

        .shorten-form button {
            background-color: green;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2rem;
        }

        .shorten-form button:hover {
            background-color: #0056b3;
        }
        
        /* Styles for the dropdown menu */
        .dropdown {
            position: relative;
            display: inline-block;
        }
        
        .dropbtn {
            background-color: transparent;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            box-shadow: 0px -8px 16px 0px rgba(0,0,0,0.2); /* Open upwards */
            z-index: 1;
        }
        
        .dropdown-content a {
            color: #fff;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        
        .dropdown-content a:hover {
            background-color: #555;
        }
        
        .dropdown:hover .dropdown-content {
            display: block;
        }
        
        /* Styles for logout button */
        .logout-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: transparent;            
            border-width:1px;
            border-color: #7E7E7E;
            border-radius:10px;
            width:100px;
            height:30px;
            color: black;         
            cursor: pointer;
        }
        
        .logout-btn:hover {
            background-color: #555;
            color: white;
             border-color: white;
            border-radius: 10px;
        }
        .profile-picture img {
    width: 100%; /* Make sure the image fills the container */
    height: 100%; /* Make sure the image fills the container */
    object-fit: cover; /* Maintain aspect ratio and cover the container */
}
    </style>
</head>
<body>
    <div class="container">
        <nav class="sidebar">
            <div class="app-name"><strong>SHORTY.Link</strong></div>
            <a href="#" class="active">Shorten URL</a>
            <a href="mylinks">My Links</a>
            <br>
            <br>
             <div class="user-profile">                
                <div class="profile-picture">
                <img alt="" src="https://ui-avatars.com/api/?name=${name}&background=04871c&color=f7f7f7&bold=true&rounded=true">
                </div>
                <div class="user-name">${name}</div>
            </div>
        </nav>

        <div class="content">
            <h1><strong>Create Link</strong></h1>

            <!-- Form for URL Shortening -->
            <form class="shorten-form" action="/shorten" method="post">
                <h2><strong><label for="ltitle">Enter Name of the Link(Optional):</label></strong></h2>
                <input type="text" id="ltitle" name="ltitle" placeholder="Enter Name" required  style="width: 500px; padding: 10px; box-sizing: border-box;">
                <h2><strong>Enter your Url with custom backhalf</strong></h2>
                <input type="text" value="shorty.link" readonly style="width: 200px; padding: 10px; box-sizing: border-box;">
                <strong>/</strong>   <input type="text" id="backhalf" name="backhalf" required  style="width: 350px; padding: 10px; box-sizing: border-box;" placeholder="Enter Custom Backhalf">
                <label></label>
                <h2><strong><label for="original-link">Enter the original link:</label></strong></h2>
                <input type="url" id="oglink" name="oglink" placeholder="https://example.com" required  style="width: 500px; padding: 10px; box-sizing: border-box;">
                
                <button type="submit">Shorten URL</button>
                <h2>${message}</h2>
            </form>
        </div>
    </div>
    <!-- Logout button at top right corner -->
    <button class="logout-btn" onclick="location.href='/logout'">Logout</button>
</body>
</html>
