<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="/resources/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/resources/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Events (java spring)
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="/resources/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="/resources/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="/resources/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="/" class="simple-text logo-normal">
          IT Events
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
	  <li class="nav-item active ">
            <a class="nav-link" href="/getEvents">
              <i class="material-icons">content_paste</i>
              <p>Events</p>
            </a>
          </li>
          
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Technology Events</a>
          </div>
          
          
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Events</h4>
                  <p class="card-category"> Here is a subtitle for this table</p>
                </div>
                <div class="card-body">
                  <form:form action="/saveEventForm" modelAttribute="eventForm" method="post" >
                  <form:hidden path="id" />
                  <div class="form-group">
				      <label for="title">Title</label>
				      <form:input type="text" class="form-control" id="title" path="title" required="required" />
				    </div>
				  
				  <div class="form-group">
				    <label for="body">Body</label>
				    <form:textarea class="form-control" id="body" rows="5" path="body"></form:textarea>
				  </div>
				  <div class="form-group">
				    <label for="date">Date</label>
				    <form:input type="date" dateformat="MM-dd-yyyy" class="form-control datetimepicker" id="event_date" rows="5" path="event_date"></form:input>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress">Event Location - Address</label>
				    <form:input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" path="address.street" required="required"/>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputCity">City</label>
				      <form:input type="text" class="form-control" id="inputCity" path="address.city" required="required" />
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputState">State</label>
				      <form:select id="inputState" class="form-control" path="address.state" required="required">
				      <form:option value="-" label="--Please Select"/>
				      <form:option value="AL">Alabama</form:option>
					  <form:option value="AK">Alaska</form:option>
					  <form:option value="AZ">Arizona</form:option>
					  <form:option value="AR">Arkansas</form:option>
					  <form:option value="CA">California</form:option>
					  <form:option value="CO">Colorado</form:option>
					  <form:option value="CT">Connecticut</form:option>
					  <form:option value="DE">Delaware</form:option>
					  <form:option value="DC">District Of Columbia</form:option>
					  <form:option value="FL">Florida</form:option>
					  <form:option value="GA">Georgia</form:option>
					  <form:option value="HI">Hawaii</form:option>
					  <form:option value="ID">Idaho</form:option>
					  <form:option value="IL">Illinois</form:option>
					  <form:option value="IN">Indiana</form:option>
					  <form:option value="IA">Iowa</form:option>
					  <form:option value="KS">Kansas</form:option>
					  <form:option value="KY">Kentucky</form:option>
					  <form:option value="LA">Louisiana</form:option>
					  <form:option value="ME">Maine</form:option>
					  <form:option value="MD">Maryland</form:option>
					  <form:option value="MA">Massachusetts</form:option>
					  <form:option value="MI">Michigan</form:option>
					  <form:option value="MN">Minnesota</form:option>
					  <form:option value="MS">Mississippi</form:option>
					  <form:option value="MO">Missouri</form:option>
					  <form:option value="MT">Montana</form:option>
					  <form:option value="NE">Nebraska</form:option>
					  <form:option value="NV">Nevada</form:option>
					  <form:option value="NH">New Hampshire</form:option>
					  <form:option value="NJ">New Jersey</form:option>
					  <form:option value="NM">New Mexico</form:option>
					  <form:option value="NY">New York</form:option>
					  <form:option value="NC">North Carolina</form:option>
					  <form:option value="ND">North Dakota</form:option>
					  <form:option value="OH">Ohio</form:option>
					  <form:option value="OK">Oklahoma</form:option>
					  <form:option value="OR">Oregon</form:option>
					  <form:option value="PA">Pennsylvania</form:option>
					  <form:option value="RI">Rhode Island</form:option>
					  <form:option value="SC">South Carolina</form:option>
					  <form:option value="SD">South Dakota</form:option>
					  <form:option value="TN">Tennessee</form:option>
					  <form:option value="TX">Texas</form:option>
					  <form:option value="UT">Utah</form:option>
					  <form:option value="VT">Vermont</form:option>
					  <form:option value="VA">Virginia</form:option>
					  <form:option value="WA">Washington</form:option>
					  <form:option value="WV">West Virginia</form:option>
					  <form:option value="WI">Wisconsin</form:option>
					  <form:option value="WY">Wyoming</form:option>
				      </form:select>
				    </div>
				    <div class="form-group col-md-2 ml-auto">
				      <label for="inputZip">Zip</label>
				      <form:input type="text" class="form-control" id="inputZip" path="address.zipCode" required="required"/>
				    </div>
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				  <button type="button" onclick="location.href='/getEvents'" class="btn btn-primary">Back</button>
				</form:form>
                  
                </div>
              </div>
            </div>
            
          </div>
        </div>
       
      </div>
      
      <%@include file="footer.jsp" %>
      
    </div>
  </div>
  
  <jsp:include page="extended_script.jsp" />
</body>

</html>
