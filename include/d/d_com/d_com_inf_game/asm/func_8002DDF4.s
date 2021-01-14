/* 8002DDF4 0002AD34  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002DDF8 0002AD38  7C 08 02 A6 */ mflr r0
/* 8002DDFC 0002AD3C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002DE00 0002AD40  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002DE04 0002AD44  7C 7F 1B 78 */ mr r31, r3
/* 8002DE08 0002AD48  2C 1F 00 02 */ cmpwi r31, 2
/* 8002DE0C 0002AD4C  40 82 00 74 */ bne lbl_8002DE80
/* 8002DE10 0002AD50  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DE14 0002AD54  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DE18 0002AD58  7F E4 FB 78 */ mr r4, r31
/* 8002DE1C 0002AD5C  48 00 4C 41 */ bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002DE20 0002AD60  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8002DE24 0002AD64  28 00 00 FF */ cmplwi r0, 0xff
/* 8002DE28 0002AD68  41 82 00 40 */ beq lbl_8002DE68
/* 8002DE2C 0002AD6C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DE30 0002AD70  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DE34 0002AD74  7F E4 FB 78 */ mr r4, r31
/* 8002DE38 0002AD78  48 00 4C 25 */ bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002DE3C 0002AD7C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002DE40 0002AD80  38 04 61 C0 */ addi r0, r4, g_dComIfG_gameInfo@l
/* 8002DE44 0002AD84  7C 80 FA 14 */ add r4, r0, r31
/* 8002DE48 0002AD88  98 64 5E 6C */ stb r3, 0x5e6c(r4)
/* 8002DE4C 0002AD8C  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8002DE50 0002AD90  28 00 00 FF */ cmplwi r0, 0xff
/* 8002DE54 0002AD94  40 82 00 B4 */ bne lbl_8002DF08
/* 8002DE58 0002AD98  7F E3 FB 78 */ mr r3, r31
/* 8002DE5C 0002AD9C  38 80 00 FF */ li r4, 0xff
/* 8002DE60 0002ADA0  4B FF FE 65 */ bl dComIfGs_setSelectItemIndex
/* 8002DE64 0002ADA4  48 00 00 A4 */ b lbl_8002DF08
lbl_8002DE68:
/* 8002DE68 0002ADA8  38 80 00 FF */ li r4, 0xff
/* 8002DE6C 0002ADAC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DE70 0002ADB0  38 03 61 C0 */ addi r0, r3, g_dComIfG_gameInfo@l
/* 8002DE74 0002ADB4  7C 60 FA 14 */ add r3, r0, r31
/* 8002DE78 0002ADB8  98 83 5E 6C */ stb r4, 0x5e6c(r3)
/* 8002DE7C 0002ADBC  48 00 00 8C */ b lbl_8002DF08
lbl_8002DE80:
/* 8002DE80 0002ADC0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DE84 0002ADC4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DE88 0002ADC8  7F E4 FB 78 */ mr r4, r31
/* 8002DE8C 0002ADCC  48 00 4B D1 */ bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002DE90 0002ADD0  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8002DE94 0002ADD4  28 00 00 FF */ cmplwi r0, 0xff
/* 8002DE98 0002ADD8  41 82 00 5C */ beq lbl_8002DEF4
/* 8002DE9C 0002ADDC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DEA0 0002ADE0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DEA4 0002ADE4  7F E4 FB 78 */ mr r4, r31
/* 8002DEA8 0002ADE8  48 00 4B B5 */ bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002DEAC 0002ADEC  7C 60 1B 78 */ mr r0, r3
/* 8002DEB0 0002ADF0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DEB4 0002ADF4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DEB8 0002ADF8  38 63 00 9C */ addi r3, r3, 0x9c
/* 8002DEBC 0002ADFC  54 04 06 3E */ clrlwi r4, r0, 0x18
/* 8002DEC0 0002AE00  38 A0 00 00 */ li r5, 0
/* 8002DEC4 0002AE04  48 00 51 6D */ bl getItem__17dSv_player_item_cCFib
/* 8002DEC8 0002AE08  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002DECC 0002AE0C  38 04 61 C0 */ addi r0, r4, g_dComIfG_gameInfo@l
/* 8002DED0 0002AE10  7C 80 FA 14 */ add r4, r0, r31
/* 8002DED4 0002AE14  98 64 5E 6C */ stb r3, 0x5e6c(r4)
/* 8002DED8 0002AE18  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8002DEDC 0002AE1C  28 00 00 FF */ cmplwi r0, 0xff
/* 8002DEE0 0002AE20  40 82 00 28 */ bne lbl_8002DF08
/* 8002DEE4 0002AE24  7F E3 FB 78 */ mr r3, r31
/* 8002DEE8 0002AE28  38 80 00 FF */ li r4, 0xff
/* 8002DEEC 0002AE2C  4B FF FD D9 */ bl dComIfGs_setSelectItemIndex
/* 8002DEF0 0002AE30  48 00 00 18 */ b lbl_8002DF08
lbl_8002DEF4:
/* 8002DEF4 0002AE34  38 80 00 FF */ li r4, 0xff
/* 8002DEF8 0002AE38  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DEFC 0002AE3C  38 03 61 C0 */ addi r0, r3, g_dComIfG_gameInfo@l
/* 8002DF00 0002AE40  7C 60 FA 14 */ add r3, r0, r31
/* 8002DF04 0002AE44  98 83 5E 6C */ stb r4, 0x5e6c(r3)
lbl_8002DF08:
/* 8002DF08 0002AE48  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002DF0C 0002AE4C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002DF10 0002AE50  7C 08 03 A6 */ mtlr r0
/* 8002DF14 0002AE54  38 21 00 10 */ addi r1, r1, 0x10
/* 8002DF18 0002AE58  4E 80 00 20 */ blr
