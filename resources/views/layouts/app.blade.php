<!DOCTYPE html>
<html>

<head>
    <title>Your Job Portal</title>
    <!-- Add your CSS and JavaScript links here -->
</head>

<body>
    <header>
        <!-- Add your header content here -->
        <h1>Your Job Portal</h1>
        <nav>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/lowongan">Lowongan</a></li>
                <!-- Add other navigation links here -->
            </ul>
        </nav>
    </header>

    <div class="container">
        @yield('content')
    </div>

    <footer>
        <!-- Add your footer content here -->
        <p>&copy; {{ date('Y') }} Your Company</p>
    </footer>

    <!-- Add your JavaScript scripts here -->
</body>

</html>