<%--
  Created by IntelliJ IDEA.
  User: jbsimoes
  Date: 13/04/15
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>

<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-4">
    <div class="form-group">
      <label for="total_carbo_meal">Carbohydrates in the meal (grams)</label>
      <input type="text" class="form-control" id="total_carbo_meal" onblur="verify_fill();">
    </div>
    <div class="form-group">
      <label for="sensitivity">Individual sensitivity</label>
      <input type="text" class="form-control" id="sensitivity" value="50" onblur="verify_fill();">
    </div>
  </div>
  <div class="col-md-4">
    <div class="form-group">
      <label for="actual_sugar_level">Actual blood sugar level before the meal</label>
      <input type="text" class="form-control" id="actual_sugar_level" onblur="verify_fill();">
    </div>
    <div class="form-group">
      <label for="target_sugal_level">Target blood sugar level before the meal</label>
      <input type="text" class="form-control" id="target_sugal_level" onblur="verify_fill();">
    </div>
  </div>
  <div class="col-md-2"></div>
</div>

<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
    <div class="form-group">
      <label for="total_carbo_processed">Carbohydrates processed by unit of rapid insulin (grams)</label>
      <input type="text" class="form-control" id="total_carbo_processed" value="12" onblur="verify_fill();">
    </div>
    <button type="button" class="btn btn-success btn-lg" style="float: right;" disabled="disabled" onclick="calculate_insulin();" id="calculate_insuline_dose">Calculate Insuline Dose</button>
  </div>
  <div class="col-md-2"></div>
</div>




