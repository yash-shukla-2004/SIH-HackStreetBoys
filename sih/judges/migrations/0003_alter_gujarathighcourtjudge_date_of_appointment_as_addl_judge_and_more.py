# Generated by Django 4.2.14 on 2024-08-27 04:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('judges', '0002_alter_gujarathighcourtjudge_date_of_appointment_as_addl_judge'),
    ]

    operations = [
        migrations.AlterField(
            model_name='gujarathighcourtjudge',
            name='date_of_appointment_as_addl_judge',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='gujarathighcourtjudge',
            name='remarks',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
