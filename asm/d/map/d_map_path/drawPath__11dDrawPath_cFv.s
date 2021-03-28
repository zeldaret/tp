lbl_8003CCC4:
/* 8003CCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003CCC8  7C 08 02 A6 */	mflr r0
/* 8003CCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003CCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003CCD4  7C 7F 1B 78 */	mr r31, r3
/* 8003CCD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8003CCDC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8003CCE0  7D 89 03 A6 */	mtctr r12
/* 8003CCE4  4E 80 04 21 */	bctrl 
/* 8003CCE8  7C 64 1B 78 */	mr r4, r3
/* 8003CCEC  48 00 00 30 */	b lbl_8003CD1C
lbl_8003CCF0:
/* 8003CCF0  7F E3 FB 78 */	mr r3, r31
/* 8003CCF4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CCF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8003CCFC  7D 89 03 A6 */	mtctr r12
/* 8003CD00  4E 80 04 21 */	bctrl 
/* 8003CD04  7F E3 FB 78 */	mr r3, r31
/* 8003CD08  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CD0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8003CD10  7D 89 03 A6 */	mtctr r12
/* 8003CD14  4E 80 04 21 */	bctrl 
/* 8003CD18  7C 64 1B 78 */	mr r4, r3
lbl_8003CD1C:
/* 8003CD1C  28 04 00 00 */	cmplwi r4, 0
/* 8003CD20  40 82 FF D0 */	bne lbl_8003CCF0
/* 8003CD24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003CD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003CD2C  7C 08 03 A6 */	mtlr r0
/* 8003CD30  38 21 00 10 */	addi r1, r1, 0x10
/* 8003CD34  4E 80 00 20 */	blr 
