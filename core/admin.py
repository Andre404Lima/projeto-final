from django.contrib import admin
from .models.equipamento import Equipamento
from .models.veiculo import Veiculo
from .models.user import CustomUser
from .models.dispositivo import Dispositivo
from .models.dispositivo import EstoqueDispositivo  
from .models.equipamento import EstoqueEquipamento  
from .models.veiculo import EstoqueVeiculo          

class EstoqueDispositivoInline(admin.TabularInline):
    model = EstoqueDispositivo
    extra = 1

class DispositivoAdmin(admin.ModelAdmin):
    inlines = [EstoqueDispositivoInline]

class EstoqueEquipamentoInline(admin.TabularInline):
    model = EstoqueEquipamento
    extra = 1

class EquipamentoAdmin(admin.ModelAdmin):
    inlines = [EstoqueEquipamentoInline]

class EstoqueVeiculoInline(admin.TabularInline):
    model = EstoqueVeiculo
    extra = 1

class VeiculoAdmin(admin.ModelAdmin):
    inlines = [EstoqueVeiculoInline]

admin.site.register(Equipamento, EquipamentoAdmin)
admin.site.register(Veiculo, VeiculoAdmin)
admin.site.register(CustomUser)
admin.site.register(Dispositivo, DispositivoAdmin)
