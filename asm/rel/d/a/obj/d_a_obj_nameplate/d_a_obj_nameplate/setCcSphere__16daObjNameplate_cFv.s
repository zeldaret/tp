lbl_805942B8:
/* 805942B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805942BC  7C 08 02 A6 */	mflr r0
/* 805942C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805942C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805942C8  7C 7F 1B 78 */	mr r31, r3
/* 805942CC  3C 60 80 59 */	lis r3, lit_3718@ha /* 0x80594EF4@ha */
/* 805942D0  C0 23 4E F4 */	lfs f1, lit_3718@l(r3)  /* 0x80594EF4@l */
/* 805942D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 805942D8  3C 60 80 59 */	lis r3, lit_3719@ha /* 0x80594EF8@ha */
/* 805942DC  C0 03 4E F8 */	lfs f0, lit_3719@l(r3)  /* 0x80594EF8@l */
/* 805942E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805942E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805942E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805942EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805942F0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805942F4  38 7F 05 74 */	addi r3, r31, 0x574
/* 805942F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805942FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80594300  4B DB 21 B1 */	bl PSMTXCopy
/* 80594304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80594308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059430C  38 81 00 14 */	addi r4, r1, 0x14
/* 80594310  7C 85 23 78 */	mr r5, r4
/* 80594314  4B DB 2A 59 */	bl PSMTXMultVec
/* 80594318  38 7F 07 04 */	addi r3, r31, 0x704
/* 8059431C  38 81 00 14 */	addi r4, r1, 0x14
/* 80594320  4B CD B3 29 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80594324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80594328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059432C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80594330  38 9F 05 E0 */	addi r4, r31, 0x5e0
/* 80594334  4B CD 08 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 80594338  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059433C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80594340  7C 08 03 A6 */	mtlr r0
/* 80594344  38 21 00 30 */	addi r1, r1, 0x30
/* 80594348  4E 80 00 20 */	blr 
