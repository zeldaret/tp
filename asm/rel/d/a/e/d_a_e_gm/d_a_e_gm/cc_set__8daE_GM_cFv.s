lbl_806D59D0:
/* 806D59D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D59D4  7C 08 02 A6 */	mflr r0
/* 806D59D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D59DC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806D59E0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806D59E4  7C 7E 1B 78 */	mr r30, r3
/* 806D59E8  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D59EC  3B E3 79 A0 */	addi r31, r3, lit_3906@l
/* 806D59F0  88 1E 0A 69 */	lbz r0, 0xa69(r30)
/* 806D59F4  28 00 00 01 */	cmplwi r0, 1
/* 806D59F8  40 82 01 24 */	bne lbl_806D5B1C
/* 806D59FC  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5A00  80 63 00 04 */	lwz r3, 4(r3)
/* 806D5A04  38 63 00 24 */	addi r3, r3, 0x24
/* 806D5A08  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806D5A0C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806D5A10  4B C7 0A A0 */	b PSMTXCopy
/* 806D5A14  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 806D5A18  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 806D5A1C  EC 41 00 32 */	fmuls f2, f1, f0
/* 806D5A20  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806D5A24  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5A28  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D5A2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5A30  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D5A34  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806D5A38  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806D5A3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D5A40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D5A44  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D5A48  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D5A4C  4B C7 13 20 */	b PSMTXMultVec
/* 806D5A50  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806D5A54  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 806D5A58  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806D5A5C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806D5A60  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806D5A64  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 806D5A68  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 806D5A6C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806D5A70  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5A74  EC 01 00 32 */	fmuls f0, f1, f0
/* 806D5A78  EC 02 00 2A */	fadds f0, f2, f0
/* 806D5A7C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806D5A80  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 806D5A84  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 806D5A88  EC 41 00 32 */	fmuls f2, f1, f0
/* 806D5A8C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D5A90  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5A94  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D5A98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5A9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D5AA0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806D5AA4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806D5AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D5AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D5AB0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D5AB4  38 A1 00 20 */	addi r5, r1, 0x20
/* 806D5AB8  4B C7 12 B4 */	b PSMTXMultVec
/* 806D5ABC  38 7E 09 2C */	addi r3, r30, 0x92c
/* 806D5AC0  38 81 00 20 */	addi r4, r1, 0x20
/* 806D5AC4  4B B9 9B 84 */	b SetC__8cM3dGSphFRC4cXyz
/* 806D5AC8  38 7E 09 2C */	addi r3, r30, 0x92c
/* 806D5ACC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D5AD0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5AD4  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D5AD8  4B B9 9C 30 */	b SetR__8cM3dGSphFf
/* 806D5ADC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D5AE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D5AE4  38 63 23 3C */	addi r3, r3, 0x233c
/* 806D5AE8  38 9E 08 08 */	addi r4, r30, 0x808
/* 806D5AEC  4B B8 F0 BC */	b Set__4cCcSFP8cCcD_Obj
/* 806D5AF0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806D5AF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806D5AF8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806D5AFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806D5B00  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806D5B04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D5B08  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806D5B0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806D5B10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806D5B14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806D5B18  48 00 02 10 */	b lbl_806D5D28
lbl_806D5B1C:
/* 806D5B1C  28 00 00 02 */	cmplwi r0, 2
/* 806D5B20  40 82 01 20 */	bne lbl_806D5C40
/* 806D5B24  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D5B28  80 63 00 04 */	lwz r3, 4(r3)
/* 806D5B2C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806D5B30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806D5B34  38 63 00 60 */	addi r3, r3, 0x60
/* 806D5B38  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806D5B3C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806D5B40  4B C7 09 70 */	b PSMTXCopy
/* 806D5B44  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806D5B48  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5B4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D5B50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5B54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D5B58  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806D5B5C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806D5B60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D5B64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D5B68  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D5B6C  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D5B70  4B C7 11 FC */	b PSMTXMultVec
/* 806D5B74  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806D5B78  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 806D5B7C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806D5B80  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806D5B84  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806D5B88  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 806D5B8C  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 806D5B90  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806D5B94  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5B98  EC 01 00 32 */	fmuls f0, f1, f0
/* 806D5B9C  EC 02 00 2A */	fadds f0, f2, f0
/* 806D5BA0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806D5BA4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806D5BA8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5BAC  EC 41 00 32 */	fmuls f2, f1, f0
/* 806D5BB0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806D5BB4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 806D5BB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806D5BBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D5BC0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 806D5BC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5BC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806D5BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D5BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D5BD4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D5BD8  38 A1 00 20 */	addi r5, r1, 0x20
/* 806D5BDC  4B C7 11 90 */	b PSMTXMultVec
/* 806D5BE0  38 7E 09 2C */	addi r3, r30, 0x92c
/* 806D5BE4  38 81 00 20 */	addi r4, r1, 0x20
/* 806D5BE8  4B B9 9A 60 */	b SetC__8cM3dGSphFRC4cXyz
/* 806D5BEC  38 7E 09 2C */	addi r3, r30, 0x92c
/* 806D5BF0  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 806D5BF4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5BF8  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D5BFC  4B B9 9B 0C */	b SetR__8cM3dGSphFf
/* 806D5C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D5C04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D5C08  38 63 23 3C */	addi r3, r3, 0x233c
/* 806D5C0C  38 9E 08 08 */	addi r4, r30, 0x808
/* 806D5C10  4B B8 EF 98 */	b Set__4cCcSFP8cCcD_Obj
/* 806D5C14  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806D5C18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806D5C1C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806D5C20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806D5C24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806D5C28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D5C2C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806D5C30  D0 01 00 08 */	stfs f0, 8(r1)
/* 806D5C34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806D5C38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806D5C3C  48 00 00 EC */	b lbl_806D5D28
lbl_806D5C40:
/* 806D5C40  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 806D5C44  38 63 00 24 */	addi r3, r3, 0x24
/* 806D5C48  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806D5C4C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806D5C50  4B C7 08 60 */	b PSMTXCopy
/* 806D5C54  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5C58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D5C5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806D5C60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806D5C64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D5C68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D5C6C  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D5C70  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D5C74  4B C7 10 F8 */	b PSMTXMultVec
/* 806D5C78  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806D5C7C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 806D5C80  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806D5C84  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806D5C88  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806D5C8C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 806D5C90  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 806D5C94  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806D5C98  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5C9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806D5CA0  EC 02 00 2A */	fadds f0, f2, f0
/* 806D5CA4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806D5CA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D5CAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D5CB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806D5CB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806D5CB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D5CBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D5CC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D5CC4  38 A1 00 20 */	addi r5, r1, 0x20
/* 806D5CC8  4B C7 10 A4 */	b PSMTXMultVec
/* 806D5CCC  38 7E 09 2C */	addi r3, r30, 0x92c
/* 806D5CD0  38 81 00 20 */	addi r4, r1, 0x20
/* 806D5CD4  4B B9 99 74 */	b SetC__8cM3dGSphFRC4cXyz
/* 806D5CD8  38 7E 09 2C */	addi r3, r30, 0x92c
/* 806D5CDC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806D5CE0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 806D5CE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D5CE8  4B B9 9A 20 */	b SetR__8cM3dGSphFf
/* 806D5CEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D5CF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D5CF4  38 63 23 3C */	addi r3, r3, 0x233c
/* 806D5CF8  38 9E 08 08 */	addi r4, r30, 0x808
/* 806D5CFC  4B B8 EE AC */	b Set__4cCcSFP8cCcD_Obj
/* 806D5D00  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806D5D04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806D5D08  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806D5D0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806D5D10  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806D5D14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D5D18  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806D5D1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806D5D20  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806D5D24  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_806D5D28:
/* 806D5D28  7F C3 F3 78 */	mr r3, r30
/* 806D5D2C  38 9E 09 6C */	addi r4, r30, 0x96c
/* 806D5D30  38 A1 00 14 */	addi r5, r1, 0x14
/* 806D5D34  38 C1 00 08 */	addi r6, r1, 8
/* 806D5D38  48 00 17 C9 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806D5D3C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806D5D40  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806D5D44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D5D48  7C 08 03 A6 */	mtlr r0
/* 806D5D4C  38 21 00 40 */	addi r1, r1, 0x40
/* 806D5D50  4E 80 00 20 */	blr 
