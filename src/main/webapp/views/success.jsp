<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.dilusha.jobapp.model.JobPost" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en" class="antialiased">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Post Successful - Diles Portal</title>
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
                    <a href="viewalljobs" class="text-slate-500 hover:text-indigo-600 font-medium transition-colors">All Jobs</a>
                    <a href="https://telusko.com/" target="_blank" class="text-slate-500 hover:text-indigo-600 font-medium transition-colors">Contact</a>
                    <a href="addjob" class="bg-indigo-600 hover:bg-indigo-700 text-white px-5 py-2 rounded-full font-medium transition duration-200 shadow-lg shadow-indigo-600/30 transform hover:-translate-y-0.5">Post another Job</a>
                </div>
            </div>
        </div>
    </nav>

    <%
        JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
    %>

    <!-- Main Content -->
    <main class="flex-grow flex items-center justify-center p-4">
        
        <div class="max-w-2xl w-full">
            <!-- Success Message Card -->
            <div class="text-center mb-8">
                <div class="mx-auto w-20 h-20 bg-green-100 rounded-full flex items-center justify-center mb-6">
                    <svg class="w-10 h-10 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                    </svg>
                </div>
                <h1 class="text-4xl font-extrabold text-slate-900 mb-2">Job Posted Successfully!</h1>
                <p class="text-slate-500 text-lg">Your job listing is now live and visible to candidates.</p>
            </div>

            <!-- Job Details Card -->
            <div class="bg-white rounded-3xl shadow-xl shadow-slate-200/50 border border-slate-100 p-8 md:p-10 relative overflow-hidden">
                <div class="absolute top-0 left-0 w-2 bg-indigo-500 h-full"></div>
                
                <h2 class="text-2xl font-bold text-slate-900 mb-6 flex items-center gap-3">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-indigo-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                    </svg>
                    <%= myJobPost.getPostProfile() %>
                </h2>

                <div class="space-y-6">
                    <div>
                        <h3 class="text-xs font-bold text-slate-400 uppercase tracking-wider mb-2">Description</h3>
                        <p class="text-slate-700 leading-relaxed"><%= myJobPost.getPostDesc() %></p>
                    </div>

                    <div class="flex gap-x-12">
                        <div>
                            <h3 class="text-xs font-bold text-slate-400 uppercase tracking-wider mb-2">Experience</h3>
                            <div class="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-indigo-50 text-indigo-700 font-semibold border border-indigo-100">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                                <%= myJobPost.getReqExperience() %> Years
                            </div>
                        </div>
                    </div>

                    <div>
                        <h3 class="text-xs font-bold text-slate-400 uppercase tracking-wider mb-3">Required Skills</h3>
                        <div class="flex flex-wrap gap-2">
                            <% for (String tech : myJobPost.getPostTechStack()) { %>
                                <span class="bg-slate-100 text-slate-700 font-medium px-3 py-1.5 rounded-lg border border-slate-200">
                                    <%= tech %>
                                </span>
                            <% } %>
                        </div>
                    </div>
                </div>

                <div class="mt-10 flex gap-4 pt-6 border-t border-slate-100">
                    <a href="viewalljobs" class="flex-1 text-center bg-indigo-600 hover:bg-indigo-700 text-white font-semibold py-3 px-6 rounded-xl transition duration-200 shadow-md shadow-indigo-600/20">
                        View All Jobs
                    </a>
                    <a href="home" class="flex-1 text-center bg-white hover:bg-slate-50 text-slate-700 font-semibold py-3 px-6 rounded-xl border border-slate-200 transition duration-200 shadow-sm">
                        Go to Home
                    </a>
                </div>
            </div>
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