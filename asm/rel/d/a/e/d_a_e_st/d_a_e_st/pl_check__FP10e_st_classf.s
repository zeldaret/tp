lbl_8079E550:
/* 8079E550  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079E554  7C 08 02 A6 */	mflr r0
/* 8079E558  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079E55C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8079E560  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8079E564  7C 7F 1B 78 */	mr r31, r3
/* 8079E568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079E56C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8079E570  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 8079E574  C0 45 04 D4 */	lfs f2, 0x4d4(r5)
/* 8079E578  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8079E57C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8079E580  3C 60 80 7A */	lis r3, lit_4175@ha
/* 8079E584  C0 03 68 78 */	lfs f0, lit_4175@l(r3)
/* 8079E588  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8079E58C  4C 41 13 82 */	cror 2, 1, 2
/* 8079E590  41 82 00 10 */	beq lbl_8079E5A0
/* 8079E594  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8079E598  28 00 00 00 */	cmplwi r0, 0
/* 8079E59C  41 82 00 0C */	beq lbl_8079E5A8
lbl_8079E5A0:
/* 8079E5A0  38 60 00 00 */	li r3, 0
/* 8079E5A4  48 00 00 C8 */	b lbl_8079E66C
lbl_8079E5A8:
/* 8079E5A8  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 8079E5AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8079E5B0  40 80 00 B8 */	bge lbl_8079E668
/* 8079E5B4  7C BE 2B 78 */	mr r30, r5
/* 8079E5B8  38 61 00 08 */	addi r3, r1, 8
/* 8079E5BC  38 85 04 D0 */	addi r4, r5, 0x4d0
/* 8079E5C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8079E5C4  4B AC 85 70 */	b __mi__4cXyzCFRC3Vec
/* 8079E5C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8079E5CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079E5D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079E5D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079E5D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8079E5DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079E5E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E5E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E5E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E5EC  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 8079E5F0  7C 00 00 D0 */	neg r0, r0
/* 8079E5F4  7C 04 07 34 */	extsh r4, r0
/* 8079E5F8  4B 86 DD 4C */	b mDoMtx_XrotS__FPA4_fs
/* 8079E5FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079E600  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079E604  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E608  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 8079E60C  7C 00 00 D0 */	neg r0, r0
/* 8079E610  7C 04 07 34 */	extsh r4, r0
/* 8079E614  4B 86 DE 20 */	b mDoMtx_YrotM__FPA4_fs
/* 8079E618  38 61 00 20 */	addi r3, r1, 0x20
/* 8079E61C  38 81 00 14 */	addi r4, r1, 0x14
/* 8079E620  4B AD 28 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 8079E624  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8079E628  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8079E62C  4B AC 90 48 */	b cM_atan2s__Fff
/* 8079E630  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8079E634  7C 03 00 50 */	subf r0, r3, r0
/* 8079E638  7C 00 07 34 */	extsh r0, r0
/* 8079E63C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8079E640  40 80 00 28 */	bge lbl_8079E668
/* 8079E644  2C 00 A0 00 */	cmpwi r0, -24576
/* 8079E648  40 81 00 20 */	ble lbl_8079E668
/* 8079E64C  7F E3 FB 78 */	mr r3, r31
/* 8079E650  7F C4 F3 78 */	mr r4, r30
/* 8079E654  4B FF FD E9 */	bl other_bg_check__FP10e_st_classP10fopAc_ac_c
/* 8079E658  2C 03 00 00 */	cmpwi r3, 0
/* 8079E65C  40 82 00 0C */	bne lbl_8079E668
/* 8079E660  38 60 00 01 */	li r3, 1
/* 8079E664  48 00 00 08 */	b lbl_8079E66C
lbl_8079E668:
/* 8079E668  38 60 00 00 */	li r3, 0
lbl_8079E66C:
/* 8079E66C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8079E670  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8079E674  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079E678  7C 08 03 A6 */	mtlr r0
/* 8079E67C  38 21 00 40 */	addi r1, r1, 0x40
/* 8079E680  4E 80 00 20 */	blr 
