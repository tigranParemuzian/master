/**
 * Created by tigran on 7/25/15.
 */
jQuery.ajax({
    url: "/data",
    type: "GET",
    contentType: 'application/json; charset=utf-8',
    async: true,
    success: function(resultData) {
            var tr;
            for (var i = 0; i < resultData.length; i++) {
                tr = $('<tr id='+resultData[i].name+'>');
                tr.append('<td><img src="/uploads/media/default/0001/01/'+resultData[i].image+'" />' + resultData[i].name + "</td>");
                tr.append("<td>" + resultData[i].sale + "</td>");
				tr.append("<td>/</td>"); 
                tr.append("<td>" + resultData[i].buy + "</td>");
                $('.dataTable').append(tr);
            }
    },
    error : function(jqXHR, textStatus, errorThrown) {
        $('.dataTable').html("<h2 id ='error' style='margin: 0; font-size: xx-large'>Ծառայությունը անհասանելի է</h2>");
        getRequest();
    }
});

function getRequest(){
    setTimeout(function(){
        jQuery.ajax({
            url: "/data",
            type: "GET",
            contentType: 'application/json; charset=utf-8',
            async: true,
            success: function(resultData) {
                var tr;
                for (var i = 0; i < resultData.length; i++) {
                    tr = $('#'+resultData[i].name);
                    tr.html('');
                    tr.append('<td><img src="/uploads/media/default/0001/01/'+resultData[i].image+'" />' + resultData[i].name + "</td>");
                    tr.append("<td>" + resultData[i].sale + "</td>");
					tr.append("<td>/</td>"); 
                    tr.append("<td>" + resultData[i].buy + "</td>");
                }
                getRequest();
            },
            error : function(jqXHR, textStatus, errorThrown) {
                $('.dataTable').html("<h2 id ='error' style='margin: 0; font-size: xx-large'>Ծառայությունը անհասանելի է</h2>");
                getRequest();
            }
        });
    },10000);
}

getRequest();

function startTime() {
    var today=new Date();
    var y=today.getFullYear();
    var mo=today.getMonth()+1;
    var d=today.getDate();
    var h=today.getHours();
    var m=today.getMinutes();
    var s=today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('dateTime').innerHTML = d+"."+mo+"."+y+" "+ h+":"+m+":"+s;
    var t = setTimeout(function(){startTime()},500);
}

function checkTime(i) {
    if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}