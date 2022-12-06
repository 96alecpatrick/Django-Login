from django.contrib.auth import authenticate, login
from django.shortcuts import render
from django.http import HttpResponse



def login_view(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(username=username, password=password)
        login(user)
        user.save()
    else: 
        if not user:
            context = {"Wrong username or password"}
            return render(request, "login.html", context)
    return redirect(request, "login.html", {})
    




