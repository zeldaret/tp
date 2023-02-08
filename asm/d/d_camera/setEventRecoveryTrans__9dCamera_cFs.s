lbl_801806DC:
/* 801806DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801806E0  7C 08 02 A6 */	mflr r0
/* 801806E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801806E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801806EC  7C 7F 1B 78 */	mr r31, r3
/* 801806F0  7C 85 23 78 */	mr r5, r4
/* 801806F4  38 9F 01 18 */	addi r4, r31, 0x118
/* 801806F8  4B FE 45 6D */	bl pushInfo__9dCamera_cFPQ29dCamera_c10dCamInfo_cs
/* 801806FC  38 61 00 08 */	addi r3, r1, 8
/* 80180700  7F E4 FB 78 */	mr r4, r31
/* 80180704  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80180708  4B F1 70 55 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8018070C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80180710  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 80180714  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80180718  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 8018071C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80180720  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 80180724  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80180728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018072C  7C 08 03 A6 */	mtlr r0
/* 80180730  38 21 00 20 */	addi r1, r1, 0x20
/* 80180734  4E 80 00 20 */	blr 
