/* 8011FD4C 0011CC8C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8011FD50 0011CC90  7C 08 02 A6 */ mflr r0
/* 8011FD54 0011CC94  90 01 00 44 */ stw r0, 0x44(r1)
/* 8011FD58 0011CC98  39 61 00 40 */ addi r11, r1, 0x40
/* 8011FD5C 0011CC9C  48 24 24 79 */ bl _savegpr_27
/* 8011FD60 0011CCA0  7C 7C 1B 78 */ mr r28, r3
/* 8011FD64 0011CCA4  7C 9D 23 78 */ mr r29, r4
/* 8011FD68 0011CCA8  7C BE 2B 78 */ mr r30, r5
/* 8011FD6C 0011CCAC  38 80 01 4F */ li r4, 0x14f
/* 8011FD70 0011CCB0  4B FA 30 35 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 8011FD74 0011CCB4  2C 03 00 00 */ cmpwi r3, 0
/* 8011FD78 0011CCB8  40 82 00 0C */ bne lbl_8011FD84
/* 8011FD7C 0011CCBC  38 60 00 00 */ li r3, 0
/* 8011FD80 0011CCC0  48 00 03 8C */ b lbl_8012010C
lbl_8011FD84:
/* 8011FD84 0011CCC4  7F 83 E3 78 */ mr r3, r28
/* 8011FD88 0011CCC8  38 80 00 00 */ li r4, 0
/* 8011FD8C 0011CCCC  4B FA 20 81 */ bl daAlink_c_NS_changeWarpMaterial
/* 8011FD90 0011CCD0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011FD94 0011CCD4  D0 1C 33 98 */ stfs f0, 0x3398(r28)
/* 8011FD98 0011CCD8  7F 83 E3 78 */ mr r3, r28
/* 8011FD9C 0011CCDC  38 80 00 00 */ li r4, 0
/* 8011FDA0 0011CCE0  38 A0 00 01 */ li r5, 1
/* 8011FDA4 0011CCE4  4B FA 15 39 */ bl daAlink_c_NS_deleteEquipItem
/* 8011FDA8 0011CCE8  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 8011FDAC 0011CCEC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8011FDB0 0011CCF0  41 82 00 24 */ beq lbl_8011FDD4
/* 8011FDB4 0011CCF4  7F 83 E3 78 */ mr r3, r28
/* 8011FDB8 0011CCF8  38 80 00 00 */ li r4, 0
/* 8011FDBC 0011CCFC  3C A0 80 39 */ lis r5, lbl_8038EE28@ha
/* 8011FDC0 0011CD00  38 A5 EE 28 */ addi r5, r5, lbl_8038EE28@l
/* 8011FDC4 0011CD04  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 8011FDC8 0011CD08  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8011FDCC 0011CD0C  48 00 99 0D */ bl daAlink_c_NS_setSingleAnimeWolfBaseSpeed
/* 8011FDD0 0011CD10  48 00 00 20 */ b lbl_8011FDF0
lbl_8011FDD4:
/* 8011FDD4 0011CD14  7F 83 E3 78 */ mr r3, r28
/* 8011FDD8 0011CD18  38 80 00 19 */ li r4, 0x19
/* 8011FDDC 0011CD1C  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 8011FDE0 0011CD20  38 A5 D6 BC */ addi r5, r5, lbl_8038D6BC@l
/* 8011FDE4 0011CD24  C0 25 00 1C */ lfs f1, 0x1c(r5)
/* 8011FDE8 0011CD28  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8011FDEC 0011CD2C  4B F8 D1 F5 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
lbl_8011FDF0:
/* 8011FDF0 0011CD30  3B 60 00 00 */ li r27, 0
/* 8011FDF4 0011CD34  2C 1E 00 00 */ cmpwi r30, 0
/* 8011FDF8 0011CD38  40 82 00 50 */ bne lbl_8011FE48
/* 8011FDFC 0011CD3C  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 8011FE00 0011CD40  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 8011FE04 0011CD44  38 63 01 68 */ addi r3, r3, 0x168
/* 8011FE08 0011CD48  4B F7 DC 59 */ bl checkStageName__9daAlink_cFPCc
/* 8011FE0C 0011CD4C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011FE10 0011CD50  41 82 00 10 */ beq lbl_8011FE20
/* 8011FE14 0011CD54  88 1C 04 E2 */ lbz r0, 0x4e2(r28)
/* 8011FE18 0011CD58  2C 00 00 04 */ cmpwi r0, 4
/* 8011FE1C 0011CD5C  41 82 00 28 */ beq lbl_8011FE44
lbl_8011FE20:
/* 8011FE20 0011CD60  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 8011FE24 0011CD64  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 8011FE28 0011CD68  38 63 01 70 */ addi r3, r3, 0x170
/* 8011FE2C 0011CD6C  4B F7 DC 35 */ bl checkStageName__9daAlink_cFPCc
/* 8011FE30 0011CD70  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011FE34 0011CD74  41 82 00 14 */ beq lbl_8011FE48
/* 8011FE38 0011CD78  88 1C 04 E2 */ lbz r0, 0x4e2(r28)
/* 8011FE3C 0011CD7C  7C 00 07 75 */ extsb. r0, r0
/* 8011FE40 0011CD80  40 82 00 08 */ bne lbl_8011FE48
lbl_8011FE44:
/* 8011FE44 0011CD84  3B 60 00 01 */ li r27, 1
lbl_8011FE48:
/* 8011FE48 0011CD88  57 64 06 3E */ clrlwi r4, r27, 0x18
/* 8011FE4C 0011CD8C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011FE50 0011CD90  D0 1C 34 78 */ stfs f0, 0x3478(r28)
/* 8011FE54 0011CD94  B3 BC 30 0C */ sth r29, 0x300c(r28)
/* 8011FE58 0011CD98  38 00 00 01 */ li r0, 1
/* 8011FE5C 0011CD9C  B0 1C 30 12 */ sth r0, 0x3012(r28)
/* 8011FE60 0011CDA0  38 60 00 00 */ li r3, 0
/* 8011FE64 0011CDA4  B0 7C 30 0A */ sth r3, 0x300a(r28)
/* 8011FE68 0011CDA8  38 00 00 FF */ li r0, 0xff
/* 8011FE6C 0011CDAC  B0 1C 30 10 */ sth r0, 0x3010(r28)
/* 8011FE70 0011CDB0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8011FE74 0011CDB4  D0 1C 34 88 */ stfs f0, 0x3488(r28)
/* 8011FE78 0011CDB8  A8 1C 30 0C */ lha r0, 0x300c(r28)
/* 8011FE7C 0011CDBC  2C 00 00 00 */ cmpwi r0, 0
/* 8011FE80 0011CDC0  40 82 01 AC */ bne lbl_8012002C
/* 8011FE84 0011CDC4  C0 02 93 4C */ lfs f0, lbl_80452D4C-_SDA2_BASE_(r2)
/* 8011FE88 0011CDC8  D0 1C 34 80 */ stfs f0, 0x3480(r28)
/* 8011FE8C 0011CDCC  B0 7C 30 08 */ sth r3, 0x3008(r28)
/* 8011FE90 0011CDD0  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 8011FE94 0011CDD4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8011FE98 0011CDD8  41 82 00 70 */ beq lbl_8011FF08
/* 8011FE9C 0011CDDC  C0 02 96 58 */ lfs f0, lbl_80453058-_SDA2_BASE_(r2)
/* 8011FEA0 0011CDE0  D0 1C 34 7C */ stfs f0, 0x347c(r28)
/* 8011FEA4 0011CDE4  2C 04 00 00 */ cmpwi r4, 0
/* 8011FEA8 0011CDE8  41 82 00 2C */ beq lbl_8011FED4
/* 8011FEAC 0011CDEC  3C 60 00 01 */ lis r3, 0x000088C8@ha
/* 8011FEB0 0011CDF0  38 03 88 C8 */ addi r0, r3, 0x000088C8@l
/* 8011FEB4 0011CDF4  90 1C 32 CC */ stw r0, 0x32cc(r28)
/* 8011FEB8 0011CDF8  80 6D 8A 98 */ lwz r3, lbl_80451018-_SDA_BASE_(r13)
/* 8011FEBC 0011CDFC  80 03 08 94 */ lwz r0, 0x894(r3)
/* 8011FEC0 0011CE00  60 00 01 00 */ ori r0, r0, 0x100
/* 8011FEC4 0011CE04  90 03 08 94 */ stw r0, 0x894(r3)
/* 8011FEC8 0011CE08  3C 60 00 02 */ lis r3, 0x0002009A@ha
/* 8011FECC 0011CE0C  3B E3 00 9A */ addi r31, r3, 0x0002009A@l
/* 8011FED0 0011CE10  48 00 00 14 */ b lbl_8011FEE4
lbl_8011FED4:
/* 8011FED4 0011CE14  38 00 09 FB */ li r0, 0x9fb
/* 8011FED8 0011CE18  90 1C 32 CC */ stw r0, 0x32cc(r28)
/* 8011FEDC 0011CE1C  3C 60 00 02 */ lis r3, 0x00020099@ha
/* 8011FEE0 0011CE20  3B E3 00 99 */ addi r31, r3, 0x00020099@l
lbl_8011FEE4:
/* 8011FEE4 0011CE24  2C 1E 00 00 */ cmpwi r30, 0
/* 8011FEE8 0011CE28  41 82 01 38 */ beq lbl_80120020
/* 8011FEEC 0011CE2C  80 1C 05 70 */ lwz r0, 0x570(r28)
/* 8011FEF0 0011CE30  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011FEF4 0011CE34  40 82 01 2C */ bne lbl_80120020
/* 8011FEF8 0011CE38  80 1C 05 70 */ lwz r0, 0x570(r28)
/* 8011FEFC 0011CE3C  64 00 08 00 */ oris r0, r0, 0x800
/* 8011FF00 0011CE40  90 1C 05 70 */ stw r0, 0x570(r28)
/* 8011FF04 0011CE44  48 00 01 1C */ b lbl_80120020
lbl_8011FF08:
/* 8011FF08 0011CE48  C0 02 95 88 */ lfs f0, lbl_80452F88-_SDA2_BASE_(r2)
/* 8011FF0C 0011CE4C  D0 1C 34 7C */ stfs f0, 0x347c(r28)
/* 8011FF10 0011CE50  2C 04 00 00 */ cmpwi r4, 0
/* 8011FF14 0011CE54  41 82 00 1C */ beq lbl_8011FF30
/* 8011FF18 0011CE58  3C 60 00 01 */ lis r3, 0x000088C7@ha
/* 8011FF1C 0011CE5C  38 03 88 C7 */ addi r0, r3, 0x000088C7@l
/* 8011FF20 0011CE60  90 1C 32 CC */ stw r0, 0x32cc(r28)
/* 8011FF24 0011CE64  3C 60 00 02 */ lis r3, 0x00020097@ha
/* 8011FF28 0011CE68  3B E3 00 97 */ addi r31, r3, 0x00020097@l
/* 8011FF2C 0011CE6C  48 00 00 F4 */ b lbl_80120020
lbl_8011FF30:
/* 8011FF30 0011CE70  3C 60 00 02 */ lis r3, 0x00020096@ha
/* 8011FF34 0011CE74  3B E3 00 96 */ addi r31, r3, 0x00020096@l
/* 8011FF38 0011CE78  4B FA 03 91 */ bl daAlink_c_NS_checkBossRoom
/* 8011FF3C 0011CE7C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011FF40 0011CE80  41 82 00 D8 */ beq lbl_80120018
/* 8011FF44 0011CE84  88 1C 04 E2 */ lbz r0, 0x4e2(r28)
/* 8011FF48 0011CE88  2C 00 00 32 */ cmpwi r0, 0x32
/* 8011FF4C 0011CE8C  40 82 00 CC */ bne lbl_80120018
/* 8011FF50 0011CE90  38 61 00 08 */ addi r3, r1, 8
/* 8011FF54 0011CE94  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8011FF58 0011CE98  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8011FF5C 0011CE9C  38 84 4E 00 */ addi r4, r4, 0x4e00
/* 8011FF60 0011CEA0  48 24 8B CD */ bl strcpy
/* 8011FF64 0011CEA4  38 C0 00 00 */ li r6, 0
/* 8011FF68 0011CEA8  38 A0 00 00 */ li r5, 0
/* 8011FF6C 0011CEAC  38 61 00 08 */ addi r3, r1, 8
/* 8011FF70 0011CEB0  38 00 00 20 */ li r0, 0x20
/* 8011FF74 0011CEB4  7C 09 03 A6 */ mtctr r0
lbl_8011FF78:
/* 8011FF78 0011CEB8  88 03 00 00 */ lbz r0, 0(r3)
/* 8011FF7C 0011CEBC  7C 04 07 74 */ extsb r4, r0
/* 8011FF80 0011CEC0  7C 80 FE 70 */ srawi r0, r4, 0x1f
/* 8011FF84 0011CEC4  7C 84 2A 78 */ xor r4, r4, r5
/* 8011FF88 0011CEC8  7C 00 2A 78 */ xor r0, r0, r5
/* 8011FF8C 0011CECC  7C 80 03 79 */ or. r0, r4, r0
/* 8011FF90 0011CED0  40 82 00 14 */ bne lbl_8011FFA4
/* 8011FF94 0011CED4  38 00 00 00 */ li r0, 0
/* 8011FF98 0011CED8  38 61 00 07 */ addi r3, r1, 7
/* 8011FF9C 0011CEDC  7C 03 31 AE */ stbx r0, r3, r6
/* 8011FFA0 0011CEE0  48 00 00 10 */ b lbl_8011FFB0
lbl_8011FFA4:
/* 8011FFA4 0011CEE4  38 C6 00 01 */ addi r6, r6, 1
/* 8011FFA8 0011CEE8  38 63 00 01 */ addi r3, r3, 1
/* 8011FFAC 0011CEEC  42 00 FF CC */ bdnz lbl_8011FF78
lbl_8011FFB0:
/* 8011FFB0 0011CEF0  38 60 00 25 */ li r3, 0x25
/* 8011FFB4 0011CEF4  38 80 00 01 */ li r4, 1
/* 8011FFB8 0011CEF8  4B F7 7F 29 */ bl checkItemGet__FUci
/* 8011FFBC 0011CEFC  2C 03 00 00 */ cmpwi r3, 0
/* 8011FFC0 0011CF00  40 82 00 30 */ bne lbl_8011FFF0
/* 8011FFC4 0011CF04  38 60 00 27 */ li r3, 0x27
/* 8011FFC8 0011CF08  38 80 00 01 */ li r4, 1
/* 8011FFCC 0011CF0C  4B F7 7F 15 */ bl checkItemGet__FUci
/* 8011FFD0 0011CF10  2C 03 00 00 */ cmpwi r3, 0
/* 8011FFD4 0011CF14  41 82 00 44 */ beq lbl_80120018
/* 8011FFD8 0011CF18  4B F0 F2 D5 */ bl dComIfGs_getWarpStageName
/* 8011FFDC 0011CF1C  7C 64 1B 78 */ mr r4, r3
/* 8011FFE0 0011CF20  38 61 00 08 */ addi r3, r1, 8
/* 8011FFE4 0011CF24  48 24 89 B1 */ bl strcmp
/* 8011FFE8 0011CF28  2C 03 00 00 */ cmpwi r3, 0
/* 8011FFEC 0011CF2C  40 82 00 2C */ bne lbl_80120018
lbl_8011FFF0:
/* 8011FFF0 0011CF30  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011FFF4 0011CF34  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011FFF8 0011CF38  38 63 00 9C */ addi r3, r3, 0x9c
/* 8011FFFC 0011CF3C  38 80 00 12 */ li r4, 0x12
/* 80120000 0011CF40  38 A0 00 FF */ li r5, 0xff
/* 80120004 0011CF44  4B F1 2F B5 */ bl setItem__17dSv_player_item_cFiUc
/* 80120008 0011CF48  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012000C 0011CF4C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80120010 0011CF50  38 00 FF FF */ li r0, -1
/* 80120014 0011CF54  98 03 00 98 */ stb r0, 0x98(r3)
lbl_80120018:
/* 80120018 0011CF58  38 00 09 F4 */ li r0, 0x9f4
/* 8012001C 0011CF5C  90 1C 32 CC */ stw r0, 0x32cc(r28)
lbl_80120020:
/* 80120020 0011CF60  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80120024 0011CF64  D0 1C 34 84 */ stfs f0, 0x3484(r28)
/* 80120028 0011CF68  48 00 00 AC */ b lbl_801200D4
lbl_8012002C:
/* 8012002C 0011CF6C  C0 02 93 4C */ lfs f0, lbl_80452D4C-_SDA2_BASE_(r2)
/* 80120030 0011CF70  D0 1C 34 7C */ stfs f0, 0x347c(r28)
/* 80120034 0011CF74  38 00 00 2D */ li r0, 0x2d
/* 80120038 0011CF78  B0 1C 30 08 */ sth r0, 0x3008(r28)
/* 8012003C 0011CF7C  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 80120040 0011CF80  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 80120044 0011CF84  41 82 00 1C */ beq lbl_80120060
/* 80120048 0011CF88  C0 02 96 58 */ lfs f0, lbl_80453058-_SDA2_BASE_(r2)
/* 8012004C 0011CF8C  D0 1C 34 80 */ stfs f0, 0x3480(r28)
/* 80120050 0011CF90  B0 7C 30 12 */ sth r3, 0x3012(r28)
/* 80120054 0011CF94  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 80120058 0011CF98  D0 1C 34 88 */ stfs f0, 0x3488(r28)
/* 8012005C 0011CF9C  48 00 00 2C */ b lbl_80120088
lbl_80120060:
/* 80120060 0011CFA0  C0 02 95 88 */ lfs f0, lbl_80452F88-_SDA2_BASE_(r2)
/* 80120064 0011CFA4  D0 1C 34 80 */ stfs f0, 0x3480(r28)
/* 80120068 0011CFA8  3C 60 00 02 */ lis r3, 0x00020098@ha
/* 8012006C 0011CFAC  3B E3 00 98 */ addi r31, r3, 0x00020098@l
/* 80120070 0011CFB0  7F 83 E3 78 */ mr r3, r28
/* 80120074 0011CFB4  38 9C 32 40 */ addi r4, r28, 0x3240
/* 80120078 0011CFB8  38 A0 09 F3 */ li r5, 0x9f3
/* 8012007C 0011CFBC  38 DC 04 D0 */ addi r6, r28, 0x4d0
/* 80120080 0011CFC0  38 FC 04 E4 */ addi r7, r28, 0x4e4
/* 80120084 0011CFC4  48 00 04 FD */ bl daAlink_c_NS_setEmitter
lbl_80120088:
/* 80120088 0011CFC8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012008C 0011CFCC  D0 3C 34 84 */ stfs f1, 0x3484(r28)
/* 80120090 0011CFD0  80 1C 19 9C */ lwz r0, 0x199c(r28)
/* 80120094 0011CFD4  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80120098 0011CFD8  40 82 00 1C */ bne lbl_801200B4
/* 8012009C 0011CFDC  7F 83 E3 78 */ mr r3, r28
/* 801200A0 0011CFE0  C0 5C 05 34 */ lfs f2, 0x534(r28)
/* 801200A4 0011CFE4  38 80 00 00 */ li r4, 0
/* 801200A8 0011CFE8  4B F9 B6 C9 */ bl setSpecialGravity__9daAlink_cFffi
/* 801200AC 0011CFEC  38 00 00 01 */ li r0, 1
/* 801200B0 0011CFF0  B0 1C 30 0A */ sth r0, 0x300a(r28)
lbl_801200B4:
/*.global daAlink_searchPortal*/
/* 801200B4 0011CFF4  3C 60 80 12 */ lis r3, daAlink_searchPortal@ha
/*.global daAlink_searchPortal*/
/* 801200B8 0011CFF8  38 63 F5 D4 */ addi r3, r3, daAlink_searchPortal@l
/* 801200BC 0011CFFC  38 9C 04 D0 */ addi r4, r28, 0x4d0
/* 801200C0 0011D000  4B EF 97 39 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 801200C4 0011D004  28 03 00 00 */ cmplwi r3, 0
/* 801200C8 0011D008  41 82 00 0C */ beq lbl_801200D4
/* 801200CC 0011D00C  88 03 05 C6 */ lbz r0, 0x5c6(r3)
/* 801200D0 0011D010  B0 1C 30 10 */ sth r0, 0x3010(r28)
lbl_801200D4:
/* 801200D4 0011D014  C0 3C 34 88 */ lfs f1, 0x3488(r28)
/* 801200D8 0011D018  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801200DC 0011D01C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801200E0 0011D020  40 81 00 1C */ ble lbl_801200FC
/* 801200E4 0011D024  7F 83 E3 78 */ mr r3, r28
/* 801200E8 0011D028  7F E4 FB 78 */ mr r4, r31
/* 801200EC 0011D02C  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 801200F0 0011D030  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 801200F4 0011D034  7D 89 03 A6 */ mtctr r12
/* 801200F8 0011D038  4E 80 04 21 */ bctrl
lbl_801200FC:
/* 801200FC 0011D03C  B3 DC 30 0E */ sth r30, 0x300e(r28)
/* 80120100 0011D040  7F 83 E3 78 */ mr r3, r28
/* 80120104 0011D044  4B FF FA BD */ bl daAlink_c_NS_warpModelTexScroll
/* 80120108 0011D048  38 60 00 01 */ li r3, 1
lbl_8012010C:
/* 8012010C 0011D04C  39 61 00 40 */ addi r11, r1, 0x40
/* 80120110 0011D050  48 24 21 11 */ bl _restgpr_27
/* 80120114 0011D054  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80120118 0011D058  7C 08 03 A6 */ mtlr r0
/* 8012011C 0011D05C  38 21 00 40 */ addi r1, r1, 0x40
/* 80120120 0011D060  4E 80 00 20 */ blr