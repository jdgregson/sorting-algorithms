function Sort-SelectionSort($A, $ascending=$True) {
    for($i=0; $i -lt $A.length; $i++) {
        $smallSub = $i
        for($j=$i+1; $j -lt $A.length; $j++) {
            if(($ascending) -and($A[$j] -lt $A[$smallSub])) {
                $smallSub = $j
            } elseif(-not($ascending) -and($A[$j] -gt $A[$smallSub])) {
                $smallSub = $j
            }
        }
        $temp = $A[$i]
        $A[$i] = $A[$smallSub]
        $A[$smallSub] = $temp
    }
}

function Sort-InsertionSort($A, $ascending=$True) {
    for($i=0; $i -lt $A.length; $i++) {
        $j = $i
        if($ascending) {
            while(($j -gt 0) -and ($A[$j] -lt $A[$j-1])) {
                $temp = $A[$j]
                $A[$j] = $A[$j-1]
                $A[$j-1] = $temp
                $j = $j-1
            }
        } else {
            while(($j -gt 0) -and ($A[$j] -gt $A[$j-1])) {
                $temp = $A[$j]
                $A[$j] = $A[$j-1]
                $A[$j-1] = $temp
                $j = $j-1
            }
        }
    }
}

function Sort-BubbleSort($A, $ascending=$True) {
    for($i=0; $i -lt $A.length; $i++) {
        for($j=0; $j -lt $A.length-1; $j++) {
            if($ascending) {
                if($A[$j] -gt $A[$j+1]) {
                    $temp = $A[$j]
                    $A[$j] = $A[$j+1]
                    $A[$J+1] = $temp
                }
            } else {
                if($A[$j] -lt $A[$j+1]) {
                    $temp = $A[$j]
                    $A[$j] = $A[$j+1]
                    $A[$J+1] = $temp
                }
            }
        }
    }
}

Export-ModuleMember -function "Sort-*"