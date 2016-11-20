var projects = document.getElementsByClassName("project-panel");
var tagedSubjectSelected = [];
var within_grade = [];
var search_hit = [];
var within_max_price = [];

// Init filters
for(var i = 0; i < projects.length; i++){
    tagedSubjectSelected[i] = false;
    within_grade[i] = true;
    search_hit[i] = true;
    within_max_price[i] = true;
}

/*** Subject Filter **/
var subjectFilters = document.getElementsByClassName("badgebox");

for(var i = 0; i < subjectFilters.length; i++){
    subjectFilters[i].addEventListener("change", handleSubjectFilter);
}

// Callback when subject checkboxes are clicked
function handleSubjectFilter() {
    for(var i = 0; i < projects.length; i++){
        var tags = projects[i].getElementsByClassName("tag");
        for(var j = 0; j < tags.length; j++){
            if(tags[j].innerHTML == this.value){
                tagedSubjectSelected[i] = this.checked;
            }
        }
    }
    refreshProjectList();
}

// Read which subjects are initially checked
for(var i = 0; i < subjectFilters.length; i++){
    if(subjectFilters[i].checked){
        for(var j = 0; j < projects.length; j++){
            var tags = projects[j].getElementsByClassName("tag");
            for(var k = 0; k < tags.length; k++){
                if(tags[k].innerHTML == subjectFilters[i].value){
                    tagedSubjectSelected[j] = true;
                }
            }
        }
    }
}
refreshProjectList();

/*** Grade Level Filter ***/
// callback when grade slider is changed
$('#ex2').on('slideStop', function(slideEvt) {
    for(var i = 0; i < projects.length; i++){
        var grade = projects[i].getElementsByClassName("grade-level")[0].innerHTML;
        var divider = grade.indexOf("-");
        var low_grade;
        var high_grade;
        if(divider > 0){
            var low_grade = parseInt(grade.substr(0, divider));
            var high_grade = parseInt(grade.substr(divider + 1, grade.length));
        }else{
            low_grade = parseInt(grade);
            high_grade = low_grade;
        }
        within_grade[i] = low_grade >= slideEvt.value[0] && high_grade <= slideEvt.value[1];
    }
    refreshProjectList();
  });

/*** Search bar **/
var searchBar = document.getElementById("search");

searchBar.onfocus = function(e){
    if(this.value==this.defaultValue){
        this.value=""; this.style.color="#000"; 
    }
}
searchBar.onblur = function(e){
    if(this.value==""){
        this.value=this.defaultValue; this.style.color="#888";
    }
}
searchBar.oninput = function(e){
    for(var i = 0; i < projects.length; i++){
        var projectTitle = projects[i].getElementsByClassName("project-title")[0].innerHTML;
        var projectSummary = projects[i].getElementsByClassName("project-summary")[0].innerHTML;
        if(projectTitle.toLowerCase().indexOf(this.value.toLowerCase()) != -1 || projectSummary.toLowerCase().indexOf(this.value.toLowerCase()) != -1){
            search_hit[i] = true;
        }else{
            search_hit[i] = false;
        }
    }
    refreshProjectList();
}

/*** Price Filter ***/
var price_filter = document.getElementById('price-filter');
price_filter.oninput = function(e){
    if(parseFloat(this.value)){
        if(parseFloat(this.value) < 0) this.value = 0;
        for(var i = 0; i < projects.length; i++){
            var project_price = parseFloat(projects[i].getElementsByClassName("project-price")[0].innerHTML.substr(1));
            within_max_price[i] = this.value > project_price;
            
        }
    }else{
        for(var i = 0; i < projects.length; i++){
            within_max_price[i] = true;
        }
    }
    refreshProjectList();
}


/*** Combine Filter Results ***/
function refreshProjectList(){
    for(var i = 0; i < projects.length; i++){
        projects[i].hidden = !(tagedSubjectSelected[i] && within_grade[i] && search_hit[i] * within_max_price[i]);
    }
}
