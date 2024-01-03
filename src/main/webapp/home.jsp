<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SHORTY.Link</title>
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
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
            justify-content: flex-start; /* Align content to the start */
            margin-left: 0px;
            margin-top: 300px;
            flex: 1; /* Allow the container to grow or shrink */
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
            white-space: nowrap; /* Prevent text from wrapping */
            overflow: hidden; /* Hide any overflow */
            text-overflow: ellipsis; /* Add an ellipsis for long names */
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
                <div class="profile-picture"></div>
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
</body>
</html>
