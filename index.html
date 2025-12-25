<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSE Department Students - Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', 'Segoe UI', system-ui, -apple-system, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            min-height: 100vh;
            position: relative;
            overflow-x: hidden;
        }

        /* Enhanced animated background */
        .bg-shape {
            position: fixed;
            border-radius: 50%;
            opacity: 0.12;
            animation: float 30s infinite ease-in-out;
            z-index: 0;
            filter: blur(60px);
        }

        .shape1 {
            width: 500px;
            height: 500px;
            background: linear-gradient(135deg, #683fe3, #6513e8);
            top: -200px;
            left: -200px;
            animation-delay: 0s;
        }

        .shape2 {
            width: 400px;
            height: 400px;
            background: linear-gradient(135deg, #48dbfb, #0abde3);
            bottom: -150px;
            right: -150px;
            animation-delay: 10s;
        }

        .shape3 {
            width: 350px;
            height: 350px;
            background: linear-gradient(135deg, #ee5a6f, #f368e0);
            top: 30%;
            right: 5%;
            animation-delay: 5s;
        }

        .shape4 {
            width: 450px;
            height: 450px;
            background: linear-gradient(135deg, #1f6fd2, #0b659d);
            top: 15%;
            left: 8%;
            animation-delay: 15s;
        }

        @keyframes float {
            0%, 100% {
                transform: translate(0, 0) rotate(0deg) scale(1);
            }
            25% {
                transform: translate(60px, -60px) rotate(90deg) scale(1.1);
            }
            50% {
                transform: translate(-40px, 60px) rotate(180deg) scale(0.9);
            }
            75% {
                transform: translate(50px, 50px) rotate(270deg) scale(1.05);
            }
        }

        /* Login Modal Styles */
        #loginModal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(40, 40, 60, 0.95), rgba(20, 20, 40, 0.98));
            z-index: 9999;
            display: flex;
            justify-content: center;
            align-items: center;
            backdrop-filter: blur(15px);
        }

        .login-container {
            position: relative;
            z-index: 10000;
            width: 100%;
            max-width: 450px;
            padding: 25px;
        }

        .login-box {
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.05));
            backdrop-filter: blur(20px);
            border-radius: 30px;
            padding: 50px 40px;
            box-shadow: 0 25px 75px rgba(0, 0, 0, 0.4);
            border: 1px solid rgba(255, 255, 255, 0.1);
            position: relative;
            overflow: hidden;
        }

        .login-box::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, 
                transparent 20%, 
                rgba(102, 126, 234, 0.1) 40%, 
                rgba(118, 75, 162, 0.1) 60%, 
                transparent 80%);
            animation: shimmer 8s infinite linear;
            z-index: -1;
        }

        @keyframes shimmer {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .login-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .login-logo {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin: 0 auto 25px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5em;
            color: white;
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.4);
            animation: logoPulse 2s infinite;
        }

        @keyframes logoPulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        .login-header h1 {
            font-size: 2.2em;
            background: linear-gradient(135deg, #fff, #f093fb);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 10px;
            font-weight: 900;
        }

        .login-header p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.1em;
        }

        .login-form .input-group {
            position: relative;
            margin-bottom: 25px;
        }

        .login-form .input-group i {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: #667eea;
            font-size: 1.2em;
            z-index: 2;
        }

        .login-form input {
            width: 100%;
            padding: 18px 20px 18px 60px;
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            color: white;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .login-form input:focus {
            outline: none;
            border-color: #667eea;
            background: rgba(255, 255, 255, 0.15);
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.2);
        }

        .login-form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }

        .login-btn {
            width: 100%;
            padding: 18px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border: none;
            border-radius: 15px;
            color: white;
            font-size: 18px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            margin-top: 10px;
        }

        .login-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.4);
        }

        .login-btn:active {
            transform: translateY(-1px);
        }

        .login-info {
            text-align: center;
            margin-top: 30px;
            color: rgba(255, 255, 255, 0.7);
            font-size: 0.9em;
        }

        .login-info strong {
            color: #f093fb;
        }

        .error-message {
            color: #ff6b6b;
            text-align: center;
            margin-top: 15px;
            font-weight: 600;
            display: none;
        }

        /* UPDATED: User Info Panel - Now inside header below time */
        .header-right-section {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            gap: 10px;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 12px;
            color: white;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0.1));
            backdrop-filter: blur(10px);
            padding: 8px 15px;
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
            opacity: 1;
            transform: translateY(0);
        }

        .user-info.hidden {
            opacity: 0;
            transform: translateY(-20px);
            pointer-events: none;
        }

        .user-info:hover {
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.15));
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.3);
            transform: translateY(-2px);
        }

        .user-avatar {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.1em;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(102, 126, 234, 0.3);
        }

        .logout-btn {
            background: linear-gradient(135deg, #ff6b6b, #ee5a6f);
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 15px;
            cursor: pointer;
            font-weight: 600;
            font-size: 0.85em;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .logout-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(255, 107, 107, 0.4);
        }

        /* Hide main content initially */
        .main-content {
            display: none;
            animation: fadeIn 1s ease;
            position: relative;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Original styles for main content */
        .container {
            max-width: 1400px;
            margin: 0 auto;
            position: relative;
            z-index: 1;
        }

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            width: 100%;
            padding: 25px 40px;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border-radius: 0 0 35px 35px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12);
            position: relative;
            overflow: hidden;
        }

        header::after {
            content: "";
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            height: 4px;
            background: linear-gradient(90deg, #667eea, #764ba2, #f093fb, #ff6b6b);
            border-radius: 0 0 35px 35px;
        }

        .logo-section {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .logo-container {
            position: relative;
        }

        .logo-container::before {
            content: '';
            position: absolute;
            top: -6px;
            left: -6px;
            right: -6px;
            bottom: -6px;
            background: linear-gradient(45deg, #667eea, #764ba2, #f093fb, #ff6b6b, #667eea);
            background-size: 300% 300%;
            border-radius: 50%;
            animation: gradientRotate 4s linear infinite;
            z-index: -1;
        }

        @keyframes gradientRotate {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .logo {
            width: 75px;
            height: 75px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid white;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            animation: logoFloat 3s ease-in-out infinite;
            transition: transform 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .logo:hover {
            transform: scale(1.1) rotate(5deg);
        }

        @keyframes logoFloat {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-8px); }
        }

        .header-text h2 {
            font-size: 2.2em;
            background: linear-gradient(135deg, #ff6b6b, #f093fb, #667eea, #2673de, #7911c3);
            background-size: 200% 200%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 8px;
            font-weight: 900;
            letter-spacing: -0.5px;
            transition: all 0.3s ease;
            animation: gradientShift 5s ease infinite;
        }

        @keyframes gradientShift {
            0%, 100% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
        }

        .header-text small {
            font-size: 1.35em;
            background: linear-gradient(135deg, #764ba2, #f093fb, #667eea);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-weight: 700;
            transition: all 0.3s ease;
            display: block;
            margin-top: 5px;
        }

        .time {
            text-align: right;
            font-weight: 700;
            background: linear-gradient(135deg, #667eea, #f093fb);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 1.15em;
            line-height: 1.6;
            transition: all 0.3s ease;
        }

        .hero-section {
            text-align: center;
            padding: 55px 25px 40px;
            color: white;
        }

        .hero-section h1 {
            font-size: 3.5em;
            margin-bottom: 25px;
            text-shadow: 0 8px 20px rgba(0,0,0,0.3);
            animation: slideDown 1s cubic-bezier(0.4, 0, 0.2, 1);
            font-weight: 900;
            letter-spacing: -2px;
        }

        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-50px) scale(0.9);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .session-info {
            background: linear-gradient(135deg, rgba(255,255,255,0.35), rgba(255,255,255,0.25));
            padding: 20px 50px;
            border-radius: 50px;
            display: inline-block;
            backdrop-filter: blur(20px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            font-size: 1.2em;
            margin-bottom: 35px;
            border: 2px solid rgba(255,255,255,0.5);
            font-weight: 700;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            animation: fadeIn 1.2s ease-out;
        }

        .session-info:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .search-box {
            max-width: 600px;
            margin: 0 auto 40px;
            position: relative;
            animation: fadeIn 1.4s ease-out;
        }

        .search-box input {
            width: 100%;
            padding: 20px 60px 20px 28px;
            border-radius: 50px;
            border: 3px solid rgba(255,255,255,0.4);
            font-size: 17px;
            box-shadow: 0 10px 35px rgba(0,0,0,0.2);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            background: rgba(255,255,255,0.98);
            font-weight: 500;
        }

        .search-box input:focus {
            outline: none;
            transform: translateY(-2px);
            border-color: rgba(255,255,255,0.7);
            box-shadow: 0 15px 50px rgba(0,0,0,0.3);
        }

        .search-box input::placeholder {
            color: #999;
        }

        .search-box i {
            position: absolute;
            right: 28px;
            top: 50%;
            transform: translateY(-50%);
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 1.4em;
            transition: all 0.3s ease;
        }

        .search-box:hover i {
            transform: translateY(-50%) scale(1.1);
        }

        .stats {
            text-align: center;
            margin: 30px auto 55px;
            padding: 45px;
            background: linear-gradient(135deg, #ff6b6b 0%, #ee5a6f 50%, #f368e0 100%);
            border-radius: 35px;
            color: white;
            max-width: 480px;
            box-shadow: 0 20px 60px rgba(245,87,108,0.4);
            position: relative;
            overflow: hidden;
            border: 3px solid rgba(255,255,255,0.3);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            animation: fadeIn 1.6s ease-out;
        }

        .stats:hover {
            transform: translateY(-8px);
            box-shadow: 0 30px 80px rgba(245,87,108,0.5);
        }

        .stats::before {
            content: '🎓';
            position: absolute;
            font-size: 180px;
            opacity: 0.1;
            top: -40px;
            right: -40px;
            animation: rotate 25s linear infinite;
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .stats h2 {
            font-size: 4.5em;
            margin-bottom: 15px;
            position: relative;
            z-index: 2;
            font-weight: 900;
            text-shadow: 0 8px 20px rgba(0,0,0,0.3);
            animation: numberPop 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        @keyframes numberPop {
            0% { transform: scale(0); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }

        .stats p {
            font-size: 1.4em;
            position: relative;
            z-index: 2;
            font-weight: 700;
            letter-spacing: 1.5px;
            text-transform: uppercase;
        }

        .student-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(360px, 1fr));
            gap: 40px;
            padding: 30px;
            margin-bottom: 60px;
        }

        .student-card {
            background: linear-gradient(135deg, rgba(255,255,255,0.98), rgba(255,255,255,0.95));
            border-radius: 35px;
            box-shadow: 0 15px 45px rgba(0,0,0,0.15);
            overflow: hidden;
            transition: all 0.6s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            animation: cardFadeIn 0.8s cubic-bezier(0.4, 0, 0.2, 1) backwards;
            border: 2px solid rgba(255,255,255,0.6);
        }

        .student-card:nth-child(6n+1) { animation-delay: 0.1s; }
        .student-card:nth-child(6n+2) { animation-delay: 0.15s; }
        .student-card:nth-child(6n+3) { animation-delay: 0.2s; }
        .student-card:nth-child(6n+4) { animation-delay: 0.25s; }
        .student-card:nth-child(6n+5) { animation-delay: 0.3s; }
        .student-card:nth-child(6n) { animation-delay: 0.35s; }

        @keyframes cardFadeIn {
            from {
                opacity: 0;
                transform: translateY(50px) scale(0.9);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .student-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 7px;
            background: linear-gradient(90deg, #667eea, #764ba2, #f093fb, #ff6b6b, #667eea);
            background-size: 300% 100%;
            animation: gradientSlide 4s linear infinite;
            transform: scaleX(0);
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
            border-radius: 35px 35px 0 0;
        }

        @keyframes gradientSlide {
            0% { background-position: 0% 0%; }
            100% { background-position: 300% 0%; }
        }

        .student-card:hover::before {
            transform: scaleX(1);
        }

        .student-card:hover {
            transform: translateY(-20px) scale(1.03);
            box-shadow: 0 30px 70px rgba(0,0,0,0.25);
        }

        .photo-container {
            position: relative;
            overflow: hidden;
            height: 320px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border-radius: 35px 35px 0 0;
        }

        .student-photo, .initials {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .initials {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 5em;
            font-weight: 900;
            color: white;
            text-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }

        .student-card:hover .student-photo {
            transform: scale(1.18) rotate(3deg);
        }

        .student-card:hover .initials {
            transform: scale(1.1);
        }

        .photo-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, transparent 0%, rgba(0,0,0,0.7) 100%);
            opacity: 0;
            transition: opacity 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .student-card:hover .photo-overlay {
            opacity: 1;
        }

        .student-info {
            padding: 32px;
        }

        .student-name {
            font-size: 1.4em;
            font-weight: 900;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 16px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }

        .student-card:hover .student-name {
            letter-spacing: 1px;
        }

        .student-id {
            color: white;
            font-size: 1.05em;
            margin-bottom: 20px;
            padding: 12px 24px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border-radius: 35px;
            display: inline-block;
            font-weight: 800;
            box-shadow: 0 8px 20px rgba(102,126,234,0.4);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .student-card:hover .student-id {
            transform: translateY(-3px);
            box-shadow: 0 12px 30px rgba(102,126,234,0.5);
        }

        .info-item {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 12px 0;
            font-size: 1em;
            color: #444;
            flex-wrap: wrap;
            padding: 10px 15px;
            border-radius: 20px;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            font-weight: 500;
        }

        .info-item:hover {
            background: rgba(102,126,234,0.1);
            transform: translateX(8px);
        }

        .info-item i {
            width: 22px;
            font-size: 1.15em;
            transition: transform 0.3s ease;
        }

        .info-item:hover i {
            transform: scale(1.2);
        }

        .info-item a {
            color: inherit;
            text-decoration: none;
            transition: color 0.3s;
        }

        .info-item a:hover {
            color: #667eea;
        }

        .icon-session { color: #ffa502; }
        .icon-current { color: #26de81; }
        .icon-permanent { color: #fd79a8; }
        .icon-phone { color: #0984e3; }
        .icon-facebook { color: #1877f2; }
        .icon-email { color: #ff6348; }
        .icon-blood { color: #eb3b5a; }

        .copy-btn {
            border: none;
            background: linear-gradient(135deg, #667eea, #764ba2);
            cursor: pointer;
            color: white;
            padding: 8px 12px;
            border-radius: 15px;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            font-size: 0.95em;
        }

        .copy-btn:hover {
            transform: scale(1.15) rotate(5deg);
            box-shadow: 0 8px 20px rgba(102,126,234,0.5);
        }

        .toast {
            visibility: hidden;
            min-width: 300px;
            background: linear-gradient(135deg, #2d3436, #000000);
            color: #fff;
            text-align: center;
            border-radius: 25px;
            padding: 20px 30px;
            position: fixed;
            left: 50%;
            bottom: 30px;
            transform: translateX(-50%);
            font-size: 16px;
            z-index: 9999;
            opacity: 0;
            transition: all 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
            box-shadow: 0 15px 50px rgba(0,0,0,0.5);
            border: 2px solid rgba(255,255,255,0.15);
            font-weight: 700;
        }

        .toast.show {
            visibility: visible;
            opacity: 1;
            bottom: 70px;
        }

        .toast i {
            color: #26de81;
            font-size: 1.5em;
            animation: checkPop 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        @keyframes checkPop {
            0% { transform: scale(0) rotate(-45deg); }
            50% { transform: scale(1.2) rotate(5deg); }
            100% { transform: scale(1) rotate(0deg); }
        }

        footer {
            background: linear-gradient(135deg, #2c3e50 0%, #34495e 50%, #2c3e50 100%);
            color: white;
            text-align: center;
            padding: 45px 30px;
            position: relative;
            overflow: hidden;
            margin-top: 60px;
            border-radius: 35px 35px 0 0;
        }

        footer::before {
            content: '💻';
            position: absolute;
            font-size: 180px;
            opacity: 0.05;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            animation: rotate 20s linear infinite;
        }

        footer p {
            margin: 12px 0;
            opacity: 0.95;
            position: relative;
            z-index: 2;
            font-size: 1.1em;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        footer p:hover {
            opacity: 1;
            transform: translateY(-2px);
        }

        .footer-divider {
            width: 120px;
            height: 4px;
            background: linear-gradient(90deg, #667eea, #764ba2, #f093fb);
            margin: 18px auto;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        footer:hover .footer-divider {
            width: 160px;
        }

        @media (max-width: 768px) {
            .hero-section h1 {
                font-size: 2.5em;
                letter-spacing: -1px;
            }

            .student-grid {
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 30px;
            }

            header {
                flex-direction: column;
                align-items: flex-start;
                gap: 20px;
                padding: 20px 25px;
            }

            .header-right-section {
                align-items: flex-start;
                width: 100%;
            }

            .time {
                text-align: left;
            }

            .logo {
                width: 65px;
                height: 65px;
            }

            .header-text h2 {
                font-size: 1.6em;
            }

            .header-text small {
                font-size: 1.1em;
            }

            .login-container {
                padding: 15px;
            }

            .login-box {
                padding: 30px 20px;
            }

            .login-header h1 {
                font-size: 1.8em;
            }

            /* Mobile responsive for user-info */
            .user-info {
                gap: 8px;
                padding: 6px 10px;
            }
            
            .user-avatar {
                width: 30px;
                height: 30px;
                font-size: 0.9em;
            }
            
            .logout-btn {
                padding: 5px 8px;
                font-size: 0.8em;
            }
        }

        /* Smooth scroll behavior */
        html {
            scroll-behavior: smooth;
        }

        /* Selection styling */
        ::selection {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
        }
    </style>
</head>
<body>
    <!-- Login Modal -->
    <div id="loginModal">
        <div class="login-container">
            <div class="login-box">
                <div class="login-header">
                    <div class="login-logo">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <h1>Welcome to PUST CSE 17th Batch</h1>
                    <p>Please login to access Student Directory</p>
                </div>
                
                <form class="login-form" id="loginForm">
                    <div class="input-group">
                        <i class="fas fa-user"></i>
                        <input type="text" id="username" placeholder="Enter Username" required>
                    </div>
                    
                    <div class="input-group">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="password" placeholder="Enter Password" required>
                    </div>
                    
                    <button type="submit" class="login-btn">
                        <i class="fas fa-sign-in-alt"></i> Login to Dashboard
                    </button>
                </form>
                
                <div id="loginError" class="error-message">
                    Invalid credentials. Please try again!
                </div>
                
                <!-- UPDATED: Cleaned up login info -->
                <div class="login-info">
                    <p><strong>Contact administrator for login credentials</strong></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Content (Hidden until login) -->
    <div class="main-content" id="mainContent">
        <div class="bg-shape shape1"></div>
        <div class="bg-shape shape2"></div>
        <div class="bg-shape shape3"></div>
        <div class="bg-shape shape4"></div>

        <div class="container">
            <header>
                <div class="logo-section">
                    <div class="logo-container">
                        <img src="https://i.ibb.co.com/TGk80qf/IMG-3527.jpg" alt="CSE Logo" class="logo">
                    </div>
                    <div class="header-text">
                        <h2>Computer Science & Engineering</h2>
                        <small>Pabna University of Science & Technology</small>
                    </div>
                </div>
                <div class="header-right-section">
                    <div class="time" id="time"></div>
                    <!-- User Info Panel (Visible after login) - Now below time -->
                    <div class="user-info" id="userInfo" style="display: none;">
                        <div class="user-avatar" id="userAvatar">C</div>
                        <button class="logout-btn" id="logoutBtn">
                            <i class="fas fa-sign-out-alt"></i> Logout
                        </button>
                    </div>
                </div>
            </header>

            <div class="hero-section">
                <h1>CSE Department Students</h1>
                <div class="session-info">
                    <strong>Session:</strong> 2024-2025
                </div>
                
                <div class="search-box">
                    <input type="text" id="search" placeholder="Search by name or student ID...">
                    <i class="fa-solid fa-search"></i>
                </div>

                <div class="stats">
                    <h2 id="totalCount">36</h2>
                    <p>Total Students</p>
                </div>
            </div>

            <div class="student-grid" id="studentGrid"></div>

            <footer>
                <p>&copy; <span id="year"></span> Pabna University of Science & Technology. All rights reserved.</p>
                <div class="footer-divider"></div>
                <p>Computer Science & Engineering Department</p>
            </footer>
        </div>

        <div id="toast" class="toast">
            <i class="fa-solid fa-check-circle"></i>
            <span id="toast-text"></span>
        </div>
    </div>

    <script>
        // Database of valid users - Now only one user with encrypted password
        const validUsers = [
            { 
                username: 'cse17', 
                password: 'cHJpbWUxNw==',
                displayName: 'CSE 17 Batch' 
            }
        ];

        function decodePassword(encoded) {
            return atob(encoded);
        }

        // DOM Elements
        const loginModal = document.getElementById('loginModal');
        const mainContent = document.getElementById('mainContent');
        const userInfo = document.getElementById('userInfo');
        const userAvatar = document.getElementById('userAvatar');
        const loginForm = document.getElementById('loginForm');
        const loginError = document.getElementById('loginError');
        const logoutBtn = document.getElementById('logoutBtn');
        const currentYear = new Date().getFullYear();

        // Check if user is already logged in
        function checkLoginStatus() {
            const isLoggedIn = localStorage.getItem('cseLoggedIn');
            const username = localStorage.getItem('cseUsername');
            const displayName = localStorage.getItem('cseDisplayName');
            
            if (isLoggedIn === 'true' && username === 'cse17') {
                showMainContent(username, displayName);
            } else {
                showLoginModal();
            }
        }

        // Show login modal
        function showLoginModal() {
            loginModal.style.display = 'flex';
            mainContent.style.display = 'none';
            userInfo.style.display = 'none';
        }

        // Show main content after login
        function showMainContent(username, displayName) {
            loginModal.style.display = 'none';
            mainContent.style.display = 'block';
            userInfo.style.display = 'flex';
            
            // Set user avatar with first letter
            if (displayName) {
                userAvatar.textContent = displayName.charAt(0).toUpperCase();
            } else {
                userAvatar.textContent = username.charAt(0).toUpperCase();
            }
            
            // Initialize the rest of the application
            initializeApp();
        }

        // Handle login form submission
        loginForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();
            
            const user = validUsers.find(u => 
                u.username === username && 
                decodePassword(u.password) === password
            );
            
            if (user) {
                // Successful login
                localStorage.setItem('cseLoggedIn', 'true');
                localStorage.setItem('cseUsername', username);
                localStorage.setItem('cseDisplayName', user.displayName);
                
                showToast('Login successful! Welcome ' + user.displayName);
                showMainContent(username, user.displayName);
            } else {
                // Failed login
                loginError.style.display = 'block';
                setTimeout(() => {
                    loginError.style.display = 'none';
                }, 3000);
            }
        });

        // Handle logout
        logoutBtn.addEventListener('click', function() {
            localStorage.removeItem('cseLoggedIn');
            localStorage.removeItem('cseUsername');
            localStorage.removeItem('cseDisplayName');
            
            showToast('Logged out successfully!');
            showLoginModal();
            
            // Clear form fields
            document.getElementById('username').value = '';
            document.getElementById('password').value = '';
        });

        // Toast notification function
        function showToast(message) {
            const toast = document.getElementById("toast");
            document.getElementById("toast-text").textContent = message;
            toast.className = "toast show";
            setTimeout(() => {
                toast.className = toast.className.replace("show", "");
            }, 2500);
        }

        // Initialize the main application
        function initializeApp() {
            // Set current year in footer
            document.getElementById("year").textContent = currentYear;
            
            // Initialize time display
            function updateTime() {
                const now = new Date();
                document.getElementById('time').innerHTML = 
                    now.toLocaleTimeString() + "<br>" + 
                    now.toLocaleDateString(undefined, {
                        weekday: 'short',
                        month: 'short',
                        day: 'numeric',
                        year: 'numeric'
                    });
            }
            
            setInterval(updateTime, 1000);
            updateTime();
            
            // Initialize student directory
            renderStudents();
            
            // Add search functionality
            document.getElementById('search').addEventListener('input', (e) => {
                renderStudents(e.target.value.toLowerCase());
            });
        }

        // Student data and rendering functions (from original code)
        const students = [
            { id: 1, name: "Akhi Aktar Mim", 
studentId: "250101"
,currentAddress: "Mujahid Club, Pabna",
 permanentAddress: "Mujahid Club, Pabna", 
phone: "01612-036386", 
facebook: "https://www.facebook.com/share/1CyTKKR7tL/", 
email: "mimakhiaktar8@gmail.com", bloodGroup: "B+", 
photo: "https://i.ibb.co.com/v43BzynP/IMG-3548.jpg"},
            { id: 2, name: "Md. Nasir Uddin Nafiz ", studentId: "250103",currentAddress: "Mohisher Dipo, Pabna", permanentAddress: "Shariakandi,  Bogura", phone: "01723541919", facebook: "https://www.facebook.com/share/17iXMSgbvs/", email: "nasiruddin.nfz21@gmail.com", bloodGroup: "A+", photo: "https://i.ibb.co.com/ymvgYfMt/att-8c4v4vex97gc0-TXIg-KKUc-U7-YTa-k-MN-Kj-B27-Oa-Fr-Fk.jpg"},
            { id: 3, name: "Amit Kumar Dhali", studentId: "250104",currentAddress: "Terminal, Pabna", permanentAddress: "Paikgacha, Khulna", phone: "01533878366", facebook: "https://www.facebook.com/amitdhali.dhali.5", email: "amitdhali1002@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/B2RsbbhN/IMG-3570.jpg"},
            { id: 4, name: "Md. Shafayat Ahmed", studentId: "250105",currentAddress: "Monsurabad, Pabna", permanentAddress: "Niamatpur, Naogaon", phone: "01559704798", facebook: "https://www.facebook.com/share/1HJih8u9DS/", email: "ahmedshafayat959@gmail.com", bloodGroup: "O+", photo:"https://i.ibb.co.com/JRdDJvDZ/IMG-3583.jpg"},
            { id: 5, name: "Toufique Al Imran", studentId: "250106",currentAddress: "Mahtab tower, Pabna", permanentAddress: "Mohadevpur, Naogaon", phone: "01721798790", facebook: "https://www.facebook.com/toufiquealimran548", email: "toufiquealimran01@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/9k1WNbfg/IMG-3556.jpg"},
            { id: 6, name: "Apurba Kumar", studentId: "250107",currentAddress: "Radhanagar, Pabna", permanentAddress: "Raninagar, Naogaon", phone: "01771076379", facebook: "https://www.facebook.com/share/1BYvu47bW7/", email: "apurbakumar340@gmail.com", bloodGroup: "O+", photo: "https://i.ibb.co.com/5hTg980G/a975a75e-d467-4b93-bfd1-3ab43bb0dad5.jpg"},
            { id: 7, name: "MD. MUHIBUR RAHMAN BHUIYAN", studentId: "250108",currentAddress: "Mujahid Club", permanentAddress: "Dhaka", phone: "01929354030", facebook: "https://www.facebook.com/md.antik.213468", email: "muhibur1109@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/934LjpbC/IMG-3568.jpg"},
            { id: 8, name: "Md. Faruk Hossain", studentId: "250109",currentAddress: "Rajapur, Pabna", permanentAddress: "Birampur, Dinajpur", phone: "01516595496", facebook: "https://www.facebook.com/profile.php?id=100057254032930", email: "faruk1572005@gmail.com", bloodGroup: "O+", photo: "https://i.ibb.co.com/LzFVsGwy/att-TQq-VL-nu-Cxb-G9-WAq-ETQ-Ld2uxr2-D9yv-Hp-KQ-Yh-VHr8g.jpg"},
            { id: 9, name: "Upama Saha", studentId: "250110",currentAddress: "Munsurabad, Pabna", permanentAddress: "Tangail", phone: "01327221457", facebook: "https://www.facebook.com/share/16kouSyzwK/?mibextid=wwXIfr", email: "uparnasaha0@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/jZgKZd76/att-f-ZDh-Nb-4-RDz1-F5-KBv43zl108bm-ABn-k-KRng-W-tu-YCDc.jpg" },
            { id: 10, name: "Md. Mahfil Akter", studentId: "250111",currentAddress: "Mohisher Dipo", permanentAddress: "Naogaon", phone: "01716175548", facebook: "https://www.facebook.com/share/1HtVvXPhgA/", email: "mdmahfilakter@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/3mFNptF3/IMG-3540.jpg"},
            { id: 11, name: "Md. Asadullah Atik",
studentId: "250112",
currentAddress: "Talbagan, Pabna",
permanentAddress: "Dinajpur",
phone: "01874175415", facebook: "https://www.facebook.com/realasadullahatik",
 email: "atikcsepust@gmail.com",
 bloodGroup: "O+",
 photo: "https://i.ibb.co.com/zTd6k6Zj/IMG-3563.jpg"},
            { id: 12, name: "Avijit Biswas", studentId: "250113",currentAddress: "Meril Bypass", permanentAddress: "Jashore", phone: "01902340202", facebook: "https://www.facebook.com/ovi.jit.3950", email: "avijit90321jsr@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/ycf5FtD3/a92c1e46-c270-47b2-82e7-4c9b4e81b370.jpg"},
            { id: 13, name: "Mst. Sumaiya Islam", studentId: " 250114",currentAddress: " Rajapur,Pabna", permanentAddress: " Gazipur Sadar,Gazipur", phone: " 01924465889", facebook: " https://www.facebook.com/sumaiya.islam.272223", email: "mst.sumaiyaislam424@gmail.com", bloodGroup: "AB+", photo: "https://i.ibb.co.com/mrmpp1dF/IMG-3561.jpg" },
            { id: 14, name: "Rima Jahan", studentId: "250115",currentAddress: "Forida Tower", permanentAddress: "Thakurgaon ", phone: "01909197188", facebook: "https://www.facebook.com/share/1AvdJzXmuB/", email: "rimajahansdp@gmail.com", bloodGroup: "B+", photo: ""},
            { id: 15, name: "MST. URMILA KHATUN", studentId: "250116",currentAddress: "Farida Tower", permanentAddress: "Naldanga, Natore", phone: "01626273480", facebook: "https://www.facebook.com/share/1AgvF7oeDv/", email: "urmilakhatun3456@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/7t4GfHvW/155ff202-f119-43bf-96f2-e8d4b47dac7a.jpg"},
            { id: 16, name: "MD. Forhad Zaman", studentId: "250117",currentAddress: "Homoepathic Medical Mor", permanentAddress: "Godagari, Rajshahi", phone: "01630743003", facebook: "https://www.facebook.com/Forhad.pust.cse17", email: "forhad.af0@gmail.com", bloodGroup: "A+", photo: "https://i.ibb.co.com/pvg7rxVJ/IMG-3578.jpg"},
            { id: 17, name: "MD.SOYAB HOSSAIN", studentId: "250119",currentAddress: "Mahtab Tower, Pabna", permanentAddress: "Sirajganj", phone: "01571054693", facebook: "https://www.facebook.com/profile.php?id=61578380370457", email: "soyab119678@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/KjrJ0z7F/IMG-3595.jpg"},
            { id: 18, name: "Asmaul Husna",
studentId: "250120",
currentAddress: "Rajapur, Pabna",
permanentAddress: "Tangail",
phone: "01743253000",
facebook: "https://www.facebook.com/share/1C493KXREL/",
email: "springshadow29@gmail.com",
bloodGroup: "B+",
photo: "https://i.ibb.co.com/Kz8MHrWr/att-0hp-PR7z4-WQOTrt293pm-XV7-EWb-T26-SGs-Rhsb-ZOMj-PPg0.jpg"},
            { id: 19, name: "MD. NAHIDUL ISLAM", studentId: "250121",currentAddress: "Mohendropur, Pabna", permanentAddress: "Santhia, Pabna", phone: "01834145283", facebook: "https://www.facebook.com/nahidul.cse.pust", email: "nayeem5650@outlook.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/mCTPBwM6/fbc0d8ae-16d5-46fc-9353-2066456953ad.jpg"},
            { id: 20, name:"Salauddin Ayyuve", studentId:"250122",currentAddress:"Mujahid Club", permanentAddress: "Shajadpure,Sirajganj ", phone: "01318856637", facebook: "https://www.facebook.com/share/17agXG6z6T/ ", email: "salauddinaiuve@gmail.com", bloodGroup: "B-", photo: "https://i.ibb.co.com/wZfKNsX6/477d429fd66df236ba92a46270e7b9d4.jpg"},
            {id : 21, name : "Zahin Mahmud Daiyan", studentId : "250123", currentAddress : "Mahtab Tower, Pabna", permanentAddress : "Mohonpur, Natore", phone : "01701299258", facebook : "https://www.facebook.com/zahin.mahmud.daiyan.CSE.PUST", email : "zahinmahmuddaiyan271@gmail.com", bloodGroup : "O+", photo : "https://i.ibb.co.com/hRX7T65C/IMG-3538.jpg"},            { id: 22, name: "Mst. Khandakar  Jahida", studentId: "250124",currentAddress: "Munsurabad, Pabna", permanentAddress: "Polastoli, Tangail", phone: "01303341680", facebook: "https://www.facebook.com/share/1FBAjWHw1W/", email: "mstkhandakerjahida@gmail", bloodGroup: "O+", photo: "https://i.ibb.co.com/5xS6Gy7J/IMG-3587.jpg"},
            { id: 23, name: "SHAHID-HASAN-FAHIM", studentId: "250125",currentAddress: "Mujahid Club", permanentAddress: "Nilphamari", phone: "01720988987", facebook: "https://www.facebook.com/share/1HLGbwMiFn/", email: "shfahimf@gmail.com", bloodGroup: "o+", photo: "https://i.ibb.co.com/Y7C5pXDJ/IMG-3535.jpg"},
            { id: 24, name : "Fatema",
studentId: "250127",
currentAddress: "Rajapur, Pabna",
permanentAddress : "Mirzapur, Tangail ",
email : "mdalommiya205@gmail",
phone: "01605991240",
bloodGroup: "AB+",
facebook : "https://www.facebook.com/share/17nodFe5rp/",
photo: "https://i.ibb.co.com/fdxrnqkn/IMG-3565.jpg"},
            { id: 25, name: "Mst.Soheli Aktar Akhi", 
studentId: "250128",
currentAddress: "Degree Bot tola, Pabna" ,
permanentAddress: "Bera,Pabna",
phone: "01875768594", facebook: "https://www.facebook.com/share/1Adm7jw1kh/", email: "soheliakhi999@gmail.com ",
bloodGroup: "AB+",
 photo:"https://i.ibb.co.com/mrW07ccY/IMG-3554.jpg"},
            { id: 26, name: "Khandaker Saiful Islam Tanvir", studentId: "250130",currentAddress: "Mujahid Club", permanentAddress: "Muradnagar, Cumilla", phone: "01602032209", facebook: "https://www.facebook.com/share/1AXbodyPma/", email: "Khandakertanvir151@gmail.com ", bloodGroup: "B+", photo: "https://i.ibb.co.com/5hc5PgvV/IMG-3530.jpg"},
            { id: 27, name: "Md. Riyaz Ali", studentId: " 250132",currentAddress: " Mujahid Club", permanentAddress: "Rajshahi", phone: "01751812046", facebook: " https://www.facebook.com/share/17wXYyanuL/", email: "mdriyazali531@gmail.com", bloodGroup: "O+", photo: "https://i.ibb.co.com/fGMRnsgj/IMG-3533.jpg"},
            { id: 28, name: "Sahadat Hossain", studentId: "250133",currentAddress: "Mahtab Tower, Pabna", permanentAddress: "Narsingdi", phone: "01994728770", facebook: "https://www.facebook.com/share/1BDsbwm6Lg/", email: "sahadathossain8162@gmail.com", bloodGroup: "O+", photo:"https://i.ibb.co.com/SXJSRnbp/IMG-3580.jpg"},
            { id: 29, name: "Jagojit Chandro Barmon (Niloy)", studentId: "250134",currentAddress: "Rothghor, Pabna", permanentAddress: "Kurigram", phone: "01737232248", facebook: "https://www.facebook.com/niloy.roy.327548", email: "jagojitchandro@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/MD9hqp2z/8a8f5f2a-e6b3-43fa-8b83-1bb6ecb1dc6a.jpg"},
            { id: 30, name: "Nuruzzaman Nahid", studentId: "250135",currentAddress: "Mujahid Club", permanentAddress: "Jhenaidah", phone: "01516582229", facebook: "https://www.facebook.com/share/1BuGmo5qHY/", email: "nahid3739u@gmail.com", bloodGroup: "B+", photo: "https://i.ibb.co.com/HvtshpJ/IMG-3589.jpg"},
            { id: 31, name: "Sameeha Zahan Mridula",
studentId: "250136",
currentAddress: "Mansurabad - 5, Pabna",
permanentAddress: "Bera (North), Pabna",
phone: "01950-377978", 
facebook: "https://www.facebook.com/sameeha.mridula", 
email: "sameehamridula@gmail.com", 
bloodGroup: "B+",
photo: "https://i.ibb.co.com/Sw9SjzQZ/IMG-3552.jpg"},
            { id: 32, name: "Mohd. Atiquzzaman Atiq", studentId: "250137",currentAddress: "Mahtab Tower, Pabna", permanentAddress: "Chapainawabganj", phone: "01331945616", facebook: "https://www.facebook.com/profile.php?id=61578032794410", email: "ahmedatik5616@gmail.com", bloodGroup: "B+", photo:"https://i.ibb.co.com/Q7mxsLYg/IMG-3591.jpg"},
            { id: 33, name: "Samin Yesar Tousib ", studentId: "250138",currentAddress: "Mahtab Tower, Pabna", permanentAddress: "Guratipara Rangpur-5400", phone: "01318009252", facebook: "https://www.facebook.com/tousib.CSE.PUST", email: "tousibsaminyesar@gmail.com", bloodGroup: "AB+", photo: "https://i.ibb.co.com/WpKf38Tf/IMG-3550.jpg"},
            { id: 34, name: "Md. Iftekar Rahman (Riad)", studentId: "250139",currentAddress: "Mujahid Club, Pabna", permanentAddress: "Rajshahi", phone: "01610077278", facebook: "https://www.facebook.com/share/1B5j9PeiVu/?mibextid=wwXIfr", email: "riadraj009@gmail.com", bloodGroup: "A+", photo: "https://i.ibb.co.com/xKvjx11D/IMG-2457.jpg" },
            { id: 35, name: "Azizul Hoque Emon",
studentId: "250140",
currentAddress: "Homeopathy Moore",
permanentAddress: "Cox's Bazar",
phone: "01576688477",
facebook: "https://www.facebook.com/profile.php?id=100074429367529",
email: "azizulhoqueemon634@gmail.com",
bloodGroup: "A+",
photo: "https://i.ibb.co.com/8DMtgncZ/e85606f6-c293-4b97-9e7d-2da222c7bf0c.jpg"},
            { id: 36, name: "Mst. Johura Khatun", studentId: "250141",currentAddress: "Rajapur, Pabna", permanentAddress: "Rajapur, Pabna", phone: "01752403522", facebook: "https://www.facebook.com/share/1DSpnpcvsY/",email: "fatematujjohura819@gmail.com", bloodGroup: "O+", photo: "https://i.ibb.co.com/6c5JCZzW/IMG-3597.jpg"}
        ];

        function getInitials(name) {
            return name.split(" ").map(w => w[0]).join("").toUpperCase();
        }

        function copyText(text) {
            navigator.clipboard.writeText(text).then(() => showToast(`${text} copied!`));
        }

        function renderStudents(filter = "") {
            const grid = document.getElementById('studentGrid');
            grid.innerHTML = '';
            let count = 0;

            students.forEach(student => {
                if (student.name.toLowerCase().includes(filter) || 
                    student.studentId.toLowerCase().includes(filter)) {
                    
                    const card = document.createElement('div');
                    card.className = 'student-card';
                    
                    const photoHTML = student.photo 
                        ? `<img src="${student.photo}" alt="${student.name}" class="student-photo" onerror="this.parentElement.innerHTML='<div class=\\'initials\\'>${getInitials(student.name)}</div>'">`
                        : `<div class="initials">${getInitials(student.name)}</div>`;
                    
                    card.innerHTML = `
                        <div class="photo-container">
                            ${photoHTML}
                            <div class="photo-overlay"></div>
                        </div>
                        <div class="student-info">
                            <div class="student-name">${student.name}</div>
                            <div class="student-id"><i class="fa-solid fa-id-card"></i> ${student.studentId}</div>
                            ${student.currentAddress ? `
                                <div class="info-item">
                                    <i class="fa-solid fa-location-dot icon-current"></i>
                                    <span>Current: ${student.currentAddress}</span>
                                </div>
                            ` : ''}
                            ${student.permanentAddress ? `
                                <div class="info-item">
                                    <i class="fa-solid fa-house icon-permanent"></i>
                                    <span>Permanent: ${student.permanentAddress}</span>
                                </div>
                            ` : ''}
                            ${student.phone ? `
                                <div class="info-item">
                                    <i class="fa-solid fa-phone icon-phone"></i>
                                    <span>${student.phone}</span>
                                    <button class="copy-btn" onclick="copyText('${student.phone}')">
                                        <i class="fa-regular fa-copy"></i>
                                    </button>
                                </div>
                            ` : ''}
                            ${student.facebook ? `
                                <div class="info-item">
                                    <i class="fa-brands fa-facebook icon-facebook"></i>
                                    <a href="${student.facebook}" target="_blank" style="color: #1877f2; text-decoration: none;">Facebook</a>
                                    <button class="copy-btn" onclick="copyText('${student.facebook}')">
                                        <i class="fa-regular fa-copy"></i>
                                    </button>
                                </div>
                            ` : ''}
                            ${student.email ? `
                                <div class="info-item">
                                    <i class="fa-solid fa-envelope icon-email"></i>
                                    <span>${student.email}</span>
                                    <button class="copy-btn" onclick="copyText('${student.email}')">
                                        <i class="fa-regular fa-copy"></i>
                                    </button>
                                </div>
                            ` : ''}
                            ${student.bloodGroup ? `
                                <div class="info-item">
                                    <i class="fa-solid fa-tint icon-blood"></i>
                                    <span>Blood: ${student.bloodGroup}</span>
                                </div>
                            ` : ''}
                        </div>
                    `;
                    grid.appendChild(card);
                    count++;
                }
            });
            
            document.getElementById('totalCount').textContent = count;
        }

        // Initialize on page load
        document.addEventListener('DOMContentLoaded', checkLoginStatus);
    </script>
</body>
</html>
