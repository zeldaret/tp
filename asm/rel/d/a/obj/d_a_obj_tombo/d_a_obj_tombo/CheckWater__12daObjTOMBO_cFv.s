lbl_80D19834:
/* 80D19834  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D19838  7C 08 02 A6 */	mflr r0
/* 80D1983C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D19840  39 61 00 80 */	addi r11, r1, 0x80
/* 80D19844  4B 64 89 99 */	bl _savegpr_29
/* 80D19848  7C 7F 1B 78 */	mr r31, r3
/* 80D1984C  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D19850  3B C3 B6 D8 */	addi r30, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D19854  3B A1 00 14 */	addi r29, r1, 0x14
/* 80D19858  7F A3 EB 78 */	mr r3, r29
/* 80D1985C  4B 35 DD 21 */	bl __ct__11dBgS_GndChkFv
/* 80D19860  3C 60 80 D2 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80D1B89C@ha */
/* 80D19864  38 63 B8 9C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80D1B89C@l */
/* 80D19868  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D1986C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D19870  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D19874  38 03 00 18 */	addi r0, r3, 0x18
/* 80D19878  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D1987C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D19880  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D19884  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80D19888  4B 35 F5 E1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D1988C  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha /* 0x803AB6E8@ha */
/* 80D19890  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l /* 0x803AB6E8@l */
/* 80D19894  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D19898  38 03 00 0C */	addi r0, r3, 0xc
/* 80D1989C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D198A0  38 03 00 18 */	addi r0, r3, 0x18
/* 80D198A4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D198A8  38 03 00 24 */	addi r0, r3, 0x24
/* 80D198AC  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D198B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D198B4  60 00 00 03 */	ori r0, r0, 3
/* 80D198B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D198BC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80D198C0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80D198C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D198C8  EC 21 00 2A */	fadds f1, f1, f0
/* 80D198CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D198D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D198D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D198D8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80D198DC  7F A3 EB 78 */	mr r3, r29
/* 80D198E0  38 81 00 08 */	addi r4, r1, 8
/* 80D198E4  4B 54 E4 45 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80D198E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D198EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D198F0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80D198F4  7F A3 EB 78 */	mr r3, r29
/* 80D198F8  38 81 00 14 */	addi r4, r1, 0x14
/* 80D198FC  4B 35 AB A5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80D19900  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D19904  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80D19908  FC 00 08 18 */	frsp f0, f1
/* 80D1990C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80D19910  41 82 00 44 */	beq lbl_80D19954
/* 80D19914  7F A3 EB 78 */	mr r3, r29
/* 80D19918  38 81 00 28 */	addi r4, r1, 0x28
/* 80D1991C  4B 35 B5 35 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80D19920  2C 03 00 07 */	cmpwi r3, 7
/* 80D19924  40 82 00 30 */	bne lbl_80D19954
/* 80D19928  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D1992C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D19930  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D19934  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80D19938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1993C  40 80 00 18 */	bge lbl_80D19954
/* 80D19940  38 61 00 14 */	addi r3, r1, 0x14
/* 80D19944  38 80 FF FF */	li r4, -1
/* 80D19948  4B 35 DF A1 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 80D1994C  38 60 00 01 */	li r3, 1
/* 80D19950  48 00 00 14 */	b lbl_80D19964
lbl_80D19954:
/* 80D19954  38 61 00 14 */	addi r3, r1, 0x14
/* 80D19958  38 80 FF FF */	li r4, -1
/* 80D1995C  4B 35 DF 8D */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 80D19960  38 60 00 00 */	li r3, 0
lbl_80D19964:
/* 80D19964  39 61 00 80 */	addi r11, r1, 0x80
/* 80D19968  4B 64 88 C1 */	bl _restgpr_29
/* 80D1996C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D19970  7C 08 03 A6 */	mtlr r0
/* 80D19974  38 21 00 80 */	addi r1, r1, 0x80
/* 80D19978  4E 80 00 20 */	blr 
