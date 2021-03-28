lbl_8028BC70:
/* 8028BC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BC74  7C 08 02 A6 */	mflr r0
/* 8028BC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BC7C  2C 04 00 02 */	cmpwi r4, 2
/* 8028BC80  41 82 00 08 */	beq lbl_8028BC88
/* 8028BC84  48 00 00 58 */	b lbl_8028BCDC
lbl_8028BC88:
/* 8028BC88  80 85 00 00 */	lwz r4, 0(r5)
/* 8028BC8C  30 04 FF FF */	addic r0, r4, -1
/* 8028BC90  7C 00 21 10 */	subfe r0, r0, r4
/* 8028BC94  98 03 01 14 */	stb r0, 0x114(r3)
/* 8028BC98  80 03 01 08 */	lwz r0, 0x108(r3)
/* 8028BC9C  2C 00 00 01 */	cmpwi r0, 1
/* 8028BCA0  41 82 00 0C */	beq lbl_8028BCAC
/* 8028BCA4  40 80 00 38 */	bge lbl_8028BCDC
/* 8028BCA8  48 00 00 34 */	b lbl_8028BCDC
lbl_8028BCAC:
/* 8028BCAC  38 80 00 00 */	li r4, 0
/* 8028BCB0  38 A0 FF FF */	li r5, -1
/* 8028BCB4  88 03 01 14 */	lbz r0, 0x114(r3)
/* 8028BCB8  28 00 00 00 */	cmplwi r0, 0
/* 8028BCBC  41 82 00 0C */	beq lbl_8028BCC8
/* 8028BCC0  80 83 01 0C */	lwz r4, 0x10c(r3)
/* 8028BCC4  80 A3 01 10 */	lwz r5, 0x110(r3)
lbl_8028BCC8:
/* 8028BCC8  80 63 01 04 */	lwz r3, 0x104(r3)
/* 8028BCCC  81 83 00 00 */	lwz r12, 0(r3)
/* 8028BCD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8028BCD4  7D 89 03 A6 */	mtctr r12
/* 8028BCD8  4E 80 04 21 */	bctrl 
lbl_8028BCDC:
/* 8028BCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BCE0  7C 08 03 A6 */	mtlr r0
/* 8028BCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BCE8  4E 80 00 20 */	blr 
