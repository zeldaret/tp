lbl_806C3C44:
/* 806C3C44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806C3C48  7C 08 02 A6 */	mflr r0
/* 806C3C4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806C3C50  39 61 00 30 */	addi r11, r1, 0x30
/* 806C3C54  4B C9 E5 88 */	b _savegpr_29
/* 806C3C58  7C 7D 1B 78 */	mr r29, r3
/* 806C3C5C  7C 9E 23 78 */	mr r30, r4
/* 806C3C60  3C 80 80 6C */	lis r4, lit_3906@ha
/* 806C3C64  3B E4 74 E8 */	addi r31, r4, lit_3906@l
/* 806C3C68  4B 95 50 78 */	b fopAc_IsActor__FPv
/* 806C3C6C  2C 03 00 00 */	cmpwi r3, 0
/* 806C3C70  41 82 00 94 */	beq lbl_806C3D04
/* 806C3C74  A8 1D 00 08 */	lha r0, 8(r29)
/* 806C3C78  2C 00 02 21 */	cmpwi r0, 0x221
/* 806C3C7C  40 82 00 88 */	bne lbl_806C3D04
/* 806C3C80  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806C3C84  28 00 00 00 */	cmplwi r0, 0
/* 806C3C88  41 82 00 7C */	beq lbl_806C3D04
/* 806C3C8C  38 61 00 08 */	addi r3, r1, 8
/* 806C3C90  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806C3C94  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806C3C98  4B BA 2E 9C */	b __mi__4cXyzCFRC3Vec
/* 806C3C9C  C0 21 00 08 */	lfs f1, 8(r1)
/* 806C3CA0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806C3CA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806C3CA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806C3CAC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 806C3CB0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806C3CB4  FC 00 02 10 */	fabs f0, f0
/* 806C3CB8  FC 60 00 18 */	frsp f3, f0
/* 806C3CBC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806C3CC0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 806C3CC4  40 80 00 40 */	bge lbl_806C3D04
/* 806C3CC8  EC 21 00 72 */	fmuls f1, f1, f1
/* 806C3CCC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 806C3CD0  EC 21 00 2A */	fadds f1, f1, f0
/* 806C3CD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C3CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C3CDC  40 81 00 0C */	ble lbl_806C3CE8
/* 806C3CE0  FC 00 08 34 */	frsqrte f0, f1
/* 806C3CE4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806C3CE8:
/* 806C3CE8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806C3CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C3CF0  40 80 00 14 */	bge lbl_806C3D04
/* 806C3CF4  7F A3 EB 78 */	mr r3, r29
/* 806C3CF8  4B 95 5F 84 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806C3CFC  7F A3 EB 78 */	mr r3, r29
/* 806C3D00  48 00 00 08 */	b lbl_806C3D08
lbl_806C3D04:
/* 806C3D04  38 60 00 00 */	li r3, 0
lbl_806C3D08:
/* 806C3D08  39 61 00 30 */	addi r11, r1, 0x30
/* 806C3D0C  4B C9 E5 1C */	b _restgpr_29
/* 806C3D10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806C3D14  7C 08 03 A6 */	mtlr r0
/* 806C3D18  38 21 00 30 */	addi r1, r1, 0x30
/* 806C3D1C  4E 80 00 20 */	blr 
