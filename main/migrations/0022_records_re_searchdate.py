# Generated by Django 2.2.3 on 2020-02-03 14:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0021_auto_20200202_0011'),
    ]

    operations = [
        migrations.AddField(
            model_name='records',
            name='re_searchdate',
            field=models.DateField(blank=True, null=True),
        ),
    ]
