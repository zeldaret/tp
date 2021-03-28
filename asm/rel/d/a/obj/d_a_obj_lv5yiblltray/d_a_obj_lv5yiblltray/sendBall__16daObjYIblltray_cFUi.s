lbl_80C6F23C:
/* 80C6F23C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6F240  7C 08 02 A6 */	mflr r0
/* 80C6F244  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6F248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C6F24C  7C 7F 1B 78 */	mr r31, r3
/* 80C6F250  90 83 06 34 */	stw r4, 0x634(r3)
/* 80C6F254  38 00 00 03 */	li r0, 3
/* 80C6F258  90 03 06 40 */	stw r0, 0x640(r3)
/* 80C6F25C  3C 60 80 C7 */	lis r3, lit_3694@ha
/* 80C6F260  C0 03 09 C0 */	lfs f0, lit_3694@l(r3)
/* 80C6F264  D0 1F 06 3C */	stfs f0, 0x63c(r31)
/* 80C6F268  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80C6F26C  90 01 00 08 */	stw r0, 8(r1)
/* 80C6F270  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C6F274  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C6F278  38 81 00 08 */	addi r4, r1, 8
/* 80C6F27C  4B 3A A5 7C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6F280  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80C6F284  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80C6F288  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80C6F28C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C6F290  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80C6F294  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80C6F298  38 00 00 01 */	li r0, 1
/* 80C6F29C  98 03 0D B8 */	stb r0, 0xdb8(r3)
/* 80C6F2A0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6F2A4  98 03 04 E2 */	stb r0, 0x4e2(r3)
/* 80C6F2A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C6F2AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6F2B0  7C 08 03 A6 */	mtlr r0
/* 80C6F2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6F2B8  4E 80 00 20 */	blr 
