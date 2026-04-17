<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="antialiased">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Jobs - Diles Portal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-slate-50 text-slate-800 min-h-screen flex flex-col">

    <!-- Navbar -->
    <nav class="sticky top-0 z-50 backdrop-blur-lg bg-white/70 border-b border-slate-200 shadow-sm">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <!-- Logo -->
                <div class="flex-shrink-0 flex items-center gap-2">
                    <div class="w-8 h-8 bg-indigo-600 rounded-lg flex items-center justify-center text-white font-bold text-xl shadow-lg shadow-indigo-600/30">D</div>
                    <a href="home" class="font-bold text-xl tracking-tight text-slate-900">Diles Jobs</a>
                </div>
                <!-- Desktop Menu -->
                <div class="hidden md:flex space-x-8 items-center">
                    <a href="home" class="text-slate-500 hover:text-indigo-600 font-medium transition-colors">Home</a>
                    <a href="viewalljobs" class="text-indigo-600 font-medium pb-5 pt-5 border-b-2 border-indigo-600 transition-colors">All Jobs</a>
                    <a href="https://telusko.com/" target="_blank" class="text-slate-500 hover:text-indigo-600 font-medium transition-colors">Contact</a>
                    <a href="addjob" class="bg-indigo-600 hover:bg-indigo-700 text-white px-5 py-2 rounded-full font-medium transition duration-200 shadow-lg shadow-indigo-600/30 transform hover:-translate-y-0.5">Post a Job</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 w-full">
        
        <div class="flex justify-between items-end mb-10 border-b border-slate-200 pb-6">
            <div>
                <h1 class="text-3xl md:text-4xl font-extrabold text-slate-900 tracking-tight">Explore Opportunities</h1>
                <p class="text-slate-500 mt-2">Find the next step in your career.</p>
            </div>
            <span class="bg-indigo-100 text-indigo-700 py-1 px-3 rounded-full text-sm font-semibold">Active Listings</span>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <c:forEach var="jobPost" items="${jobPosts}">
                <!-- Job Card -->
                <div class="bg-white rounded-2xl p-6 shadow-sm border border-slate-100 hover:shadow-xl hover:-translate-y-1 transition duration-300 flex flex-col h-full group relative overflow-hidden">
                    <!-- Top Ribbon -->
                    <div class="absolute top-0 right-0 bg-indigo-50 text-indigo-600 px-3 py-1 rounded-bl-xl font-medium text-xs border-b border-l border-indigo-100">
                        ${jobPost.reqExperience} Yrs Exp
                    </div>

                    <div class="flex items-center gap-4 mb-4">
                        <div class="w-12 h-12 bg-gradient-to-br from-indigo-100 to-purple-100 rounded-xl flex items-center justify-center text-indigo-600 border border-indigo-50 group-hover:scale-110 transition duration-300">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                            </svg>
                        </div>
                        <div>
                            <h3 class="font-bold text-xl text-slate-900 group-hover:text-indigo-600 transition-colors">${jobPost.postProfile}</h3>
                            <p class="text-sm text-slate-500">Tech Role</p>
                        </div>
                    </div>

                    <p class="text-slate-600 text-sm mb-6 flex-grow line-clamp-3">
                        ${jobPost.postDesc}
                    </p>

                    <div class="mt-auto">
                        <h4 class="text-xs font-semibold text-slate-400 uppercase tracking-wider mb-3">Tech Stack</h4>
                        <div class="flex flex-wrap gap-2">
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <span class="bg-slate-100 text-slate-600 text-xs font-medium px-2.5 py-1 rounded-md border border-slate-200">
                                    ${tech}
                                </span>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </c:forEach>
            
            <c:if test="${empty jobPosts}">
                <div class="col-span-full py-16 text-center">
                    <div class="inline-flex items-center justify-center w-16 h-16 rounded-full bg-slate-100 text-slate-400 mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                           <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                    </div>
                    <h3 class="text-lg font-medium text-slate-900 mb-1">No jobs found</h3>
                    <p class="text-slate-500 mb-6">There are currently no job postings available.</p>
                    <a href="addjob" class="inline-flex items-center gap-2 text-indigo-600 font-medium hover:text-indigo-700">
                        Post the first job
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3" />
                        </svg>
                    </a>
                </div>
            </c:if>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t border-slate-200 py-8 mt-auto">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-slate-500 text-sm">
            &copy; 2026 Diles Job Portal. All rights reserved.
        </div>
    </footer>
</body>
</html>