# Generated by Django 4.2.1 on 2023-06-06 10:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BuildingInfo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('building_name', models.TextField(blank=True, null=True)),
                ('floor_info', models.TextField(blank=True, null=True)),
                ('campus_info', models.TextField(blank=True, null=True)),
                ('users', models.TextField(blank=True, null=True)),
                ('built_date', models.TextField(blank=True, null=True)),
                ('wiki', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Comments',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('building_name', models.TextField(blank=True, null=True)),
                ('tag', models.TextField(blank=True, null=True)),
                ('updated_ip', models.CharField(max_length=45)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('comment', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Place',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('building_name', models.TextField(blank=True, null=True)),
                ('loc_num', models.TextField(blank=True, null=True)),
                ('location', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='2d_map')),
                ('explain', models.TextField(blank=True, null=True)),
                ('wiki', models.TextField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('floor', models.TextField(blank=True, null=True)),
                ('category', models.TextField(blank=True, null=True)),
                ('coords', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Report',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('contentid', models.TextField()),
                ('report_title', models.TextField()),
                ('report_contents', models.TextField()),
                ('report_time', models.DateTimeField(auto_now_add=True)),
                ('user_ip', models.CharField(max_length=45)),
            ],
        ),
        migrations.CreateModel(
            name='Search_list',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('building_name', models.TextField(blank=True, null=True)),
                ('location', models.TextField(blank=True, null=True)),
                ('loc_num', models.TextField(blank=True, null=True)),
                ('category', models.TextField(blank=True, null=True)),
                ('floor', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='2d_map')),
                ('coords', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='SavePlaceUpdate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('updated_ip', models.CharField(max_length=45)),
                ('modify_cont', models.TextField()),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('place', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myproj.place')),
            ],
        ),
        migrations.CreateModel(
            name='SaveBuildingUpdate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('updated_ip', models.CharField(max_length=45)),
                ('modify_cont', models.TextField()),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('building', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myproj.buildinginfo')),
            ],
        ),
        migrations.CreateModel(
            name='LectureInfo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('loc_num', models.TextField(blank=True, null=True)),
                ('building_name', models.TextField(blank=True, null=True)),
                ('mon', models.TextField(blank=True, null=True)),
                ('mon_time', models.TextField(blank=True, null=True)),
                ('tue', models.TextField(blank=True, null=True)),
                ('tue_time', models.TextField(blank=True, null=True)),
                ('wed', models.TextField(blank=True, null=True)),
                ('wed_time', models.TextField(blank=True, null=True)),
                ('thr', models.TextField(blank=True, null=True)),
                ('thr_time', models.TextField(blank=True, null=True)),
                ('fri', models.TextField(blank=True, null=True)),
                ('fri_time', models.TextField(blank=True, null=True)),
                ('sat', models.TextField(blank=True, null=True)),
                ('sat_time', models.TextField(blank=True, null=True)),
                ('place', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myproj.place')),
            ],
        ),
    ]
