<!DOCTYPE html>
<html>
    <head>
        <title>Invalid Permission</title>

        {{-- <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css"> --}}

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                color: red;
                display: table;
                font-weight: 100;
                font-family: 'Lato', sans-serif;
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 40px;
                margin-bottom: 40px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="title"><h1>Permission Not Found! Sorry :(</h1></div>
                @php
                    $url = url()->current();
                    $url = strpos($url, Config::get('adminPrefix'));
                @endphp
                @if (!$url)
                    <a href="{{ url('/') }}">Back to home</a>
                @else
                    <a href="{{ url(Config::get('adminPrefix').'/home') }}">Back to home</a>
                @endif
            </div>
        </div>
    </body>
</html>
