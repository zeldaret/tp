lbl_80CB3024:
/* 80CB3024  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CB3028  7C 08 02 A6 */	mflr r0
/* 80CB302C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CB3030  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80CB3034  7C 7F 1B 78 */	mr r31, r3
/* 80CB3038  38 61 00 20 */	addi r3, r1, 0x20
/* 80CB303C  4B 3C 45 40 */	b __ct__11dBgS_GndChkFv
/* 80CB3040  38 61 00 20 */	addi r3, r1, 0x20
/* 80CB3044  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB3048  4B 5B 4C E0 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80CB304C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB3050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB3054  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB3058  38 81 00 20 */	addi r4, r1, 0x20
/* 80CB305C  4B 3C 14 44 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80CB3060  D0 3F 05 D0 */	stfs f1, 0x5d0(r31)
/* 80CB3064  3C 60 80 CB */	lis r3, lit_3726@ha
/* 80CB3068  C0 03 3F 0C */	lfs f0, lit_3726@l(r3)
/* 80CB306C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CB3070  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB3074  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CB3078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB307C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB3080  C0 3F 05 F8 */	lfs f1, 0x5f8(r31)
/* 80CB3084  C0 5F 05 FC */	lfs f2, 0x5fc(r31)
/* 80CB3088  C0 7F 06 00 */	lfs f3, 0x600(r31)
/* 80CB308C  4B 69 38 5C */	b PSMTXTrans
/* 80CB3090  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB3094  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB3098  38 81 00 14 */	addi r4, r1, 0x14
/* 80CB309C  7C 85 23 78 */	mr r5, r4
/* 80CB30A0  4B 69 3C CC */	b PSMTXMultVec
/* 80CB30A4  38 61 00 08 */	addi r3, r1, 8
/* 80CB30A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB30AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CB30B0  4B 5B 3A 34 */	b __pl__4cXyzCFRC3Vec
/* 80CB30B4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CB30B8  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80CB30BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CB30C0  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80CB30C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CB30C8  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80CB30CC  38 00 00 01 */	li r0, 1
/* 80CB30D0  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80CB30D4  38 00 00 00 */	li r0, 0
/* 80CB30D8  98 1F 05 92 */	stb r0, 0x592(r31)
/* 80CB30DC  38 61 00 20 */	addi r3, r1, 0x20
/* 80CB30E0  38 80 FF FF */	li r4, -1
/* 80CB30E4  4B 3C 45 0C */	b __dt__11dBgS_GndChkFv
/* 80CB30E8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80CB30EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CB30F0  7C 08 03 A6 */	mtlr r0
/* 80CB30F4  38 21 00 80 */	addi r1, r1, 0x80
/* 80CB30F8  4E 80 00 20 */	blr 
