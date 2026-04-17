<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" class="antialiased">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Post a Job - Diles Portal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
        /* Custom scrollbar for select multiple */
        select[multiple]::-webkit-scrollbar { width: 8px; }
        select[multiple]::-webkit-scrollbar-track { background: #f1f5f9; border-radius: 4px; }
        select[multiple]::-webkit-scrollbar-thumb { background: #cbd5e1; border-radius: 4px; }
        select[multiple]::-webkit-scrollbar-thumb:hover { background: #94a3b8; }
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
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="flex-grow max-w-3xl mx-auto px-4 sm:px-6 lg:px-8 py-12 w-full">
        
        <div class="bg-white rounded-3xl shadow-xl shadow-slate-200/50 border border-slate-100 overflow-hidden">
            <!-- Header section of the card -->
            <div class="bg-indigo-600 px-8 py-10 text-white relative overflow-hidden">
                <div class="absolute top-[-50%] right-[-10%] w-64 h-64 bg-white opacity-10 rounded-full blur-3xl"></div>
                <div class="absolute bottom-[-50%] left-[-10%] w-64 h-64 bg-purple-500 opacity-20 rounded-full blur-3xl"></div>
                
                <div class="relative z-10">
                    <h2 class="text-3xl font-bold tracking-tight mb-2">Post a New Opportunity</h2>
                    <p class="text-indigo-100">Fill in the details below to publish your opening to our community of top talent.</p>
                </div>
            </div>

            <div class="px-8 py-10">
                <form action="handleForm" method="post" class="space-y-6">
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <!-- Post ID -->
                        <div class="space-y-2">
                            <label for="postId" class="block text-sm font-semibold text-slate-700">Job ID (Internal)</label>
                            <input type="text" id="postId" name="postId" required placeholder="e.g., 1" 
                                class="w-full px-4 py-3 rounded-xl border border-slate-200 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 outline-none transition-all bg-slate-50 focus:bg-white text-slate-700 placeholder-slate-400">
                        </div>

                        <!-- Experience -->
                        <div class="space-y-2">
                            <label for="reqExperience" class="block text-sm font-semibold text-slate-700">Years of Experience</label>
                            <div class="relative">
                                <input type="number" id="reqExperience" name="reqExperience" required placeholder="e.g., 3" min="0" max="50"
                                    class="w-full px-4 py-3 rounded-xl border border-slate-200 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 outline-none transition-all bg-slate-50 focus:bg-white text-slate-700 placeholder-slate-400">
                                <div class="absolute inset-y-0 right-0 flex items-center pr-4 pointer-events-none text-slate-400 font-medium text-sm">
                                    Years
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Post Profile -->
                    <div class="space-y-2">
                        <label for="postProfile" class="block text-sm font-semibold text-slate-700">Job Title / Profile</label>
                        <input type="text" id="postProfile" name="postProfile" required placeholder="e.g., Senior Frontend Engineer" 
                            class="w-full px-4 py-3 rounded-xl border border-slate-200 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 outline-none transition-all bg-slate-50 focus:bg-white text-slate-700 placeholder-slate-400">
                    </div>

                    <!-- Description -->
                    <div class="space-y-2">
                        <label for="postDesc" class="block text-sm font-semibold text-slate-700">Job Description</label>
                        <textarea id="postDesc" name="postDesc" rows="4" required placeholder="Describe the responsibilities, requirements, and perks..." 
                            class="w-full px-4 py-3 rounded-xl border border-slate-200 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 outline-none transition-all bg-slate-50 focus:bg-white text-slate-700 placeholder-slate-400 resize-none"></textarea>
                    </div>

                    <!-- Tech Stack -->
                    <div class="space-y-2">
                        <label for="postTechStack" class="block text-sm font-semibold text-slate-700">Required Tech Stack (Hold Cmd/Ctrl to select multiple)</label>
                        <select multiple id="postTechStack" name="postTechStack" required size="6"
                            class="w-full px-4 py-3 rounded-xl border border-slate-200 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 outline-none transition-all bg-slate-50 focus:bg-white text-slate-700">
                            <!-- Popular Languages -->
                            <option value="Java">Java</option>
                            <option value="JavaScript">JavaScript</option>
                            <option value="TypeScript">TypeScript</option>
                            <option value="Python">Python</option>
                            <option value="Go">Go</option>
                            <option value="Rust">Rust</option>
                            <option value="C++">C++</option>
                            <option value="C#">C#</option>
                            <option value="Kotlin">Kotlin</option>
                            <option value="Swift">Swift</option>
                            <option value="PHP">PHP</option>
                            
                            <!-- Web Technologies -->
                            <option value="HTML5">HTML5</option>
                            <option value="CSS3">CSS3</option>
                            
                            <!-- Frontend Frameworks -->
                            <option value="React">React</option>
                            <option value="React Native">React Native</option>
                            <option value="Angular">Angular</option>
                            <option value="Vue.js">Vue.js</option>
                            <option value="Svelte">Svelte</option>
                            <option value="Flutter">Flutter</option>
                            
                            <!-- Backend Frameworks -->
                            <option value="Node.js">Node.js</option>
                            <option value="Express.js">Express.js</option>
                            <option value="Spring Boot">Spring Boot</option>
                            <option value="Django">Django</option>
                            <option value="Flask">Flask</option>
                            <option value="Ruby on Rails">Ruby on Rails</option>
                            <option value="Laravel">Laravel</option>
                            <option value="GraphQL">GraphQL</option>
                            
                            <!-- DevOps and Cloud -->
                            <option value="Docker">Docker</option>
                            <option value="Kubernetes">Kubernetes</option>
                            <option value="Jenkins">Jenkins</option>
                            <option value="AWS (Amazon Web Services)">AWS (Amazon Web Services)</option>
                            <option value="Google Cloud">Google Cloud</option>
                            <option value="Azure">Azure</option>
                            <option value="DevOps">DevOps</option>
                            
                            <!-- Data and AI -->
                            <option value="TensorFlow">TensorFlow</option>
                            <option value="PyTorch">PyTorch</option>
                            <option value="Machine Learning">Machine Learning</option>
                            <option value="Artificial Intelligence">Artificial Intelligence</option>
                            <option value="Apache Kafka">Apache Kafka</option>
                            <option value="Elasticsearch">Elasticsearch</option>
                            
                            <!-- Hardware and IoT -->
                            <option value="Raspberry Pi">Raspberry Pi</option>
                            <option value="Arduino">Arduino</option>
                            <option value="IoT (Internet of Things)">IoT (Internet of Things)</option>
                            
                            <!-- Others -->
                            <option value="Unity">Unity</option>
                            <option value="Game Development">Game Development</option>
                            <option value="Cybersecurity">Cybersecurity</option>
                            <option value="Blockchain">Blockchain</option>
                            <option value="Scrum">Scrum</option>
                            <option value="Agile">Agile</option>
                            <option value="Kanban">Kanban</option>
                            <option value="CISSP (Certified Information Systems Security Professional)">CISSP</option>
                            <option value="CompTIA Security+">CompTIA Security+</option>
                            <option value="Certified Ethical Hacker (CEH)">Certified Ethical Hacker (CEH)</option>
                        </select>
                    </div>

                    <!-- Submit Button -->
                    <div class="pt-4">
                        <button type="submit" 
                            class="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-lg py-4 px-8 rounded-xl shadow-lg shadow-indigo-600/30 transform hover:-translate-y-0.5 transition duration-200 flex justify-center items-center gap-2">
                            Publish Job Post
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                            </svg>
                        </button>
                    </div>
                </form>
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