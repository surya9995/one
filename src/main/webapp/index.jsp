<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ClassicShop · timeless e‑commerce</title>
    <!-- classic, warm, user‑friendly vibe -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz@14..32;400;500;600;700&family=Merriweather:ital,wght@0,700;1,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        /* ----- reset & base ----- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Inter', -apple-system, sans-serif;
            background: #f8f6f2;
            color: #1e1e2a;
            line-height: 1.5;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            font: inherit;
            cursor: pointer;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font: inherit;
        }

        /* ----- container & utilities ----- */
        .container {
            max-width: 1240px;
            margin: 0 auto;
            padding: 0 20px;
        }
        .flex {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .flex-between {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            flex-wrap: wrap;
        }
        .text-muted {
            color: #5e5e72;
        }
        .text-sm {
            font-size: 0.9rem;
        }

        /* ----- classic buttons ----- */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 10px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: all 0.2s ease;
            border: 2px solid transparent;
        }
        .btn-primary {
            background: #b75d4a;
            color: #fff;
            border-color: #b75d4a;
        }
        .btn-primary:hover {
            background: #9e4b3a;
            border-color: #9e4b3a;
            box-shadow: 0 6px 16px rgba(183, 93, 74, 0.25);
            transform: translateY(-2px);
        }
        .btn-outline {
            background: transparent;
            color: #1e1e2a;
            border-color: #d0cdc4;
        }
        .btn-outline:hover {
            background: #1e1e2a;
            color: #fff;
            border-color: #1e1e2a;
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.3);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.25);
        }
        .btn-sm {
            padding: 6px 18px;
            font-size: 0.85rem;
        }

        /* ----- header (classic) ----- */
        header {
            background: #ffffffec;
            backdrop-filter: blur(6px);
            border-bottom: 1px solid #eae7df;
            position: sticky;
            top: 0;
            z-index: 40;
        }
        .header-inner {
            padding: 10px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            flex-wrap: wrap;
        }
        .brand {
            font-weight: 700;
            font-size: 1.6rem;
            letter-spacing: -0.5px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .brand i {
            color: #b75d4a;
            font-size: 1.8rem;
        }
        .brand span {
            color: #2c2c3e;
        }
        .brand .accent {
            color: #b75d4a;
        }

        nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
        }
        nav ul li a {
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.92rem;
            color: #4f4f64;
            transition: 0.2s;
        }
        nav ul li a:hover,
        nav ul li a.active {
            background: #f0ede7;
            color: #1e1e2a;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 60px;
            font-size: 1.2rem;
            color: #4f4f64;
            transition: 0.2s;
            position: relative;
        }
        .icon-btn:hover {
            background: #f0ede7;
            color: #1e1e2a;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: #b75d4a;
            color: #fff;
            font-size: 0.7rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 60px;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }
        .search-wrap {
            background: #f0ede7;
            border-radius: 60px;
            padding: 0 14px 0 20px;
            display: flex;
            align-items: center;
            border: 2px solid transparent;
            transition: 0.2s;
            min-width: 180px;
        }
        .search-wrap:focus-within {
            border-color: #b75d4a;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(183, 93, 74, 0.12);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            padding: 10px 0;
            outline: none;
            width: 100%;
            font-size: 0.92rem;
        }
        .search-wrap input::placeholder {
            color: #8f8fa3;
        }
        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: #6f6f84;
            transition: 0.2s;
        }
        .search-wrap button:hover {
            color: #b75d4a;
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 60px;
            background: #f0ede7;
            font-size: 1.3rem;
        }
        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid #eae7df;
            padding: 12px 0 20px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 12px 16px;
            border-radius: 16px;
            font-weight: 500;
            color: #1e1e2a;
        }
        #mobileMenu ul li a:hover {
            background: #f0ede7;
        }
        #mobileMenu ul li a i {
            width: 24px;
            color: #6f6f84;
        }

        /* ----- hero (classic) ----- */
        .hero {
            background: #eae7df;
            border-radius: 28px;
            margin: 16px 16px 0;
            padding: 48px 40px;
            position: relative;
            overflow: hidden;
            background: linear-gradient(145deg, #d6d0c4, #e8e2d8);
        }
        .hero .content {
            max-width: 580px;
        }
        .hero .badge {
            display: inline-block;
            background: #b75d4a20;
            color: #b75d4a;
            padding: 4px 18px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.8rem;
            letter-spacing: 0.4px;
            margin-bottom: 10px;
        }
        .hero h1 {
            font-family: 'Merriweather', serif;
            font-size: 2.8rem;
            font-weight: 700;
            line-height: 1.2;
            color: #1e1e2a;
            margin-bottom: 10px;
        }
        .hero p {
            font-size: 1.05rem;
            color: #3a3a4e;
            max-width: 440px;
            margin-bottom: 20px;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ----- section ----- */
        .section {
            padding: 48px 0;
        }
        .section-title {
            font-family: 'Merriweather', serif;
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 6px;
        }
        .section-sub {
            color: #5e5e72;
            margin-bottom: 28px;
        }
        .section-head {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            flex-wrap: wrap;
            margin-bottom: 28px;
        }
        .view-link {
            font-weight: 600;
            color: #b75d4a;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: 0.2s;
            white-space: nowrap;
        }
        .view-link:hover {
            gap: 12px;
            color: #9e4b3a;
        }

        /* ----- categories (classic grid) ----- */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: #fff;
            border-radius: 24px;
            padding: 24px 12px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
            transition: 0.2s;
            border: 2px solid transparent;
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-4px);
            border-color: #d6cdc0;
            box-shadow: 0 12px 28px rgba(0, 0, 0, 0.06);
        }
        .cat-card .icon {
            width: 56px;
            height: 56px;
            border-radius: 60px;
            background: #f0ede7;
            display: grid;
            place-items: center;
            margin: 0 auto 10px;
            font-size: 1.6rem;
            color: #b75d4a;
            transition: 0.2s;
        }
        .cat-card:hover .icon {
            background: #b75d4a;
            color: #fff;
        }
        .cat-card h4 {
            font-weight: 600;
            font-size: 0.95rem;
        }
        .cat-card .count {
            color: #7a7a8e;
            font-size: 0.8rem;
        }

        /* ----- products (classic) ----- */
        .prod-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .prod-card {
            background: #fff;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
            transition: 0.25s;
            border: 2px solid transparent;
            display: flex;
            flex-direction: column;
        }
        .prod-card:hover {
            transform: translateY(-6px);
            border-color: #d6cdc0;
            box-shadow: 0 16px 36px rgba(0, 0, 0, 0.06);
        }
        .prod-card .img-wrap {
            background: #f4f1eb;
            aspect-ratio: 1/1;
            position: relative;
            overflow: hidden;
        }
        .prod-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .prod-card:hover .img-wrap img {
            transform: scale(1.03);
        }
        .prod-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #b75d4a;
            color: #fff;
            padding: 3px 14px;
            border-radius: 60px;
            font-size: 0.7rem;
            font-weight: 700;
        }
        .prod-card .badge.sale {
            background: #d4a373;
            color: #1e1e2a;
        }
        .prod-card .wish {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 34px;
            height: 34px;
            background: rgba(255, 255, 255, 0.85);
            border-radius: 60px;
            display: grid;
            place-items: center;
            color: #6f6f84;
            transition: 0.2s;
            backdrop-filter: blur(4px);
        }
        .prod-card .wish:hover {
            background: #fff;
            color: #b75d4a;
        }
        .prod-card .body {
            padding: 14px 16px 8px;
            flex: 1;
        }
        .prod-card .body .cat-tag {
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.3px;
            color: #8f8fa3;
            font-weight: 600;
        }
        .prod-card .body h5 {
            font-weight: 600;
            font-size: 1rem;
            margin: 4px 0 6px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .prod-card .body .price {
            font-weight: 700;
            font-size: 1.2rem;
            color: #1e1e2a;
        }
        .prod-card .body .old {
            color: #8f8fa3;
            text-decoration: line-through;
            font-size: 0.9rem;
            margin-left: 8px;
            font-weight: 400;
        }
        .prod-card .body .stars {
            color: #d4a373;
            font-size: 0.85rem;
            letter-spacing: 1px;
        }
        .prod-card .body .stars span {
            color: #6f6f84;
            margin-left: 4px;
        }
        .prod-card .footer {
            padding: 8px 16px 16px;
        }
        .prod-card .footer .add-btn {
            width: 100%;
            padding: 10px;
            background: #1e1e2a;
            color: #fff;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.9rem;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .prod-card .footer .add-btn:hover {
            background: #b75d4a;
            transform: scale(1.02);
        }
        .prod-card .footer .add-btn.added {
            background: #3d7a6b;
        }

        /* ----- deal (classic) ----- */
        .deal-wrap {
            display: flex;
            background: #fff;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.04);
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: #eae7df;
            min-height: 260px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            padding: 36px 40px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            background: #d4a373;
            color: #1e1e2a;
            padding: 4px 18px;
            border-radius: 60px;
            font-weight: 700;
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-family: 'Merriweather', serif;
            font-size: 1.8rem;
            margin-bottom: 4px;
        }
        .deal-wrap .deal-content .desc {
            color: #4f4f64;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 2rem;
            font-weight: 800;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 1.2rem;
            font-weight: 400;
            text-decoration: line-through;
            color: #8f8fa3;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            color: #4f4f64;
            font-size: 0.9rem;
            margin: 2px 0 14px;
        }
        .deal-wrap .deal-content .stock strong {
            color: #b75d4a;
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 10px 0 16px;
        }
        .timer-box {
            background: #1e1e2a;
            color: #fff;
            padding: 8px 14px;
            border-radius: 16px;
            min-width: 60px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 1.4rem;
            font-weight: 700;
            line-height: 1.3;
        }
        .timer-box .label {
            font-size: 0.65rem;
            text-transform: uppercase;
            opacity: 0.7;
        }

        /* ----- testimonials (classic) ----- */
        .testi-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 4px 2px 16px;
            scroll-snap-type: x mandatory;
        }
        .testi-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testi-scroll::-webkit-scrollbar-thumb {
            background: #d6cdc0;
            border-radius: 60px;
        }
        .testi-card {
            flex: 0 0 320px;
            background: #fff;
            border-radius: 24px;
            padding: 24px 26px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
            scroll-snap-align: start;
            transition: 0.2s;
        }
        .testi-card:hover {
            box-shadow: 0 12px 28px rgba(0, 0, 0, 0.06);
        }
        .testi-card .stars {
            color: #d4a373;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }
        .testi-card blockquote {
            font-style: italic;
            color: #1e1e2a;
            margin-bottom: 12px;
            font-size: 0.95rem;
        }
        .testi-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testi-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 60px;
            object-fit: cover;
            background: #f0ede7;
        }
        .testi-card .author .name {
            font-weight: 600;
            font-size: 0.95rem;
        }
        .testi-card .author .role {
            font-size: 0.8rem;
            color: #6f6f84;
        }

        /* ----- newsletter (classic) ----- */
        .newsletter {
            background: #1e1e2a;
            border-radius: 28px;
            padding: 40px 48px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 28px;
            flex-wrap: wrap;
        }
        .newsletter .text h3 {
            font-family: 'Merriweather', serif;
            font-size: 1.8rem;
        }
        .newsletter .text p {
            opacity: 0.75;
        }
        .newsletter form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter form input {
            flex: 1;
            min-width: 180px;
            padding: 12px 20px;
            border-radius: 60px;
            border: 0;
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            transition: 0.2s;
            outline: 2px solid transparent;
        }
        .newsletter form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter form input:focus {
            outline-color: #b75d4a;
            background: rgba(255, 255, 255, 0.18);
        }
        .newsletter form .btn {
            background: #b75d4a;
            color: #fff;
            border-color: #b75d4a;
        }
        .newsletter form .btn:hover {
            background: #9e4b3a;
        }
        #newsletterMsg {
            margin-top: 10px;
            font-size: 0.9rem;
            width: 100%;
        }

        /* ----- footer (classic) ----- */
        footer {
            padding: 40px 0 24px;
            border-top: 1px solid #eae7df;
            margin-top: 8px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
            margin-bottom: 28px;
        }
        .footer-grid .brand-col .brand {
            font-size: 1.4rem;
            margin-bottom: 6px;
        }
        .footer-grid .brand-col p {
            color: #5e5e72;
            max-width: 260px;
            font-size: 0.9rem;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .footer-grid .brand-col .socials a {
            width: 38px;
            height: 38px;
            border-radius: 60px;
            background: #f0ede7;
            display: grid;
            place-items: center;
            color: #4f4f64;
            transition: 0.2s;
        }
        .footer-grid .brand-col .socials a:hover {
            background: #b75d4a;
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            margin-bottom: 10px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul li a {
            color: #5e5e72;
            font-size: 0.9rem;
            transition: 0.2s;
        }
        .footer-grid .col ul li a:hover {
            color: #b75d4a;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 18px;
            border-top: 1px solid #eae7df;
            color: #8f8fa3;
            font-size: 0.8rem;
        }

        /* ----- responsive (classic) ----- */
        @media (max-width: 1024px) {
            .prod-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .cat-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }
        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .prod-grid {
                grid-template-columns: 1fr 1fr;
                gap: 14px;
            }
            .cat-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }
            .hero {
                padding: 32px 24px;
                margin: 12px 12px 0;
            }
            .hero h1 {
                font-size: 2rem;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 200px;
            }
            .deal-wrap .deal-content {
                padding: 24px 24px;
            }
            .newsletter {
                padding: 28px 24px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 120px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .brand {
                font-size: 1.2rem;
            }
        }
        @media (max-width: 480px) {
            .prod-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero h1 {
                font-size: 1.6rem;
            }
            .hero p {
                font-size: 0.95rem;
            }
            .container {
                padding: 0 12px;
            }
            .section {
                padding: 28px 0;
            }
            .timer-box {
                min-width: 48px;
                padding: 4px 8px;
            }
            .timer-box .num {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <!-- header -->
    <header>
        <div class="container header-inner">
            <div class="flex">
                <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#"><i class="fas fa-store"></i><span>Classic<span class="accent">Shop</span></span></a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grid"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-comment"></i> Reviews</a></li>
                </ul>
            </nav>

            <div class="flex">
                <div class="search-wrap">
                    <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn"><i class="fas fa-bag-shopping"></i></button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- mobile menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grid"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-comment"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- hero -->
        <section class="hero">
            <div class="content">
                <div class="badge"><i class="fas fa-star"></i> timeless quality</div>
                <h1>Classic finds,<br />modern comfort</h1>
                <p>Carefully curated goods — free shipping on your first order.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-clock"></i> Deals</button>
                </div>
            </div>
        </section>

        <!-- categories -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-head">
                    <div><h2 class="section-title">Categories</h2><div class="section-sub">what are you looking for?</div></div>
                    <a href="#" class="view-link">All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="cat-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- products -->
        <section class="section" id="products">
            <div class="container">
                <div class="section-head">
                    <div><h2 class="section-title">Trending now</h2><div class="section-sub">popular picks</div></div>
                    <a href="#" class="view-link">View all <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="prod-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- deal -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-head">
                    <div><h2 class="section-title">⚡ Flash deal</h2><div class="section-sub">limited time</div></div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="laptop" loading="lazy" />
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Slim, powerful, and silent — the M2 chip changes everything.</p>
                        <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
                        <p class="stock">Only <strong>12</strong> left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- testimonials -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-head">
                    <div><h2 class="section-title">What customers say</h2><div class="section-sub">real reviews</div></div>
                </div>
                <div class="testi-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- newsletter -->
        <section class="section">
            <div class="container">
                <div class="newsletter">
                    <div class="text">
                        <h3>Stay in the loop</h3>
                        <p>Exclusive offers & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></
