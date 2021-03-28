lbl_809F775C:
/* 809F775C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7760  7C 08 02 A6 */	mflr r0
/* 809F7764  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F776C  7C 7F 1B 78 */	mr r31, r3
/* 809F7770  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809F7774  2C 00 00 01 */	cmpwi r0, 1
/* 809F7778  41 82 00 54 */	beq lbl_809F77CC
/* 809F777C  40 80 00 50 */	bge lbl_809F77CC
/* 809F7780  2C 00 00 00 */	cmpwi r0, 0
/* 809F7784  40 80 00 0C */	bge lbl_809F7790
/* 809F7788  48 00 00 44 */	b lbl_809F77CC
/* 809F778C  48 00 00 40 */	b lbl_809F77CC
lbl_809F7790:
/* 809F7790  38 80 00 00 */	li r4, 0
/* 809F7794  3C A0 80 A0 */	lis r5, lit_4803@ha
/* 809F7798  C0 25 85 B0 */	lfs f1, lit_4803@l(r5)
/* 809F779C  38 A0 00 00 */	li r5, 0
/* 809F77A0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809F77A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F77A8  7D 89 03 A6 */	mtctr r12
/* 809F77AC  4E 80 04 21 */	bctrl 
/* 809F77B0  7F E3 FB 78 */	mr r3, r31
/* 809F77B4  38 80 00 02 */	li r4, 2
/* 809F77B8  4B FF E3 A9 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F77BC  38 00 00 00 */	li r0, 0
/* 809F77C0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809F77C4  38 00 00 02 */	li r0, 2
/* 809F77C8  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
lbl_809F77CC:
/* 809F77CC  38 60 00 01 */	li r3, 1
/* 809F77D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F77D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F77D8  7C 08 03 A6 */	mtlr r0
/* 809F77DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809F77E0  4E 80 00 20 */	blr 
