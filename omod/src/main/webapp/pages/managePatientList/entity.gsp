<script type="text/javascript">
	var breadcrumbs = [
		{icon: "icon-home", link: '/' + OPENMRS_CONTEXT_PATH + '/index.htm'},
		{
			label: "${ ui.message("coreapps.app.systemAdministration.label")}",
			link: '${ui.pageLink("coreapps", "systemadministration/systemAdministration")}'
		},
		{
			label: "${ ui.message("patientlist.page")}",
			link: '${ui.pageLink("patientlist", "patientListLanding")}'
		},
		{label: "${ ui.message("patientlist.define.label")}"}
	];
	
	jQuery('#breadcrumbs').html(emr.generateBreadcrumbHtml(breadcrumbs));
</script>

<div ng-show="loading" class="loading-msg">
	<span>${ui.message("openhmis.commons.general.processingPage")}</span>
	<br/>
	<span class="loading-img">
		<img src="${ui.resourceLink("uicommons", "images/spinner.gif")}"/>
	</span>
</div>

<form ng-hide="loading" name="entityForm" class="entity-form" ng-class="{'submitted': submitted}" style="font-size:inherit">
	${ui.includeFragment("openhmis.commons", "editEntityHeaderFragment")}
	
	<input type="hidden" ng-model="entity.uuid"/>
	<div class="row">
		<ul class="table-layout">
			<li class="required">
				<span>${ui.message("general.name")}</span>
			</li>
			<li>
				<input name="entityName" type="text" ng-model="entity.name" class="maximized"
				       placeholder="${ui.message("general.name")}" required/>
			</li>
		</ul>
		<ul class="table-layout">
			<li style="vertical-align: top" class="not-required">
				<span>${ui.message("general.description")}</span>
			</li>
			<li>
				<textarea ng-model="entity.description" placeholder="${ui.message("general.description")}" rows="3"
				          cols="40">
				</textarea>
			</li>
		</ul>
	</div>
	<br/>
	<div class="row detail-section-border-top">
		<br/>
		<div class="col-md-12">
			<table>
				<thead>
				<tr>
					<td>${ui.message("patientlist.condition.feild.label")}</td>
					<td>${ui.message("patientlist.condition.operator.label")}</td>
					<td>${ui.message("patientlist.condition.value.label")}</td>
					<td>${ui.message("patientlist.condition.consitionorder.label")}</td>
				</tr>
				</thead>
			</table>
		</div>
	</div>
	<br/>
	<div class="row detail-section-border-top">
		<br/>
		<div class="col-md-6">
			<input type="button" class="cancel" value="${ui.message("general.cancel")}" ng-click="cancel()"/>
		</div>
		<div class="col-md-6">
			<input type="button" class="confirm right" value="${ui.message("general.save")}" ng-click="saveOrUpdate()"/>
		</div>
	</div>
</form>
${ui.includeFragment("openhmis.commons", "retireUnretireDeleteFragment")}
