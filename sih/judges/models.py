from django.db import models

# Create your models here.

class SupremeCourtJudge(models.Model):
    sl_no = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    date_of_appointment = models.DateField()
    date_of_retirement = models.DateField()
    remarks = models.CharField(max_length=255)

class GujaratHighCourtJudge(models.Model):
    sl_no = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    source = models.CharField(max_length=50)
    date_of_appointment_as_addl_judge = models.DateField(null=True,blank=True)
    date_of_appointment_as_pmt_judge = models.DateField()
    date_of_retirement = models.DateField()
    remarks = models.CharField(max_length=255,null=True,blank =True)