//was in body of projects index
var projects = document.getElementsByClassName("project-panel");
var subjectFilters = document.getElementsByClassName("badgebox");

for(var i = 0; i < subjectFilters.length; i++){
    subjectFilters[i].addEventListener("change", handleSubjectFilter);
}

function handleSubjectFilter() {
    for(var i = 0; i < projects.length; i++){
        var tags = projects[i].getElementsByClassName("tag");
        for(var j = 0; j < tags.length; j++){
            if(tags[j].innerHTML == this.value){
                projects[i].hidden = !this.checked;
            }
        }
    }
}

for(var i = 0; i < projects.length; i++){
    projects[i].hidden = true;
}

for(var i = 0; i < subjectFilters.length; i++){
    if(subjectFilters[i].checked){
        for(var j = 0; j < projects.length; j++){
            var tags = projects[j].getElementsByClassName("tag");
            for(var k = 0; k < tags.length; k++){
                if(tags[k].innerHTML == subjectFilters[i].value){
                    projects[j].hidden = false;
                }
            }
        }
    }
}
