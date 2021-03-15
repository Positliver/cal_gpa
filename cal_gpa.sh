#!/bin/bash

cal_gpa() {
    awk '
    BEGIN{printf "Your GPA is : "}
    {
            if($2>=90){
                numerator+=(4.0*$1);
                denominator+=$1;
            } else if ($2 >= 85){
                numerator+=(3.7*$1);
                denominator+=$1;
            } else if ($2 >= 82){
                numerator+=(3.3*$1);
                denominator+=$1;
            } else if ($2 >= 78){
                numerator+=(3.0*$1);
                denominator+=$1;
            } else if ($2 >= 75){
                numerator+=(2.7*$1);
                denominator+=$1;
            } else if ($2 >= 72){
                numerator+=(2.3*$1);
                denominator+=$1;
            } else if ($2 >= 69){
                numerator+=(2.0*$1);
                denominator+=$1;
            } else if ($2 >= 66){
                numerator+=(1.7*$1);
                denominator+=$1;
            } else if ($2 >= 63){
                numerator+=(1.3*$1);
                denominator+=$1;
            } else if ($2 >= 60){
                numerator+=(1.0*$1);
                denominator+=$1;
            } else {
            ; 
            }
            # {printf"%f / %f = %f\n", numerator, denominator, (numerator/denominator)}
    }
    END{printf"%f / %f = %f\n", numerator, denominator, (numerator/denominator)}
    ' $1
  }

  cal_gpa score.txt