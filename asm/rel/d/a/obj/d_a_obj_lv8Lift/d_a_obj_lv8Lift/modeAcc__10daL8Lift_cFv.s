lbl_80C890B8:
/* 80C890B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C890BC  7C 08 02 A6 */	mflr r0
/* 80C890C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C890C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C890C8  4B 6D 91 15 */	bl _savegpr_29
/* 80C890CC  7C 7D 1B 78 */	mr r29, r3
/* 80C890D0  3C 60 80 C9 */	lis r3, lit_3627@ha /* 0x80C89F60@ha */
/* 80C890D4  3B E3 9F 60 */	addi r31, r3, lit_3627@l /* 0x80C89F60@l */
/* 80C890D8  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 80C890DC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80C890E0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C890E4  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C890E8  4B 5E 76 59 */	bl cLib_chaseF__FPfff
/* 80C890EC  2C 03 00 01 */	cmpwi r3, 1
/* 80C890F0  41 82 00 18 */	beq lbl_80C89108
/* 80C890F4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C890F8  38 9D 05 CC */	addi r4, r29, 0x5cc
/* 80C890FC  4B 5D DF 31 */	bl __eq__4cXyzCFRC3Vec
/* 80C89100  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C89104  41 82 00 0C */	beq lbl_80C89110
lbl_80C89108:
/* 80C89108  7F A3 EB 78 */	mr r3, r29
/* 80C8910C  48 00 00 8D */	bl init_modeMove__10daL8Lift_cFv
lbl_80C89110:
/* 80C89110  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C89114  38 9D 05 CC */	addi r4, r29, 0x5cc
/* 80C89118  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8911C  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 80C89120  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C89124  4B 5E 69 95 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C89128  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C8912C  7C 03 07 74 */	extsb r3, r0
/* 80C89130  4B 3A 3F 3D */	bl dComIfGp_getReverb__Fi
/* 80C89134  7C 7E 1B 78 */	mr r30, r3
/* 80C89138  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80C8913C  4B 6D 8F 71 */	bl __cvt_fp2unsigned
/* 80C89140  7C 66 1B 78 */	mr r6, r3
/* 80C89144  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080214@ha */
/* 80C89148  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00080214@l */
/* 80C8914C  90 01 00 08 */	stw r0, 8(r1)
/* 80C89150  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C89154  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C89158  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8915C  38 81 00 08 */	addi r4, r1, 8
/* 80C89160  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C89164  7F C7 F3 78 */	mr r7, r30
/* 80C89168  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8916C  FC 40 08 90 */	fmr f2, f1
/* 80C89170  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C89174  FC 80 18 90 */	fmr f4, f3
/* 80C89178  39 00 00 00 */	li r8, 0
/* 80C8917C  4B 62 33 91 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C89180  39 61 00 20 */	addi r11, r1, 0x20
/* 80C89184  4B 6D 90 A5 */	bl _restgpr_29
/* 80C89188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8918C  7C 08 03 A6 */	mtlr r0
/* 80C89190  38 21 00 20 */	addi r1, r1, 0x20
/* 80C89194  4E 80 00 20 */	blr 
