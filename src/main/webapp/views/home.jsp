<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="antialiased">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Diles Job Portal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main.css">
</head>
<body class="bg-slate-50 text-slate-800 min-h-screen flex flex-col relative overflow-hidden">

    <!-- Custom Cursors -->
    <div id="cursor-dot" class="custom-cursor cursor-dot"></div>
    <div id="cursor-outline" class="custom-cursor cursor-outline"></div>

    <!-- Floating Background Icons -->
    <div class="fixed inset-0 overflow-hidden pointer-events-none z-0">
        <svg class="tech-icon float-slow pointer-events-auto" style="top: 15%; left: 10%; width: 60px; height: 60px;" viewBox="0 0 24 24" fill="none" stroke="#e76f00" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19.1 11.5v-.5c0-1.7-1.3-3-3-3h-1.6l-.3-1h-4.4l-.3 1H8c-1.7 0-3 1.3-3 3v.5c-1.7.3-3 1.8-3 3.5 0 2.2 1.8 4 4 4h9c2.2 0 4-1.8 4-4 0-1.7-1.3-3.2-3-3.5zm-5.1-4h-4l1-3h2l1 3zm-6 4h10c.6 0 1 .4 1 1v2c0 .6-.4 1-1 1H8c-.6 0-1-.4-1-1v-2c0-.6.4-1 1-1zm10 7H6v-1c0-.6.4-1 1-1h10c.6 0 1 .4 1 1v1zm-2 2H8v-1h6v1z"/></svg>
        <svg class="tech-icon float-fast pointer-events-auto" style="top: 25%; right: 15%; width: 80px; height: 80px; color: #61dafb" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="2"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(30 12 12)"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(150 12 12)"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(90 12 12)"/></svg>
        <svg class="tech-icon float-scale pointer-events-auto" style="bottom: 25%; left: 20%; width: 70px; height: 70px; color: #3776ab" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2c-5.5 0-10 4.5-10 10s4.5 10 10 10 10-4.5 10-10S17.5 2 12 2zm0 18c-4.4 0-8-3.6-8-8s3.6-8 8-8 8 3.6 8 8-3.6 8-8 8z"/><path d="M12 6c-2.2 0-4 1.8-4 4v2h8V10c0-2.2-1.8-4-4-4z"/><path d="M12 18c2.2 0 4-1.8 4-4v-2H8v2c0 2.2 1.8 4 4 4z"/></svg>
        <svg class="tech-icon float-slow pointer-events-auto" style="top: 10%; right: 40%; width: 50px; height: 50px; color: #ff9900" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 6s-2-2-6-2-6 2-6 2"/><path d="M2 18s2 2 6 2 6-2 6-2"/><path d="M12 10v4"/></svg>
        <svg class="tech-icon float-fast pointer-events-auto" style="bottom: 15%; right: 25%; width: 65px; height: 65px; color: #6db33f" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2C6.477 2 2 6.477 2 12s4.477 10 10 10 10-4.477 10-10S17.523 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M12 6c-3.309 0-6 2.691-6 6 0 1.93.914 3.642 2.321 4.757-.14-.543-.209-1.124-.209-1.748 0-4.008 3.58-7.257 8.006-7.257C15.86 6.845 14.032 6 12 6zm-1.882 11.243c.536.216 1.139.344 1.77.344 3.309 0 6-2.691 6-6 0-1.93-.914-3.642-2.321-4.758.14.543.209 1.124.209 1.748 0 4.008-3.58 7.257-8.006 7.257-.04.001-.08.003-.12.003-1.04-.153-1.956-.554-2.73-1.155.385.228.775.405 1.198.561z"/></svg>
        <svg class="tech-icon float-scale pointer-events-auto" style="bottom: 40%; right: 5%; width: 55px; height: 55px; color: #339933" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/></svg>
    </div>

    <!-- Navbar -->
    <nav class="sticky top-0 z-50 backdrop-blur-lg bg-white/80 border-b border-slate-200 shadow-sm relative z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <!-- Logo -->
                <div class="flex-shrink-0 flex items-center gap-2 interactive-btn">
                    <div class="w-8 h-8 bg-indigo-600 rounded-lg flex items-center justify-center text-white font-bold text-xl shadow-lg shadow-indigo-600/30">D</div>
                    <a href="home" class="font-bold text-xl tracking-tight text-slate-900">Diles Jobs</a>
                </div>
                <!-- Desktop Menu -->
                <div class="hidden md:flex space-x-8 items-center">
                    <a href="home" class="text-indigo-600 font-medium pb-5 pt-5 border-b-2 border-indigo-600 transition-colors interactive-btn">Home</a>
                    <a href="viewalljobs" class="text-slate-500 hover:text-indigo-600 font-medium transition-colors interactive-btn">All Jobs</a>
                    <a href="https://telusko.com/" target="_blank" class="text-slate-500 hover:text-indigo-600 font-medium transition-colors interactive-btn">Contact</a>
                    <a href="addjob" class="bg-indigo-600 hover:bg-indigo-700 text-white px-5 py-2 rounded-full font-medium transition duration-200 shadow-lg shadow-indigo-600/30 transform hover:-translate-y-0.5 interactive-btn">Post a Job</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <main class="flex-grow flex flex-col items-center justify-center relative px-4 py-20 z-10 w-full h-full">

        <div class="relative z-20 text-center max-w-3xl mx-auto mb-10">
            <span class="inline-block py-1 px-3 rounded-full bg-indigo-50 border border-indigo-100 text-indigo-600 text-sm font-semibold tracking-wide mb-5 shadow-sm backdrop-blur-sm animate-fade-in-up interactive-btn">Find Your Dream Role</span>
            
            <h1 class="text-5xl md:text-7xl font-extrabold text-slate-900 tracking-tight leading-normal md:leading-tight mb-2 animate-fade-in-up delay-100">
                The best jobs for
            </h1>
            
            <div class="min-h-[120px] flex justify-center items-center mb-8 animate-fade-in-up delay-200 px-4">
                <div class="text-4xl sm:text-5xl md:text-6xl lg:text-8xl p-2 drop-shadow-md font-black leading-tight text-center whitespace-nowrap">
                    <!-- Text gets gradient natively through CSS class -->
                    <span id="typewriter-text" class="typewriter-gradient"></span><span class="cursor-blink"></span>
                </div>
            </div>

            <p class="text-lg md:text-xl text-slate-600 mb-10 max-w-2xl mx-auto leading-relaxed font-medium animate-fade-in-up delay-300">
                Discover the perfect remote or on-site opportunity. Connect with fast-growing startups and established tech giants.
            </p>
            
            <div class="flex flex-col sm:flex-row items-center justify-center gap-4 animate-fade-in-up delay-300">
                <a href="viewalljobs" class="interactive-btn w-full sm:w-auto px-8 py-4 bg-indigo-600 text-white rounded-full font-semibold text-lg overflow-hidden transition-all duration-300 shadow-xl shadow-indigo-600/30 hover:shadow-indigo-600/50 hover:scale-105">
                    Explore Jobs
                </a>
                <a href="addjob" class="interactive-btn w-full sm:w-auto px-8 py-4 bg-white/90 backdrop-blur-sm hover:bg-white text-slate-700 border border-slate-200 rounded-full font-semibold text-lg transition-all duration-300 shadow-sm hover:shadow-md hover:scale-105">
                    Post an Opening
                </a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white/80 backdrop-blur-md border-t border-slate-200 py-8 mt-auto relative z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-slate-500 text-sm">
            &copy; 2026 Diles Job Portal. All rights reserved.
        </div>
    </footer>

    <!-- Scripts -->
    <script>
        (function() {
            // 1. Typing effect
            const textToType = "Top Developers.";
            const typingElement = document.getElementById('typewriter-text');
            let typeIndex = 0;
            let isDeleting = false;
            
            function typeWriter() {
                if (!typingElement) return;
                
                const currentText = isDeleting 
                    ? textToType.substring(0, typeIndex - 1)
                    : textToType.substring(0, typeIndex + 1);

                typingElement.textContent = currentText;

                let typingSpeed = isDeleting ? 40 : 120;

                if (!isDeleting && currentText === textToType) {
                    typingSpeed = 2500;
                    isDeleting = true;
                } else if (isDeleting && currentText === "") {
                    isDeleting = false;
                    typingSpeed = 500;
                }

                if (!isDeleting) {
                    typeIndex++;
                } else {
                    typeIndex--;
                }
                setTimeout(typeWriter, typingSpeed);
            }
            setTimeout(typeWriter, 500);

            // 2. Custom Cursor Logic
            const cursorDot = document.getElementById('cursor-dot');
            const cursorOutline = document.getElementById('cursor-outline');
            
            let mouseX = window.innerWidth / 2;
            let mouseY = window.innerHeight / 2;
            let outlineX = mouseX;
            let outlineY = mouseY;
            let isHovering = false;
            
            document.addEventListener('mousemove', (e) => {
                mouseX = e.clientX;
                mouseY = e.clientY;
                if (!isHovering) {
                    cursorDot.style.transform = `translate(${mouseX}px, ${mouseY}px) translate(-50%, -50%)`;
                }
            });

            function renderCursor() {
                outlineX += (mouseX - outlineX) * 0.2;
                outlineY += (mouseY - outlineY) * 0.2;
                
                cursorOutline.style.transform = `translate(${outlineX}px, ${outlineY}px) translate(-50%, -50%)${isHovering ? ' scale(1.5)' : ''}`;
                requestAnimationFrame(renderCursor);
            }
            requestAnimationFrame(renderCursor);

            // 3. Hover effects
            const interactiveElements = document.querySelectorAll('a, button, .interactive-btn, .tech-icon');
            
            interactiveElements.forEach(el => {
                el.addEventListener('mouseenter', () => {
                    isHovering = true;
                    cursorOutline.style.backgroundColor = 'rgba(79, 70, 229, 0.2)';
                    cursorDot.style.transform = `translate(${mouseX}px, ${mouseY}px) translate(-50%, -50%) scale(0)`;
                });
                el.addEventListener('mouseleave', () => {
                    isHovering = false;
                    cursorOutline.style.backgroundColor = 'rgba(79, 70, 229, 0.05)';
                    cursorDot.style.transform = `translate(${mouseX}px, ${mouseY}px) translate(-50%, -50%) scale(1)`;
                });
            });
            
            // Disable custom cursor on mobile touch devices
            if (!window.matchMedia("(pointer: fine)").matches) {
                cursorDot.style.display = 'none';
                cursorOutline.style.display = 'none';
            }
        })();
    </script>
</body>
</html>