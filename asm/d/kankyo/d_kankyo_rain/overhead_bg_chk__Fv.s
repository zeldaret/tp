lbl_8005CDD0:
/* 8005CDD0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8005CDD4  7C 08 02 A6 */	mflr r0
/* 8005CDD8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8005CDDC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8005CDE0  48 30 53 FD */	bl _savegpr_29
/* 8005CDE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005CDE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005CDEC  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 8005CDF0  3B C0 00 00 */	li r30, 0
/* 8005CDF4  3B A1 00 64 */	addi r29, r1, 0x64
/* 8005CDF8  7F A3 EB 78 */	mr r3, r29
/* 8005CDFC  48 01 A7 81 */	bl __ct__11dBgS_GndChkFv
/* 8005CE00  3C 60 80 3A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x803A382C@ha */
/* 8005CE04  38 63 38 2C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x803A382C@l */
/* 8005CE08  90 61 00 74 */	stw r3, 0x74(r1)
/* 8005CE0C  38 03 00 0C */	addi r0, r3, 0xc
/* 8005CE10  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005CE14  38 03 00 18 */	addi r0, r3, 0x18
/* 8005CE18  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8005CE1C  38 03 00 24 */	addi r0, r3, 0x24
/* 8005CE20  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 8005CE24  38 7D 00 3C */	addi r3, r29, 0x3c
/* 8005CE28  48 01 C0 41 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8005CE2C  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha /* 0x803AB6E8@ha */
/* 8005CE30  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l /* 0x803AB6E8@l */
/* 8005CE34  90 61 00 74 */	stw r3, 0x74(r1)
/* 8005CE38  38 03 00 0C */	addi r0, r3, 0xc
/* 8005CE3C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005CE40  38 03 00 18 */	addi r0, r3, 0x18
/* 8005CE44  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8005CE48  38 03 00 24 */	addi r0, r3, 0x24
/* 8005CE4C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 8005CE50  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8005CE54  60 00 00 03 */	ori r0, r0, 3
/* 8005CE58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8005CE5C  38 61 00 14 */	addi r3, r1, 0x14
/* 8005CE60  48 01 C1 95 */	bl __ct__12dBgS_RoofChkFv
/* 8005CE64  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 8005CE68  D0 61 00 08 */	stfs f3, 8(r1)
/* 8005CE6C  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 8005CE70  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8005CE74  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8005CE78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8005CE7C  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 8005CE80  EC 02 00 2A */	fadds f0, f2, f0
/* 8005CE84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8005CE88  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 8005CE8C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8005CE90  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8005CE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005CE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005CE9C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8005CEA0  7F A3 EB 78 */	mr r3, r29
/* 8005CEA4  38 81 00 14 */	addi r4, r1, 0x14
/* 8005CEA8  48 01 85 F5 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 8005CEAC  C0 02 88 30 */	lfs f0, lit_4361(r2)
/* 8005CEB0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005CEB4  41 82 00 50 */	beq lbl_8005CF04
/* 8005CEB8  3B C0 00 01 */	li r30, 1
/* 8005CEBC  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 8005CEC0  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005CEC4  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005CEC8  38 84 00 17 */	addi r4, r4, 0x17
/* 8005CECC  48 30 BA C9 */	bl strcmp
/* 8005CED0  2C 03 00 00 */	cmpwi r3, 0
/* 8005CED4  40 82 00 30 */	bne lbl_8005CF04
/* 8005CED8  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005CEDC  2C 00 00 11 */	cmpwi r0, 0x11
/* 8005CEE0  40 82 00 24 */	bne lbl_8005CF04
/* 8005CEE4  38 61 00 14 */	addi r3, r1, 0x14
/* 8005CEE8  38 80 FF FF */	li r4, -1
/* 8005CEEC  48 01 C1 A5 */	bl __dt__12dBgS_RoofChkFv
/* 8005CEF0  38 61 00 64 */	addi r3, r1, 0x64
/* 8005CEF4  38 80 FF FF */	li r4, -1
/* 8005CEF8  48 01 A9 F1 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005CEFC  38 60 00 00 */	li r3, 0
/* 8005CF00  48 00 00 60 */	b lbl_8005CF60
lbl_8005CF04:
/* 8005CF04  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8005CF08  C0 02 88 80 */	lfs f0, lit_4468(r2)
/* 8005CF0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8005CF10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8005CF14  38 61 00 64 */	addi r3, r1, 0x64
/* 8005CF18  38 81 00 08 */	addi r4, r1, 8
/* 8005CF1C  48 20 AE 0D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8005CF20  7F A3 EB 78 */	mr r3, r29
/* 8005CF24  38 81 00 64 */	addi r4, r1, 0x64
/* 8005CF28  48 01 75 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8005CF2C  C0 42 88 7C */	lfs f2, lit_4467(r2)
/* 8005CF30  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8005CF34  EC 02 00 2A */	fadds f0, f2, f0
/* 8005CF38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005CF3C  40 81 00 08 */	ble lbl_8005CF44
/* 8005CF40  3B C0 00 01 */	li r30, 1
lbl_8005CF44:
/* 8005CF44  38 61 00 14 */	addi r3, r1, 0x14
/* 8005CF48  38 80 FF FF */	li r4, -1
/* 8005CF4C  48 01 C1 45 */	bl __dt__12dBgS_RoofChkFv
/* 8005CF50  38 61 00 64 */	addi r3, r1, 0x64
/* 8005CF54  38 80 FF FF */	li r4, -1
/* 8005CF58  48 01 A9 91 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005CF5C  7F C3 F3 78 */	mr r3, r30
lbl_8005CF60:
/* 8005CF60  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8005CF64  48 30 52 C5 */	bl _restgpr_29
/* 8005CF68  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8005CF6C  7C 08 03 A6 */	mtlr r0
/* 8005CF70  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8005CF74  4E 80 00 20 */	blr 
