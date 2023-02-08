lbl_8035CCDC:
/* 8035CCDC  7C 08 02 A6 */	mflr r0
/* 8035CCE0  90 01 00 04 */	stw r0, 4(r1)
/* 8035CCE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035CCE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035CCEC  7C 7F 1B 78 */	mr r31, r3
/* 8035CCF0  C0 02 CB A8 */	lfs f0, lit_179(r2)
/* 8035CCF4  EC 20 08 24 */	fdivs f1, f0, f1
/* 8035CCF8  48 00 53 B5 */	bl __cvt_fp2unsigned
/* 8035CCFC  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 8035CD00  38 05 FF FF */	addi r0, r5, -1
/* 8035CD04  54 64 05 FE */	clrlwi r4, r3, 0x17
/* 8035CD08  54 00 40 2E */	slwi r0, r0, 8
/* 8035CD0C  7C 60 23 96 */	divwu r3, r0, r4
/* 8035CD10  28 04 00 80 */	cmplwi r4, 0x80
/* 8035CD14  38 63 00 01 */	addi r3, r3, 1
/* 8035CD18  40 81 00 30 */	ble lbl_8035CD48
/* 8035CD1C  28 04 01 00 */	cmplwi r4, 0x100
/* 8035CD20  40 80 00 28 */	bge lbl_8035CD48
/* 8035CD24  48 00 00 08 */	b lbl_8035CD2C
lbl_8035CD28:
/* 8035CD28  54 84 F8 7E */	srwi r4, r4, 1
lbl_8035CD2C:
/* 8035CD2C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8035CD30  41 82 FF F8 */	beq lbl_8035CD28
/* 8035CD34  7C 05 23 96 */	divwu r0, r5, r4
/* 8035CD38  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035CD3C  7C 00 28 51 */	subf. r0, r0, r5
/* 8035CD40  40 82 00 08 */	bne lbl_8035CD48
/* 8035CD44  38 63 00 01 */	addi r3, r3, 1
lbl_8035CD48:
/* 8035CD48  28 03 04 00 */	cmplwi r3, 0x400
/* 8035CD4C  40 81 00 08 */	ble lbl_8035CD54
/* 8035CD50  38 60 04 00 */	li r3, 0x400
lbl_8035CD54:
/* 8035CD54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035CD58  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8035CD5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035CD60  38 21 00 20 */	addi r1, r1, 0x20
/* 8035CD64  7C 08 03 A6 */	mtlr r0
/* 8035CD68  4E 80 00 20 */	blr 
