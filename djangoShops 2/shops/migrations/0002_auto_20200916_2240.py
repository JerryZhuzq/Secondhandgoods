# Generated by Django 2.2 on 2020-09-16 14:40

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('shops', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='files',
            fields=[
                ('id', models.CharField(auto_created=True, default=uuid.uuid4, editable=False, max_length=255, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255, verbose_name='图片名称')),
                ('url', models.FileField(upload_to='uploads/%Y%m%d/', verbose_name='图片地址')),
            ],
        ),
        migrations.AddField(
            model_name='shops',
            name='fileUrl',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
