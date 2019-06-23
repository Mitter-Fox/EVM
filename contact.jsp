<%-- 
    Document   : contact
    Created on : Jan 9, 2019, 11:11:09 AM
    Author     : Tridib
--%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V17</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="contactserv" method="post">
				<span class="contact100-form-title">
					Write to E-Poll Office
				</span>

				<label class="label-input100" for="first-name">Enter your name *</label>
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
					<input id="first-name" class="input100" type="text" name="first-name" placeholder="First name">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
					<input class="input100" type="text" name="last-name" placeholder="Last name">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="email">Enter your email ID *</label>
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com">
					<span class="focus-input100"></span>
				</div>
                                
                                <label class="label-input100" for="voter_id">Enter your Voter ID *</label>
				<div class="wrap-input100 validate-input" data-validate = "Valid Voter ID is required: ABC1234567">
					<input id="email" class="input100" type="text" name="voter_id" placeholder="Eg. ABC1234567">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="phone">Enter your mobile number</label>
				<div class="wrap-input100">
					<input id="phone" class="input100" type="text" name="phone" placeholder="Eg. +91 9009009999">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="message">Write your Message *</label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<textarea id="message" class="input100" name="message" placeholder="Write us a message"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						Submit
					</button>
				</div>

                                <span class="txt3">
                                    <br><br>� Copyright SSRT <br>
                                    Website updated on 09.01.2019
				</span>
                                
                                
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('images/bg-01.jpg');">
				<div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Address
						</span>

						<span class="txt3">
							XX, HALFWAY STREET , 
                                                        <br>
                                                        KOLKATA 70000X, INDIA.
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Contact 
						</span>

						<span class="txt3">
							23XX XXX1,23XX XXX2,23XX XXX3
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Email
						</span>

						<span class="txt3">
							complaints@epoll.gov.in
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
