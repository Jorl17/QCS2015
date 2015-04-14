<%--
  Created by IntelliJ IDEA.
  User: joaquim
  Date: 08-04-2015
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="assets/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/style.css" rel="stylesheet">
    <title>Insulin Dose Calculator</title>
  </head>
  <body>

    <div class="container">
      <div class="header clearfix">
        <h3 class="text-muted"><i class="fa fa-plus-square fa-3"></i> Insuline Dose Calculator</h3>
      </div>

      <div class="jumbotron">

        <div class="row">
          <div class="col-md-2"></div>
            <div class="col-md-8"  align="center">
              <div aria-label="Large button group" role="group" class="btn-group btn-group-lg">
                <button class="btn btn-default" type="button" id="meal_standard">Mealtime - Standard</button>
                <button class="btn btn-default" type="button" id="meal_personal">Mealtime - Personal</button>
                <button class="btn btn-default" type="button" id="meal_background">Background</button>
              </div>
            </div>
          <div class="col-md-2"></div>
        </div>

        <div class="container" id="form_container" style="padding-top: 40px;">

        </div>

      </div>

      <footer class="footer">
        <p>© QCS 2014</p>
      </footer>

    </div>

    <script src="assets/jquery-1.11.2.min.js"></script>
    <script src="assets/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
    <script src="assets/custom.js"></script>
  </body>
</html>
