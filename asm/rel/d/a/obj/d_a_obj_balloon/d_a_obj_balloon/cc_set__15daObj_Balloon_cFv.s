lbl_80BA810C:
/* 80BA810C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA8110  7C 08 02 A6 */	mflr r0
/* 80BA8114  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA8118  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA811C  7C 7F 1B 78 */	mr r31, r3
/* 80BA8120  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80BA8124  38 63 00 24 */	addi r3, r3, 0x24
/* 80BA8128  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80BA812C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80BA8130  4B 79 E3 80 */	b PSMTXCopy
/* 80BA8134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA8138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA813C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BA8140  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BA8144  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BA8148  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BA814C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BA8150  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA8154  38 7F 09 00 */	addi r3, r31, 0x900
/* 80BA8158  38 81 00 08 */	addi r4, r1, 8
/* 80BA815C  4B 6C 74 EC */	b SetC__8cM3dGSphFRC4cXyz
/* 80BA8160  38 7F 09 00 */	addi r3, r31, 0x900
/* 80BA8164  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80BA8168  54 05 10 3A */	slwi r5, r0, 2
/* 80BA816C  3C 80 80 BB */	lis r4, l_HIO@ha
/* 80BA8170  38 04 90 0C */	addi r0, r4, l_HIO@l
/* 80BA8174  7C 80 2A 14 */	add r4, r0, r5
/* 80BA8178  C0 24 00 08 */	lfs f1, 8(r4)
/* 80BA817C  3C 80 80 BB */	lis r4, balloon_radius@ha
/* 80BA8180  38 84 8E 80 */	addi r4, r4, balloon_radius@l
/* 80BA8184  7C 04 2C 2E */	lfsx f0, r4, r5
/* 80BA8188  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BA818C  4B 6C 75 7C */	b SetR__8cM3dGSphFf
/* 80BA8190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA8194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA8198  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BA819C  38 9F 07 DC */	addi r4, r31, 0x7dc
/* 80BA81A0  4B 6B CA 08 */	b Set__4cCcSFP8cCcD_Obj
/* 80BA81A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA81A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA81AC  7C 08 03 A6 */	mtlr r0
/* 80BA81B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA81B4  4E 80 00 20 */	blr 
