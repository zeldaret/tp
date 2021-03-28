lbl_80C8AAD0:
/* 80C8AAD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8AAD4  7C 08 02 A6 */	mflr r0
/* 80C8AAD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8AADC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8AAE0  4B 6D 76 FC */	b _savegpr_29
/* 80C8AAE4  7C 7D 1B 78 */	mr r29, r3
/* 80C8AAE8  3C 60 80 C9 */	lis r3, lit_3661@ha
/* 80C8AAEC  3B E3 B9 AC */	addi r31, r3, lit_3661@l
/* 80C8AAF0  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 80C8AAF4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80C8AAF8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C8AAFC  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C8AB00  4B 5E 5C 40 */	b cLib_chaseF__FPfff
/* 80C8AB04  2C 03 00 01 */	cmpwi r3, 1
/* 80C8AB08  41 82 00 18 */	beq lbl_80C8AB20
/* 80C8AB0C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C8AB10  38 9D 05 CC */	addi r4, r29, 0x5cc
/* 80C8AB14  4B 5D C5 18 */	b __eq__4cXyzCFRC3Vec
/* 80C8AB18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C8AB1C  41 82 00 0C */	beq lbl_80C8AB28
lbl_80C8AB20:
/* 80C8AB20  7F A3 EB 78 */	mr r3, r29
/* 80C8AB24  48 00 00 8D */	bl init_modeMove__12daOptiLift_cFv
lbl_80C8AB28:
/* 80C8AB28  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C8AB2C  38 9D 05 CC */	addi r4, r29, 0x5cc
/* 80C8AB30  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8AB34  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 80C8AB38  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C8AB3C  4B 5E 4F 7C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C8AB40  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C8AB44  7C 03 07 74 */	extsb r3, r0
/* 80C8AB48  4B 3A 25 24 */	b dComIfGp_getReverb__Fi
/* 80C8AB4C  7C 7E 1B 78 */	mr r30, r3
/* 80C8AB50  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80C8AB54  4B 6D 75 58 */	b __cvt_fp2unsigned
/* 80C8AB58  7C 66 1B 78 */	mr r6, r3
/* 80C8AB5C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080214@ha */
/* 80C8AB60  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00080214@l */
/* 80C8AB64  90 01 00 08 */	stw r0, 8(r1)
/* 80C8AB68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8AB6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8AB70  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8AB74  38 81 00 08 */	addi r4, r1, 8
/* 80C8AB78  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C8AB7C  7F C7 F3 78 */	mr r7, r30
/* 80C8AB80  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8AB84  FC 40 08 90 */	fmr f2, f1
/* 80C8AB88  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C8AB8C  FC 80 18 90 */	fmr f4, f3
/* 80C8AB90  39 00 00 00 */	li r8, 0
/* 80C8AB94  4B 62 19 78 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8AB98  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8AB9C  4B 6D 76 8C */	b _restgpr_29
/* 80C8ABA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8ABA4  7C 08 03 A6 */	mtlr r0
/* 80C8ABA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8ABAC  4E 80 00 20 */	blr 
