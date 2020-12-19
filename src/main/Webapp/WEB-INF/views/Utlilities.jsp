<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Utilities and Bill Payment</title>

</head>



<style>

    body{

            font-family: inherit;

            font-weight: 750;

            background: lightgrey;  

        }

        

    h3{

       color: blue;

      }

         

    #wrapper{

        width= 80%;

        margin: 10%;

    }

    

    a:hover{

        color: red;

        background-color: aqua;

                    

    }

    

    img{

        align-self: center;

    

    }

    

    .row:hover{

        color: white;

        background-color: purple;

        

    }

    

    img{

        border: solid;

        border-color: purple;

        margin: .5%;

        

    }

    

</style>

<body>

       <form action="" method="post"> 

       <div id="wrapper">

        <br><br/>

			<b>Welcome to Utilities Pay, a one stop solution for all your bill payment needs.</b>

           <h3>Add and Pay Utilities</h3>

		<br><br/>	

		

		<hr/>

			<a href=><u>Return to HomePage</u></a>

		<hr/>	

		

		<br>

        <div class="row">

		<button type="button" onclick="">+ Add Biller </button>	

        </div>

		<br/>

           

           <section>

               <br>

               <a href=""><img src="https://via.placeholder.com/75/FFFFFF?text=Power" ></a>

               <a href=""><img src="https://via.placeholder.com/75/0000FF/808080?text=Phone"></a>

               <a href=""><img src="https://via.placeholder.com/75/FFFFFF?text=Gas"></a>

               <a href=""><img src="https://via.placeholder.com/75/0000FF/808080?text=Net"></a>

           </section>

			

		<br>

            <div class="row">

			<label for="payment">Select Payment Method:</label>

			<select name="type" id="paymentType">

			  <option value="type 0">Select..</option>

			  <option value="type 1">Account</option>		

			  <option value="type 2">Wallet</option>

			  <option value="type 3">Credit Card</option>			

			</select>

            </div>

		<br/>	

		<br>

            <div class="row">

			<label> Enter Amount </label>	

			<input type ="text" name="Amount"/>

			</div>

		<br><br/>

            <div class="row">

		    <label> Remarks</label>

			<input type ="text" value =""/>

            </div>

		

			

		<br><br/>

			<input type ="submit" value ="Complete"/>

		<br><br/>

		

		<hr/>

			<a href=><u>Exit</u></a>

		<hr/>

           

        </div> 

        </form>

 

</body>

</html>