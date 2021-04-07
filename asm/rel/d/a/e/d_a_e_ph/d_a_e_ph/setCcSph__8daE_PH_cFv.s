lbl_8073D950:
/* 8073D950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073D954  7C 08 02 A6 */	mflr r0
/* 8073D958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073D95C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073D960  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8073D964  7C 7E 1B 78 */	mr r30, r3
/* 8073D968  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073D96C  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 8073D970  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073D974  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073D978  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8073D97C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073D980  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8073D984  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8073D988  4B 8C F3 DD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8073D98C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8073D990  4B 8C F5 B5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8073D994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073D998  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073D99C  38 81 00 08 */	addi r4, r1, 8
/* 8073D9A0  7C 85 23 78 */	mr r5, r4
/* 8073D9A4  4B C0 93 C9 */	bl PSMTXMultVec
/* 8073D9A8  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 8073D9AC  38 81 00 08 */	addi r4, r1, 8
/* 8073D9B0  4B B3 1C 99 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8073D9B4  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 8073D9B8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8073D9BC  4B B3 1D 4D */	bl SetR__8cM3dGSphFf
/* 8073D9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073D9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073D9C8  38 63 23 3C */	addi r3, r3, 0x233c
/* 8073D9CC  38 9E 09 74 */	addi r4, r30, 0x974
/* 8073D9D0  4B B2 71 D9 */	bl Set__4cCcSFP8cCcD_Obj
/* 8073D9D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073D9D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8073D9DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073D9E0  7C 08 03 A6 */	mtlr r0
/* 8073D9E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8073D9E8  4E 80 00 20 */	blr 
