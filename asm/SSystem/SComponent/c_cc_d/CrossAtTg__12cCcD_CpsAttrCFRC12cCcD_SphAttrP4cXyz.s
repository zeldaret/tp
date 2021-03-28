lbl_80263DC0:
/* 80263DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263DC4  7C 08 02 A6 */	mflr r0
/* 80263DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263DCC  28 04 00 00 */	cmplwi r4, 0
/* 80263DD0  41 82 00 08 */	beq lbl_80263DD8
/* 80263DD4  38 84 00 20 */	addi r4, r4, 0x20
lbl_80263DD8:
/* 80263DD8  38 63 00 20 */	addi r3, r3, 0x20
/* 80263DDC  48 00 9E 61 */	bl cM3d_Cross_CpsSph__FRC8cM3dGCpsRC8cM3dGSphP3Vec
/* 80263DE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80263DE4  41 82 00 0C */	beq lbl_80263DF0
/* 80263DE8  38 60 00 01 */	li r3, 1
/* 80263DEC  48 00 00 08 */	b lbl_80263DF4
lbl_80263DF0:
/* 80263DF0  38 60 00 00 */	li r3, 0
lbl_80263DF4:
/* 80263DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80263DF8  7C 08 03 A6 */	mtlr r0
/* 80263DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80263E00  4E 80 00 20 */	blr 
