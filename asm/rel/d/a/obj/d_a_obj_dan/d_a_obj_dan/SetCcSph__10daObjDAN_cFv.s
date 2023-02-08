lbl_80BDA620:
/* 80BDA620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA624  7C 08 02 A6 */	mflr r0
/* 80BDA628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDA630  7C 7F 1B 78 */	mr r31, r3
/* 80BDA634  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80BDA638  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BDA63C  4B 69 50 0D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BDA640  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80BDA644  3C 80 80 BE */	lis r4, lit_3788@ha /* 0x80BDC3F4@ha */
/* 80BDA648  C0 24 C3 F4 */	lfs f1, lit_3788@l(r4)  /* 0x80BDC3F4@l */
/* 80BDA64C  4B 69 50 BD */	bl SetR__8cM3dGSphFf
/* 80BDA650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDA654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDA658  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BDA65C  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80BDA660  4B 68 A5 49 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BDA664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDA668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA66C  7C 08 03 A6 */	mtlr r0
/* 80BDA670  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA674  4E 80 00 20 */	blr 
