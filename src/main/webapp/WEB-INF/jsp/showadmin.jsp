<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<style>
		#container {
			max-width: 800px;
			margin: 0 auto;
			background-color: #f2f2f2;
		}

		#content-container {
			display: flex;
			flex-wrap: wrap;
		}

		#content {
			flex-basis: 70%;
			font-size: 16px;
			line-height: 1.5;
			padding: 20px;
		}

		marquee {
			margin-bottom: 20px;
		}

		marquee h2 {
			color: red;
			font-style: italic;
		}

		table {
			border-collapse: collapse;
			width: 100%;
			margin-bottom: 20px;
		}

		table th {
			background-color: #333;
			color: #fff;
			text-align: left;
			padding: 10px;
		}

		table td {
			padding: 10px;
			border: 1px solid #ccc;
			transition: all 0.3s ease;
		}

		table td:hover {
			background-color: #f2f2f2;
			transform: translateY(-3px);
		}

		table tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		table tr:first-child {
			border-top: 3px solid #333;
		}

		table tr:last-child {
			border-bottom: 3px solid #333;
		}
	</style>
	<div id="container">
		<jsp:include page="admin-header.jsp"></jsp:include>

		<div id="content-container">
			<div id="content">
				<center>
					<marquee>
						<h2 style="color: red;"><i>--- Welcome ${username} ---</i></h2>
					</marquee><br /><br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

					<table cellpadding="10" border="1">
						<tr>
							<td>Name</td>
							<td>Email</td>
							<td>Account No.</td>
							<td>Balance</td>
							<td>Address</td>
							<td>Contact No</td>
						</tr>
						<c:forEach items="${alladmin}" var="alladmin">
							<tr>
								<td>${alladmin.name}</td>
								<td>${alladmin.email}</td>
								<td>${alladmin.accno}</td>
								<td>${alladmin.balance}</td>
								<td>${alladmin.address}</td>
								<td>${alladmin.mobno}</td>
							</tr>
						</c:forEach>
					</table>
				</center>
			</div>
		</div>
	</div>