lbl_80679284:
/* 80679284  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80679288  7C 08 02 A6 */	mflr r0
/* 8067928C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80679290  39 61 00 30 */	addi r11, r1, 0x30
/* 80679294  4B CE 8F 49 */	bl _savegpr_29
/* 80679298  7C 7D 1B 78 */	mr r29, r3
/* 8067929C  3C 60 80 68 */	lis r3, lit_3789@ha /* 0x8067C3FC@ha */
/* 806792A0  3B E3 C3 FC */	addi r31, r3, lit_3789@l /* 0x8067C3FC@l */
/* 806792A4  38 7D 0C EC */	addi r3, r29, 0xcec
/* 806792A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806792AC  4B BF 5F 31 */	bl SetC__8cM3dGCylFRC4cXyz
/* 806792B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806792B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806792B8  3B C3 23 3C */	addi r30, r3, 0x233c
/* 806792BC  7F C3 F3 78 */	mr r3, r30
/* 806792C0  38 9D 0B C8 */	addi r4, r29, 0xbc8
/* 806792C4  4B BE B8 E5 */	bl Set__4cCcSFP8cCcD_Obj
/* 806792C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806792CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 806792D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806792D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806792D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806792DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806792E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806792E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806792E8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806792EC  4B 99 3A 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806792F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806792F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806792F8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806792FC  4B 99 31 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80679300  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80679304  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80679308  38 81 00 14 */	addi r4, r1, 0x14
/* 8067930C  38 A1 00 08 */	addi r5, r1, 8
/* 80679310  4B CC DA 5D */	bl PSMTXMultVec
/* 80679314  38 7D 0B B4 */	addi r3, r29, 0xbb4
/* 80679318  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8067931C  4B BF 63 ED */	bl SetR__8cM3dGSphFf
/* 80679320  38 7D 0B B4 */	addi r3, r29, 0xbb4
/* 80679324  38 81 00 08 */	addi r4, r1, 8
/* 80679328  4B BF 63 21 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8067932C  7F C3 F3 78 */	mr r3, r30
/* 80679330  38 9D 0A 90 */	addi r4, r29, 0xa90
/* 80679334  4B BE B8 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 80679338  39 61 00 30 */	addi r11, r1, 0x30
/* 8067933C  4B CE 8E ED */	bl _restgpr_29
/* 80679340  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80679344  7C 08 03 A6 */	mtlr r0
/* 80679348  38 21 00 30 */	addi r1, r1, 0x30
/* 8067934C  4E 80 00 20 */	blr 
