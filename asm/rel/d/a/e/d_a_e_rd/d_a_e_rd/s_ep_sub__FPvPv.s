lbl_8050FB34:
/* 8050FB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FB38  7C 08 02 A6 */	mflr r0
/* 8050FB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FB44  93 C1 00 08 */	stw r30, 8(r1)
/* 8050FB48  7C 7E 1B 78 */	mr r30, r3
/* 8050FB4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050FB50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050FB54  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 8050FB58  4B B0 91 89 */	bl fopAc_IsActor__FPv
/* 8050FB5C  2C 03 00 00 */	cmpwi r3, 0
/* 8050FB60  41 82 00 88 */	beq lbl_8050FBE8
/* 8050FB64  A8 1E 00 08 */	lha r0, 8(r30)
/* 8050FB68  2C 00 00 39 */	cmpwi r0, 0x39
/* 8050FB6C  40 82 00 7C */	bne lbl_8050FBE8
/* 8050FB70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050FB74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050FB78  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8050FB7C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8050FB80  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8050FB84  7C 05 07 74 */	extsb r5, r0
/* 8050FB88  4B B2 57 D9 */	bl isSwitch__10dSv_info_cCFii
/* 8050FB8C  2C 03 00 00 */	cmpwi r3, 0
/* 8050FB90  40 82 00 58 */	bne lbl_8050FBE8
/* 8050FB94  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8050FB98  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8050FB9C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8050FBA0  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8050FBA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8050FBA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8050FBAC  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8050FBB0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8050FBB4  EC 21 00 2A */	fadds f1, f1, f0
/* 8050FBB8  3C 60 80 52 */	lis r3, lit_4209@ha /* 0x80518588@ha */
/* 8050FBBC  C0 03 85 88 */	lfs f0, lit_4209@l(r3)  /* 0x80518588@l */
/* 8050FBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050FBC4  40 81 00 0C */	ble lbl_8050FBD0
/* 8050FBC8  FC 00 08 34 */	frsqrte f0, f1
/* 8050FBCC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8050FBD0:
/* 8050FBD0  3C 60 80 52 */	lis r3, lit_6964@ha /* 0x805186A4@ha */
/* 8050FBD4  C0 03 86 A4 */	lfs f0, lit_6964@l(r3)  /* 0x805186A4@l */
/* 8050FBD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050FBDC  40 80 00 0C */	bge lbl_8050FBE8
/* 8050FBE0  7F C3 F3 78 */	mr r3, r30
/* 8050FBE4  48 00 00 08 */	b lbl_8050FBEC
lbl_8050FBE8:
/* 8050FBE8  38 60 00 00 */	li r3, 0
lbl_8050FBEC:
/* 8050FBEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FBF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050FBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FBF8  7C 08 03 A6 */	mtlr r0
/* 8050FBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FC00  4E 80 00 20 */	blr 
