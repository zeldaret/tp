lbl_80CAEE90:
/* 80CAEE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAEE94  7C 08 02 A6 */	mflr r0
/* 80CAEE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAEE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAEEA0  7C 7F 1B 78 */	mr r31, r3
/* 80CAEEA4  3C 60 80 CB */	lis r3, l_PIC_AT_OFFSET_POS@ha
/* 80CAEEA8  C4 03 F1 04 */	lfsu f0, l_PIC_AT_OFFSET_POS@l(r3)
/* 80CAEEAC  D0 1F 0C 7C */	stfs f0, 0xc7c(r31)
/* 80CAEEB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CAEEB4  D0 1F 0C 80 */	stfs f0, 0xc80(r31)
/* 80CAEEB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CAEEBC  D0 1F 0C 84 */	stfs f0, 0xc84(r31)
/* 80CAEEC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CAEEC4  4B 35 DE A0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CAEEC8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CAEECC  4B 35 E0 78 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CAEED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAEED4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAEED8  38 9F 0C 7C */	addi r4, r31, 0xc7c
/* 80CAEEDC  7C 85 23 78 */	mr r5, r4
/* 80CAEEE0  4B 69 7E 8C */	b PSMTXMultVec
/* 80CAEEE4  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 80CAEEE8  38 9F 0C 7C */	addi r4, r31, 0xc7c
/* 80CAEEEC  4B 5C 02 F0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CAEEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAEEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAEEF8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CAEEFC  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 80CAEF00  4B 5B 5C A8 */	b Set__4cCcSFP8cCcD_Obj
/* 80CAEF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAEF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAEF0C  7C 08 03 A6 */	mtlr r0
/* 80CAEF10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAEF14  4E 80 00 20 */	blr 
