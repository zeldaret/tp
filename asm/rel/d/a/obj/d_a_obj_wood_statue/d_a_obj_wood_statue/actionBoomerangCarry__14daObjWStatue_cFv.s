lbl_80D3AF5C:
/* 80D3AF5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3AF60  7C 08 02 A6 */	mflr r0
/* 80D3AF64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3AF68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D3AF6C  7C 7F 1B 78 */	mr r31, r3
/* 80D3AF70  38 00 00 FE */	li r0, 0xfe
/* 80D3AF74  B0 01 00 08 */	sth r0, 8(r1)
/* 80D3AF78  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80D3AF7C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80D3AF80  38 81 00 08 */	addi r4, r1, 8
/* 80D3AF84  4B 2D E8 75 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D3AF88  28 03 00 00 */	cmplwi r3, 0
/* 80D3AF8C  41 82 00 1C */	beq lbl_80D3AFA8
/* 80D3AF90  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D3AF94  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D3AF98  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D3AF9C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D3AFA0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D3AFA4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80D3AFA8:
/* 80D3AFA8  38 60 00 01 */	li r3, 1
/* 80D3AFAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3AFB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3AFB4  7C 08 03 A6 */	mtlr r0
/* 80D3AFB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3AFBC  4E 80 00 20 */	blr 
