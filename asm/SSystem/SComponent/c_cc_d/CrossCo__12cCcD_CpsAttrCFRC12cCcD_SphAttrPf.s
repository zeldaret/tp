lbl_80263F74:
/* 80263F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80263F78  7C 08 02 A6 */	mflr r0
/* 80263F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80263F80  C0 02 B6 20 */	lfs f0, lit_2431(r2)
/* 80263F84  D0 05 00 00 */	stfs f0, 0(r5)
/* 80263F88  28 04 00 00 */	cmplwi r4, 0
/* 80263F8C  41 82 00 08 */	beq lbl_80263F94
/* 80263F90  38 84 00 20 */	addi r4, r4, 0x20
lbl_80263F94:
/* 80263F94  38 63 00 20 */	addi r3, r3, 0x20
/* 80263F98  38 A1 00 08 */	addi r5, r1, 8
/* 80263F9C  48 00 9C A1 */	bl cM3d_Cross_CpsSph__FRC8cM3dGCpsRC8cM3dGSphP3Vec
/* 80263FA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80263FA4  41 82 00 0C */	beq lbl_80263FB0
/* 80263FA8  38 60 00 01 */	li r3, 1
/* 80263FAC  48 00 00 08 */	b lbl_80263FB4
lbl_80263FB0:
/* 80263FB0  38 60 00 00 */	li r3, 0
lbl_80263FB4:
/* 80263FB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80263FB8  7C 08 03 A6 */	mtlr r0
/* 80263FBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80263FC0  4E 80 00 20 */	blr 
