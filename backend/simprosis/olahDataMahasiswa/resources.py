from import_export import resources
from . models import mahasiswa

class mahasiswaResource(resources.ModelResource):
    class Meta:
        model = mahasiswa
        skip_unchanged = True
        report_skipped = False
        fields = (
            'id',
            'npm',
            'nama',
        )