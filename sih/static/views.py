from django.shortcuts import render


def home(req):
    return render(req,'static/home.html')

def about(req):
    return render(req, 'static/about.html')

def einfo(req):
    return render(req, 'static/einfo.html')

def adminofjustice(req):
    return render(req, 'static/admin_of_justice.html')

def casestatus(req):
    return render(req, 'static/case_status.html')

# Create your views here.
