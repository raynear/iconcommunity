from django.db import models


# These are model schemas from pre-registration site
class CorePrep(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=100, blank=True, null=True)
    location = models.CharField(max_length=100, blank=True, null=True)
    introduction = models.CharField(max_length=2000, blank=True, null=True)
    server_location = models.CharField(max_length=100, blank=True, null=True)
    server_type = models.CharField(max_length=100, blank=True, null=True)
    server_spec = models.CharField(max_length=2000, blank=True, null=True)
    logo = models.CharField(max_length=100, blank=True, null=True)
    server_location_latlong = models.CharField(max_length=200, blank=True, null=True)
    created_at = models.DateTimeField()
    display = models.BooleanField()
    updated_at = models.DateTimeField()
    proposal_rich = models.TextField(blank=True, null=True)
    email = models.CharField(max_length=100, blank=True, null=True)
    self_intro_video = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'core_prep'

    def get_team(self):
        return self.team.all()

    def get_social(self):
        return self.social.all()


class CorePrepsocial(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    social_select = models.CharField(max_length=20, blank=True, null=True)
    prep = models.ForeignKey(
        CorePrep,
        related_name='social', on_delete=models.SET_NULL,
        null=True)
    link = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'core_prepsocial'


class CorePrepteam(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    avatar = models.CharField(max_length=100, blank=True, null=True)
    background = models.CharField(max_length=2000, blank=True, null=True)
    prep = models.ForeignKey(
        CorePrep,
        related_name='team', on_delete=models.SET_NULL,
        null=True)
    name = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'core_prepteam'