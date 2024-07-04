<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SHORTY | MyLinks</title>
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
        .profile-picture img {
    width: 100%; /* Make sure the image fills the container */
    height: 100%; /* Make sure the image fills the container */
    object-fit: cover; /* Maintain aspect ratio and cover the container */
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
        
        .content {
    flex: 1;
    padding: 20px;
}

.links-container {
    display: flex;
    flex-wrap: wrap;
}

.link-box {
    width: 850px;
    margin: 10px;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #fff;
    box-sizing: border-box;
}

.floating-window {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 100px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            z-index: 1000;
        }

        /* Add styles for the close button */
        #close-qr-window {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        
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
        
    </style>
</head>
<body>
    <div class="container">
        <nav class="sidebar">
            <div class="app-name"><strong>SHORTY.Link</strong></div>
            <a href="home">Shorten URL</a>
            <a href="#" class="active">My Links</a>
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
            <h1><strong>My Links</strong></h1>

            <c:if test="${empty userLinks}">
                <p>No links found.</p>
                <h4><a href="/home">create new</a></h4>
            </c:if>

            <div class="links-container" style="max-height: 500px; overflow-y: auto;">
                <c:forEach var="link" items="${userLinks}">
                    <div class="link-box" style="width: 800px; margin: 10px; padding: 15px; border: 1px solid #ddd; border-radius: 5px; background-color: #fff; box-sizing: border-box; display: flex; justify-content: space-between; align-items: flex-start;">
                        <div style="flex: 1;">
                            <h2 style="margin-bottom: 10px;"><strong>${link.title}</strong></h2>
                            <p style="margin-bottom: 5px;">Shortened Link: <a href="/${link.back}" style="text-decoration: none; color: #007bff;" target=_blank>Shorty.link/<strong>${link.back}</strong></a></p>
                            <p><a href="${link.og}" style="text-decoration: none; color: #007bff;" target=_blank>${link.og}</a></p>

                            <!-- Small black calendar icon and creation date -->
                            <div style="display: flex; align-items: center; margin-top: 10px;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
                                    <path d="M0 2a2 2 0 0 1 2-2h1v1h1V0h2v1h1V0h2v1h1V0h2a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm1 0a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2zm2 0h1v1H3V4zm2 0h1v1H5V4zm2 0h1v1H7V4zm2 0h1v1h-1V4zm2 0h1v1h-1V4zm2 0h1v1h-1V4zm2 0h1v1h-1V4zM3 7h1v1H3V7zm2 0h1v1H5V7zm2 0h1v1H7V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM3 10h1v1H3v-1zm2 0h1v1H5v-1zm2 0h1v1H7v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1zM3 13h1v1H3v-1zm2 0h1v1H5v-1zm2 0h1v1H7v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1zm2 0h1v1h-1v-1zM3 14v1a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-1h-1v1a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1v-1H3zM2 1h1v1H2V1zm0 2h1v1H2V3zm0 2h1v1H2V5zm0 2h1v1H2V7zm0 2h1v1H2V9zm0 2h1v1H2v-1zm0 2h1v1H2v-1z"/>
                                </svg>
                                <span style="margin-left: 5px; color: black;">Created on: ${link.formattedDate} </span>
                                
                            </div>
                        </div>

                        <!-- QR Code image box -->
                        <div style="flex-shrink: 0; margin-left: 20px; border: 1px solid #ddd; padding: 5px; height:100px; margin-top:20px;">
                            <img src="/qr-code/${link.lid}" alt="QR Code" onclick="showQRCode('${link.lid}')">
                        </div>

                      <!--    <button style="margin-left: 20px; margin-top: 50px; padding: 10px 15px; background-color: #007bff; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onClick="openUpdateForm()">Edit</button>-->
                        <button style="margin-left: 20px; margin-top: 50px; padding: 10px 15px; background-color: #f06a41; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onClick="delLink('${link.lid}')">Delete</button>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- Floating QR Code window -->
    <div id="qr-floating-window" class="floating-window" style="display: none;">
        <div id="qr-code-container"></div>
        <button id="close-qr-window">Close</button>
    </div>

    <script>
        function showQRCode(linkId) {
            // Get the QR code image source
            var qrCodeSrc = "/qr-code/" + linkId;

            // Set the source of the QR code image in the floating window
            document.getElementById('qr-code-container').innerHTML = '<img src="' + qrCodeSrc + '" alt="QR Code">';

            // Show the floating window
            document.getElementById('qr-floating-window').style.display = 'block';
        }

        // Add event listener to close button
        document.getElementById('close-qr-window').addEventListener('click', function() {
            // Hide the floating window when close button is clicked
            document.getElementById('qr-floating-window').style.display = 'none';
        });

        // Add event listener to document to close window when clicking outside the box
        document.addEventListener('click', function(event) {
            var qrFloatingWindow = document.getElementById('qr-floating-window');
            if (event.target !== qrFloatingWindow && !qrFloatingWindow.contains(event.target)) {
                qrFloatingWindow.style.display = 'none';
            }
        });
        
        
        function delLink(linkId) {
        	
        	var link="/del/"+linkId;
            if (confirm("Are you sure you want to delete this link?")) {
                fetch(link, {
                    method: "DELETE"
                })
                .then(response => {
                    if (response.ok) {
                        // Link deleted successfully, reload the page or update UI as needed
                        location.reload();
                    }else if (response.status === 500) {
                        // Handle internal server error
                        alert("Internal server error. Please try again later.");
                    } else {
                        // Handle other errors
                        alert("Failed to delete link. Please try again later.");
                    }
                })
                .catch(error => {
                    // Handle network error
                    console.error("Network error:", error);
                    alert("Failed to delete link due to a network error. Please try again later.");
                });
            }
        }

        
        
    </script>
     <button class="logout-btn" onclick="location.href='/logout'">Logout</button>
</body>

</html>
 