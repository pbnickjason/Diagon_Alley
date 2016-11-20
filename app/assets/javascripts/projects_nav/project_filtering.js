var projects = document.getElementsByClassName("project-panel");
var tagedSubjectSelected = [];
var within_grade = [];

// Init filters
for(var i = 0; i < projects.length; i++){
    tagedSubjectSelected[i] = false;
    within_grade[i] = true;
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

/*** Combine Filter Results ***/
function refreshProjectList(){
    for(var i = 0; i < projects.length; i++){
        projects[i].hidden = !(tagedSubjectSelected[i] && within_grade[i]);
    }
}
