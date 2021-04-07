lbl_8077AE38:
/* 8077AE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077AE3C  7C 08 02 A6 */	mflr r0
/* 8077AE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077AE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077AE48  93 C1 00 08 */	stw r30, 8(r1)
/* 8077AE4C  7C 7E 1B 78 */	mr r30, r3
/* 8077AE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077AE54  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077AE58  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8077AE5C  C0 44 04 D0 */	lfs f2, 0x4d0(r4)
/* 8077AE60  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8077AE64  EC 62 00 28 */	fsubs f3, f2, f0
/* 8077AE68  C0 44 04 D8 */	lfs f2, 0x4d8(r4)
/* 8077AE6C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8077AE70  EC 02 00 28 */	fsubs f0, f2, f0
/* 8077AE74  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8077AE78  EC 00 00 32 */	fmuls f0, f0, f0
/* 8077AE7C  EC 42 00 2A */	fadds f2, f2, f0
/* 8077AE80  3C 60 80 78 */	lis r3, lit_3904@ha /* 0x80780DC8@ha */
/* 8077AE84  C0 03 0D C8 */	lfs f0, lit_3904@l(r3)  /* 0x80780DC8@l */
/* 8077AE88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077AE8C  40 81 00 0C */	ble lbl_8077AE98
/* 8077AE90  FC 00 10 34 */	frsqrte f0, f2
/* 8077AE94  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8077AE98:
/* 8077AE98  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8077AE9C  40 80 00 44 */	bge lbl_8077AEE0
/* 8077AEA0  7F C3 F3 78 */	mr r3, r30
/* 8077AEA4  4B 89 F8 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077AEA8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8077AEAC  7C 03 00 50 */	subf r0, r3, r0
/* 8077AEB0  7C 00 07 34 */	extsh r0, r0
/* 8077AEB4  2C 00 70 00 */	cmpwi r0, 0x7000
/* 8077AEB8  40 80 00 28 */	bge lbl_8077AEE0
/* 8077AEBC  2C 00 90 00 */	cmpwi r0, -28672
/* 8077AEC0  40 81 00 20 */	ble lbl_8077AEE0
/* 8077AEC4  7F C3 F3 78 */	mr r3, r30
/* 8077AEC8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8077AECC  4B 8A 1F 31 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077AED0  2C 03 00 00 */	cmpwi r3, 0
/* 8077AED4  40 82 00 0C */	bne lbl_8077AEE0
/* 8077AED8  38 60 00 01 */	li r3, 1
/* 8077AEDC  48 00 00 08 */	b lbl_8077AEE4
lbl_8077AEE0:
/* 8077AEE0  38 60 00 00 */	li r3, 0
lbl_8077AEE4:
/* 8077AEE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8077AEE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8077AEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077AEF0  7C 08 03 A6 */	mtlr r0
/* 8077AEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8077AEF8  4E 80 00 20 */	blr 
