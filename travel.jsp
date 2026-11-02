<%--
    File: travel.jsp
    Student: Desarai Lofton
    Course: CSD 430
    Purpose: Display travel information for three countries
             using JSP Scriptlets and an HTML table.
--%>

<%
    // Travel records grouped by country
    String[][] travelData = {
        {"Turks and Caicos", "Grace Bay Beach", "Beach & Relaxing"},
        {"Turks and Caicos", "Providenciales", "Sightseeing"},
        {"Italy", "Rome", "Historic Sites"},
        {"Italy", "Venice", "Sightseeing & Gondola Ride"},
        {"Haiti", "Port-au-Prince", "Culture & Food"},
        {"Haiti", "Jacmel", "Beaches & Exploring"}
    };
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Countries I Have Enjoyed Visiting</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <div class="container">

        <h1>Countries I Have Enjoyed Visiting</h1>

        <p class="description">
            This page displays travel information about Turks and Caicos,
            Italy, and Haiti. The records include the country, location,
            and an activity or experience associated with each destination.
        </p>

        <h2>Travel Records</h2>

        <table>
            <thead>
                <tr>
                    <th>Country</th>
                    <th>Location</th>
                    <th>Activity / Experience</th>
                </tr>
            </thead>

            <tbody>

                <% for (int i = 0; i < travelData.length; i++) { %>

                <tr>
                    <td><%= travelData[i][0] %></td>
                    <td><%= travelData[i][1] %></td>
                    <td><%= travelData[i][2] %></td>
                </tr>

                <% } %>

            </tbody>
        </table>

        <h2>Field Descriptions</h2>

        <p>
            <strong>Country:</strong>
            The country associated with the travel record.
        </p>

        <p>
            <strong>Location:</strong>
            A city, beach, or destination within the country.
        </p>

        <p>
            <strong>Activity / Experience:</strong>
            An activity or experience associated with the destination.
        </p>

        <h2>Record Description</h2>

        <p>
            Each record represents a travel destination and an experience
            connected to that location.
        </p>

        <p class="record-info">
            Total Records:
            <strong><%= travelData.length %></strong>
        </p>

    </div>

</body>
</html>
