lbl_8045F478:
/* 8045F478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045F47C  7C 08 02 A6 */	mflr r0
/* 8045F480  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045F484  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8045F488  7C 7F 1B 78 */	mr r31, r3
/* 8045F48C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045F490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045F494  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8045F498  38 61 00 08 */	addi r3, r1, 8
/* 8045F49C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8045F4A0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045F4A4  4B E0 76 90 */	b __mi__4cXyzCFRC3Vec
/* 8045F4A8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8045F4AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045F4B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045F4B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045F4B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8045F4BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8045F4C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045F4C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045F4C8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8045F4CC  7C 00 00 D0 */	neg r0, r0
/* 8045F4D0  7C 04 07 34 */	extsh r4, r0
/* 8045F4D4  4B BA CF 08 */	b mDoMtx_YrotS__FPA4_fs
/* 8045F4D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045F4DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045F4E0  38 81 00 14 */	addi r4, r1, 0x14
/* 8045F4E4  7C 85 23 78 */	mr r5, r4
/* 8045F4E8  4B EE 78 84 */	b PSMTXMultVec
/* 8045F4EC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8045F4F0  3C 60 80 46 */	lis r3, lit_3893@ha
/* 8045F4F4  C0 03 06 70 */	lfs f0, lit_3893@l(r3)
/* 8045F4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F4FC  7C 00 00 26 */	mfcr r0
/* 8045F500  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 8045F504  7C 00 00 34 */	cntlzw r0, r0
/* 8045F508  54 03 D9 7E */	srwi r3, r0, 5
/* 8045F50C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8045F510  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045F514  7C 08 03 A6 */	mtlr r0
/* 8045F518  38 21 00 30 */	addi r1, r1, 0x30
/* 8045F51C  4E 80 00 20 */	blr 
