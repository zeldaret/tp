lbl_807E40C8:
/* 807E40C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807E40CC  7C 08 02 A6 */	mflr r0
/* 807E40D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807E40D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807E40D8  7C 7F 1B 78 */	mr r31, r3
/* 807E40DC  7C 80 23 78 */	mr r0, r4
/* 807E40E0  38 61 00 08 */	addi r3, r1, 8
/* 807E40E4  7C A4 2B 78 */	mr r4, r5
/* 807E40E8  7C 05 03 78 */	mr r5, r0
/* 807E40EC  4B A8 2A 48 */	b __mi__4cXyzCFRC3Vec
/* 807E40F0  C0 01 00 08 */	lfs f0, 8(r1)
/* 807E40F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E40F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807E40FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E4100  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807E4104  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E4108  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E410C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E4110  A8 1F 06 68 */	lha r0, 0x668(r31)
/* 807E4114  7C 00 00 D0 */	neg r0, r0
/* 807E4118  7C 04 07 34 */	extsh r4, r0
/* 807E411C  4B 82 82 28 */	b mDoMtx_XrotS__FPA4_fs
/* 807E4120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E4124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E4128  A8 1F 06 6A */	lha r0, 0x66a(r31)
/* 807E412C  7C 00 00 D0 */	neg r0, r0
/* 807E4130  7C 04 07 34 */	extsh r4, r0
/* 807E4134  4B 82 83 00 */	b mDoMtx_YrotM__FPA4_fs
/* 807E4138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E413C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E4140  38 81 00 14 */	addi r4, r1, 0x14
/* 807E4144  38 A1 00 20 */	addi r5, r1, 0x20
/* 807E4148  4B B6 2C 24 */	b PSMTXMultVec
/* 807E414C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807E4150  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 807E4154  4B A8 35 20 */	b cM_atan2s__Fff
/* 807E4158  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807E415C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807E4160  7C 08 03 A6 */	mtlr r0
/* 807E4164  38 21 00 40 */	addi r1, r1, 0x40
/* 807E4168  4E 80 00 20 */	blr 
