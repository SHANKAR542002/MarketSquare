/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function val()
{

  var uid = document.getElementById("t1");
  var pwd = document.getElementById("t2");
  var gen = document.getElementById("t3");
  var dob=  document.getElementById("t4");
  var mob = document.getElementById("t5");
  var em= document.getElementById("t6");
  var add = document.getElementById("t7");
  if(uid.value=="")
          {
           alert("Username should not be left blank");
           document.getElementById('u').focus();
           return false;
           }
  else
       {
       s=uid.value;
       for(i=0;i<s.length;i++)
        {
           chr=s.charCodeAt(i);
           if(!(( chr>=65 && chr<=90 ) || ( chr>=97 && chr<=122 )))
             {
              alert("Username must contain only Alphabets");
              uid.value=""
              document.getElementById('u').focus();
              return false;

              }
         }
        }
        if(pwd.value=="")
               {
                alert("Password should not be left blank");

                return false;
                }


         if(dob.value=="")
           {
             alert("enter valid date of birth");
             return false;
           }
           k=mob.value;
           if(k=="")
           {
             alert("please enter  mobile number");
           }
            else if(k==""||k.length>13||k.length<13)
           {
             alert("please enter valid mobile number");
           }
            








}