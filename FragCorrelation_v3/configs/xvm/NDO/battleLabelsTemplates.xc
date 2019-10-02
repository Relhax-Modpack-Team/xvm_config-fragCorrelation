﻿{
  "def": {
    "hitlog": {
      "enabled": true,
      "updateEvent": "ON_DAMAGE_CAUSED",
      "x": 5,
      "y": 425,
      "width": 500,
      "height": 1000,
      "shadow": { "enabled": true, "distance": 0, "angle": 0, "color": "0x000000", "alpha": 75, "blur": 2, "strength": 1 },
      "textFormat": { "font": "$FieldFont", "size": 15, "color": "0xFCFCFC", "align": "left", "leading": 5 },
      "format": "{{hitlog-header}}\n{{hitlog-body}}"
    },
    "damage_log": {
      "enabled": ${"@settings.xc":"settings.battleLabels.damage_panel.damage_log"},
      "updateEvent": "PY(ON_HIT)",
      "x": 235,
      "y": -15,
      "width": 220,
      "height": 220,
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.dLog_shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.dLog_shadow('angle')}}",
        "color": "{{py:xvm.damageLog.dLog_shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.dLog_shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.dLog_shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.dLog_shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.dLog_shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.dLog_shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.dLog_shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.dLog_shadow('quality')}}"
      },
      "textFormat": { "font": "$UniversCondC", "size": 18, "color": "0xE2E2E2", "align": "left", "valign": "top" },
      "format": "{{py:xvm.damageLog.dLog}}"
    },
    "last_hit": {
      "enabled": ${"@settings.xc":"settings.battleLabels.damage_panel.last_hit"},
      "updateEvent": "PY(ON_LAST_HIT)",
      "x": 0,
      "y": -120,
      "width": 180,
      "height": 75,
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.lastHit_shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.lastHit_shadow('angle')}}",
        "color": "{{py:xvm.damageLog.lastHit_shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.lastHit_shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.lastHit_shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.lastHit_shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.lastHit_shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.lastHit_shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.lastHit_shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.lastHit_shadow('quality')}}"
      },
      "textFormat": { "font": "$UniversCondC", "size": 25, "color": "0xE2E2E2", "align": "center", "valign": "center" },
      "format": "{{py:xvm.damageLog.lastHit}}"
    },
    "total_efficiency": {
      "enabled": ${"@settings.xc":"settings.battleLabels.damage_panel.total_efficiency"},
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": 235,
      "y": -230,
      "width": 80,
      "height": 42,
      "screenVAlign": "bottom",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 3 },
      "textFormat": { "font": "$UniversCondC", "size": 14, "color": "0xE2E2E2", "leading": -4 },
      "format": "<font face='NDO' size='20'>&#x005A;</font> {{py:total_blocked}}<br/><font face='NDO' size='20'>&#x005B;</font> {{py:total_assist}}"
    },
    "info_panel_bg": {
      "enabled": ${"@settings.xc":"settings.battleLabels.info_panel"},
      "hotKeyCode": 56,
      "onHold": true,
      "visibleOnHotKey": true,
      "x": 0,
      "y": -75,
      "width": 320,
      "height": 70,
      "alpha": 45,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "bgColor": "0x000000",
      "borderColor": "0xB2B2B2",
      "shadow": { "enabled": false }
    },
    "info_panel": {
      "enabled": ${"@settings.xc":"settings.battleLabels.info_panel"},
      "updateEvent": "ON_TARGET_IN, ON_TARGET_OUT",
      "hotKeyCode": 56,
      "onHold": true,
      "visibleOnHotKey": true,
      "x": 0,
      "y": -75,
      "width": 320,
      "height": 70,
      "alpha": 100,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 2 }, 
      "textFormat": { "font": "$FieldFont", "size": 15, "color": "0xFCFCFC", "align": "left", "leading": -14 },
      "format": "<textformat tabstops='[5,150,214]'><font size='0'>.</font><tab><font color='#FF9900'>{{py:vehicle_name}}</font><tab>КД:<tab>{{py:gun_reload_equip}} сек</textformat>
      <br/><textformat tabstops='[5,54,150,214,246,279]'><font size='0'>.</font><tab>Обзор:<tab>{{py:vision_radius}} м<tab>Тип:<tab>{{py:shell_type_1}}<tab>{{py:shell_type_2}}<tab>{{py:shell_type_3}}</textformat>
      <br/><textformat tabstops='[5,54,80,105,150,214,246,279]'><font size='0'>.</font><tab>Башня:<tab>{{py:armor_turret_front}}<tab>{{py:armor_turret_side}}<tab>{{py:armor_turret_back}}<tab>Урон:<tab>{{py:shell_damage_1}}<tab>{{py:shell_damage_2}}<tab>{{py:shell_damage_3}}</textformat>
      <br/><textformat tabstops='[5,54,80,105,150,214,246,279]'><font size='0'>.</font><tab>Корпус:<tab>{{py:armor_hull_front}}<tab>{{py:armor_hull_side}}<tab>{{py:armor_hull_back}}<tab>Пробитие:<tab>{{py:shell_power_1}}<tab>{{py:shell_power_2}}<tab>{{py:shell_power_3}}</textformat>"
    },
    "frame_hp_team": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "x": 0,
      "y": 5,
      "width": 380,
      "height": 40,
      "alpha": 50,
      "align": "center",
      "screenHAlign": "center",
      "shadow": { "enabled": false },
      "textFormat": { "align": "center" },
      "format": "{{battletype!=event_battles?<img src='cfg://NDO/img/fragCorrelation/frame_hp_team.png' width='376' height='36'>}}"
    },
    "current_hp_ally": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": -164,
      "y": 15,
      "width": 50,
      "height": 24,
      "alpha": 75,
      "align": "center",
      "screenHAlign": "center",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "NDO", "size": 17, "color": "0xFCFCFC", "align": "center" },
      "format": "{{battletype!=event_battles?<b>{{py:current_hp(0)}}</b>}}"
    },
    "current_hp_enemy": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 164,
      "y": 15,
      "width": 50,
      "height": 24,
      "alpha": 75, 
      "align": "center",
      "screenHAlign": "center",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "NDO", "size": 17, "color": "0xFCFCFC", "align": "center" },
      "format": "{{battletype!=event_battles?<b>{{py:current_hp(1)}}</b>}}"
    },
    "panel_hp_team": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 0,
      "y": 5,
      "width": 380,
      "height": 40,
      "alpha": 75,
      "align": "center",
      "screenHAlign": "center",
      "shadow": { "enabled": false },
      "textFormat": { "align": "center", "leading": -36 },
      "format": "{{battletype!=event_battles?<img src='cfg://NDO/img/fragCorrelation/ally_{{py:percent_hp_section(0)}}.png' width='376' height='36'><br/><img src='cfg://NDO/img/fragCorrelation/enemy_{{py:percent_hp_section(1)}}.png' width='376' height='36'>}}"
    },
    "high_сaliber": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "updateEvent": "PY(ON_UPDATE_HP)",
      "hotKeyCode": 56,
      "onHold": true,
      "visibleOnHotKey": false,
      "x": 0,
      "y": 42,
      "width": 120,
      "height": 50,
      "alpha": 100,
      "align": "center",
      "screenHAlign": "center",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "NDO", "size": 17, "color": "0xFCFCFC", "align": "center" },
      "format": "{{battletype!=event_battles?<b>{{py:high_сaliber({{hitlog.dmg-total}})}}</b>}}"
    },
    "avg_damage": {
      "enabled": ${"@settings.xc":"settings.battleLabels.total_hp_panel"},
      "updateEvent": "ON_DAMAGE_CAUSED",
      "hotKeyCode": 56,
      "onHold": true,
      "visibleOnHotKey": true,
      "x": 0,
      "y": 42,
      "width": 120,
      "height": 50,
      "alpha": 100,
      "align": "center",
      "screenHAlign": "center",
      "antiAliasType": "advanced",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "NDO", "size": 17, "color": "0xFCFCFC", "align": "center" },
      "format": "{{battletype!=event_battles?<b>{{py:avg_damage({{hitlog.dmg-total}})}}</b>}}"
    }
  }
}