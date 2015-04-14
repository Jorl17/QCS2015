<%--
  Created by IntelliJ IDEA.
  User: jbsimoes
  Date: 14/04/15
  Time: 02:04
  To change this template use File | Settings | File Templates.
--%>

<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
    <div class="form-group">
      <label for="weight">Body Weight</label>
      <input type="text" class="form-control" id="weight" onblur="verify_fill();">
    </div>
    <button type="button" class="btn btn-success btn-lg" style="float: right;" disabled="disabled" onclick="calculate_insulin();" id="calculate_insuline_dose">Calculate Insuline Dose</button>
  </div>
  <div class="col-md-2"></div>
</div>