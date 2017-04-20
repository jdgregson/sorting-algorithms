var Sort = {
    selectionSort: function(a, ascending) {
        ascending = typeof ascending!=='undefined'? ascending:true;
        for(var i=0; i<a.length; i++) {
            var smallSub = i;
            for(var j=i+1; j<a.length; j++)
                if(ascending && a[j] < a[smallSub]) {
                    smallSub = j;
                } else if(!ascending && a[j] > a[smallSub]) {
                    smallSub = j;
                }
            var temp = a[i];
            a[i] = a[smallSub];
            a[smallSub] = temp;
        }
        return a;
    },

    insertionSort: function(a, ascending) {
        ascending = typeof ascending!=='undefined'? ascending:true;
        for(var i=1; i<a.length; i++) {
            var j = i;
            if(ascending) {
                while((j > 0) && (a[j] < a[j-1])) {
                    var temp = a[j];
                    a[j] = a[j-1];
                    a[j-1] = temp;
                    j = j-1;
                }
            } else {
                while((j > 0) && (a[j] > a[j-1])) {
                    var temp = a[j];
                    a[j] = a[j-1];
                    a[j-1] = temp;
                    j = j-1;
                }
            }
        }
        return a;
    },

    bubbleSort: function(a, ascending) {
        ascending = typeof ascending!=='undefined'? ascending:true;
        for(var i=0; i<a.length-1; i++) {
            for(var j=0; j<a.length-1; j++) {
                if(ascending) {
                    if(a[j] > a[j+1]) {
                        var temp = a[j];
                        a[j] = a[j+1];
                        a[j+1] = temp;
                    }
                } else {
                    if(a[j] < a[j+1]) {
                        var temp = a[j];
                        a[j] = a[j+1];
                        a[j+1] = temp;
                    }
                }
            }
        }
        return a;
    }
}
