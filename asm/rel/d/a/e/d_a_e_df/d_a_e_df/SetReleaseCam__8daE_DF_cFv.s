lbl_806A7C3C:
/* 806A7C3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A7C40  7C 08 02 A6 */	mflr r0
/* 806A7C44  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A7C48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806A7C4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806A7C50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806A7C54  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 806A7C58  7C 00 07 74 */	extsb r0, r0
/* 806A7C5C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806A7C60  7C 84 02 14 */	add r4, r4, r0
/* 806A7C64  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 806A7C68  C0 03 08 1C */	lfs f0, 0x81c(r3)
/* 806A7C6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A7C70  C0 03 08 20 */	lfs f0, 0x820(r3)
/* 806A7C74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A7C78  C0 03 08 24 */	lfs f0, 0x824(r3)
/* 806A7C7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A7C80  C0 03 08 28 */	lfs f0, 0x828(r3)
/* 806A7C84  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A7C88  C0 03 08 2C */	lfs f0, 0x82c(r3)
/* 806A7C8C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A7C90  C0 03 08 30 */	lfs f0, 0x830(r3)
/* 806A7C94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A7C98  38 7F 02 48 */	addi r3, r31, 0x248
/* 806A7C9C  38 81 00 14 */	addi r4, r1, 0x14
/* 806A7CA0  38 A1 00 08 */	addi r5, r1, 8
/* 806A7CA4  4B AD 8F 74 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 806A7CA8  38 7F 02 48 */	addi r3, r31, 0x248
/* 806A7CAC  4B AB 98 00 */	b Start__9dCamera_cFv
/* 806A7CB0  38 7F 02 48 */	addi r3, r31, 0x248
/* 806A7CB4  38 80 00 00 */	li r4, 0
/* 806A7CB8  4B AB B3 54 */	b SetTrimSize__9dCamera_cFl
/* 806A7CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A7CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A7CC4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806A7CC8  4B 99 A7 A0 */	b reset__14dEvt_control_cFv
/* 806A7CCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806A7CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A7CD4  7C 08 03 A6 */	mtlr r0
/* 806A7CD8  38 21 00 30 */	addi r1, r1, 0x30
/* 806A7CDC  4E 80 00 20 */	blr 
