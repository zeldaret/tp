lbl_80055F84:
/* 80055F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80055F88  7C 08 02 A6 */	mflr r0
/* 80055F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80055F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80055F94  7C 7F 1B 78 */	mr r31, r3
/* 80055F98  28 05 00 00 */	cmplwi r5, 0
/* 80055F9C  41 82 00 10 */	beq lbl_80055FAC
/* 80055FA0  88 1F 00 02 */	lbz r0, 2(r31)
/* 80055FA4  28 00 00 80 */	cmplwi r0, 0x80
/* 80055FA8  41 80 00 0C */	blt lbl_80055FB4
lbl_80055FAC:
/* 80055FAC  38 60 00 00 */	li r3, 0
/* 80055FB0  48 00 00 24 */	b lbl_80055FD4
lbl_80055FB4:
/* 80055FB4  1C 60 00 68 */	mulli r3, r0, 0x68
/* 80055FB8  38 63 00 0C */	addi r3, r3, 0xc
/* 80055FBC  7C 7F 1A 14 */	add r3, r31, r3
/* 80055FC0  4B FF F4 2D */	bl set__20dDlst_shadowSimple_cFP4cXyzffP4cXyzsfP9_GXTexObj
/* 80055FC4  88 7F 00 02 */	lbz r3, 2(r31)
/* 80055FC8  38 03 00 01 */	addi r0, r3, 1
/* 80055FCC  98 1F 00 02 */	stb r0, 2(r31)
/* 80055FD0  38 60 00 01 */	li r3, 1
lbl_80055FD4:
/* 80055FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80055FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80055FDC  7C 08 03 A6 */	mtlr r0
/* 80055FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80055FE4  4E 80 00 20 */	blr 
