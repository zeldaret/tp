lbl_8082ECEC:
/* 8082ECEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8082ECF0  7C 08 02 A6 */	mflr r0
/* 8082ECF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8082ECF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8082ECFC  4B B3 34 D8 */	b _savegpr_27
/* 8082ED00  7C 7F 1B 78 */	mr r31, r3
/* 8082ED04  4B 7E 9E 60 */	b __ct__10fopAc_ac_cFv
/* 8082ED08  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8082ED0C  4B A9 22 58 */	b __ct__15Z2CreatureEnemyFv
/* 8082ED10  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 8082ED14  3C 80 80 83 */	lis r4, __ct__4cXyzFv@ha
/* 8082ED18  38 84 F0 F4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8082ED1C  3C A0 80 83 */	lis r5, __dt__4cXyzFv@ha
/* 8082ED20  38 A5 93 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 8082ED24  38 C0 00 0C */	li r6, 0xc
/* 8082ED28  38 E0 00 03 */	li r7, 3
/* 8082ED2C  4B B3 30 34 */	b __construct_array
/* 8082ED30  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 8082ED34  3C 80 80 83 */	lis r4, __ct__4cXyzFv@ha
/* 8082ED38  38 84 F0 F4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8082ED3C  3C A0 80 83 */	lis r5, __dt__4cXyzFv@ha
/* 8082ED40  38 A5 93 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 8082ED44  38 C0 00 0C */	li r6, 0xc
/* 8082ED48  38 E0 00 08 */	li r7, 8
/* 8082ED4C  4B B3 30 14 */	b __construct_array
/* 8082ED50  38 7F 07 B4 */	addi r3, r31, 0x7b4
/* 8082ED54  4B 84 71 58 */	b __ct__12dBgS_AcchCirFv
/* 8082ED58  3B 9F 07 F4 */	addi r28, r31, 0x7f4
/* 8082ED5C  7F 83 E3 78 */	mr r3, r28
/* 8082ED60  4B 84 73 40 */	b __ct__9dBgS_AcchFv
/* 8082ED64  3C 60 80 83 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8082ED68  38 63 F6 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8082ED6C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8082ED70  38 03 00 0C */	addi r0, r3, 0xc
/* 8082ED74  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8082ED78  38 03 00 18 */	addi r0, r3, 0x18
/* 8082ED7C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8082ED80  38 7C 00 14 */	addi r3, r28, 0x14
/* 8082ED84  4B 84 A0 E4 */	b SetObj__16dBgS_PolyPassChkFv
/* 8082ED88  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8082ED8C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8082ED90  90 1F 09 E4 */	stw r0, 0x9e4(r31)
/* 8082ED94  38 7F 09 E8 */	addi r3, r31, 0x9e8
/* 8082ED98  4B 85 49 C8 */	b __ct__10dCcD_GSttsFv
/* 8082ED9C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8082EDA0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8082EDA4  90 7F 09 E4 */	stw r3, 0x9e4(r31)
/* 8082EDA8  38 03 00 20 */	addi r0, r3, 0x20
/* 8082EDAC  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 8082EDB0  3B 9F 0A 08 */	addi r28, r31, 0xa08
/* 8082EDB4  7F 83 E3 78 */	mr r3, r28
/* 8082EDB8  4B 85 4C 70 */	b __ct__12dCcD_GObjInfFv
/* 8082EDBC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8082EDC0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8082EDC4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8082EDC8  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha
/* 8082EDCC  38 03 F6 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8082EDD0  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8082EDD4  3C 60 80 83 */	lis r3, __vt__8cM3dGSph@ha
/* 8082EDD8  38 03 F6 8C */	addi r0, r3, __vt__8cM3dGSph@l
/* 8082EDDC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8082EDE0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8082EDE4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8082EDE8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8082EDEC  38 03 00 58 */	addi r0, r3, 0x58
/* 8082EDF0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8082EDF4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8082EDF8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8082EDFC  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8082EE00  38 03 00 2C */	addi r0, r3, 0x2c
/* 8082EE04  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8082EE08  38 03 00 84 */	addi r0, r3, 0x84
/* 8082EE0C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8082EE10  3B 7F 0B 40 */	addi r27, r31, 0xb40
/* 8082EE14  7F 63 DB 78 */	mr r3, r27
/* 8082EE18  4B 85 4C 10 */	b __ct__12dCcD_GObjInfFv
/* 8082EE1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8082EE20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8082EE24  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8082EE28  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha
/* 8082EE2C  38 03 F6 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8082EE30  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8082EE34  3C 60 80 83 */	lis r3, __vt__8cM3dGCyl@ha
/* 8082EE38  38 03 F6 80 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8082EE3C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8082EE40  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8082EE44  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8082EE48  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8082EE4C  3B C3 00 58 */	addi r30, r3, 0x58
/* 8082EE50  93 DB 01 38 */	stw r30, 0x138(r27)
/* 8082EE54  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8082EE58  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8082EE5C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8082EE60  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8082EE64  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8082EE68  3B 83 00 84 */	addi r28, r3, 0x84
/* 8082EE6C  93 9B 01 38 */	stw r28, 0x138(r27)
/* 8082EE70  3B 7F 0C 7C */	addi r27, r31, 0xc7c
/* 8082EE74  7F 63 DB 78 */	mr r3, r27
/* 8082EE78  4B 85 4B B0 */	b __ct__12dCcD_GObjInfFv
/* 8082EE7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8082EE80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8082EE84  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8082EE88  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha
/* 8082EE8C  38 03 F6 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8082EE90  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8082EE94  3C 60 80 83 */	lis r3, __vt__8cM3dGCyl@ha
/* 8082EE98  38 03 F6 80 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8082EE9C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8082EEA0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8082EEA4  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 8082EEA8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8082EEAC  93 DB 01 38 */	stw r30, 0x138(r27)
/* 8082EEB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8082EEB4  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 8082EEB8  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8082EEBC  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8082EEC0  93 9B 01 38 */	stw r28, 0x138(r27)
/* 8082EEC4  7F E3 FB 78 */	mr r3, r31
/* 8082EEC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8082EECC  4B B3 33 54 */	b _restgpr_27
/* 8082EED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8082EED4  7C 08 03 A6 */	mtlr r0
/* 8082EED8  38 21 00 20 */	addi r1, r1, 0x20
/* 8082EEDC  4E 80 00 20 */	blr 
