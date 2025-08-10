<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mobile Shop Admin - Login</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style type="text/css">
body {
	background: linear-gradient(135deg, #007bff, #00c6ff);
}

.login-card {
	max-width: 400px;
	width: 100%;
	border-radius: 15px;
}

.login-card .card-body {
	background-color: #ffffff;
	border-radius: 15px;
}

.btn-primary {
	background-color: #007bff;
	border: none;
	font-weight: 500;
}

.btn-primary:hover {
	background-color: #0056b3;
}

a {
	color: #007bff;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div
		class="container d-flex justify-content-center align-items-center vh-100">
		<div class="card login-card shadow-lg">
			<div class="card-body p-4">
				<h3 class="text-center mb-4 text-primary fw-bold">Mobile Shop
					Admin</h3>
				<form action="login" method="POST">
					<div class="mb-3">
						<label for="username" class="form-label">Username / Email</label>
						<input type="text" class="form-control" id="username" name="username"
							placeholder="Enter username or email" required>
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password</label> <input
							type="password" class="form-control" id="password" name="password"
							placeholder="Enter password" required>
					</div>
					<div class="d-grid">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
