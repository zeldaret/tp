lbl_8018EBCC:
/* 8018EBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EBD0  7C 08 02 A6 */	mflr r0
/* 8018EBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EBDC  7C 7F 1B 78 */	mr r31, r3
/* 8018EBE0  A8 63 03 AC */	lha r3, 0x3ac(r3)
/* 8018EBE4  2C 03 00 00 */	cmpwi r3, 0
/* 8018EBE8  41 82 00 10 */	beq lbl_8018EBF8
/* 8018EBEC  38 03 FF FF */	addi r0, r3, -1
/* 8018EBF0  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018EBF4  48 00 00 44 */	b lbl_8018EC38
lbl_8018EBF8:
/* 8018EBF8  38 00 00 01 */	li r0, 1
/* 8018EBFC  98 1F 23 75 */	stb r0, 0x2375(r31)
/* 8018EC00  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8018EC04  80 63 00 04 */	lwz r3, 4(r3)
/* 8018EC08  28 03 00 00 */	cmplwi r3, 0
/* 8018EC0C  41 82 00 18 */	beq lbl_8018EC24
/* 8018EC10  38 80 00 00 */	li r4, 0
/* 8018EC14  81 83 00 00 */	lwz r12, 0(r3)
/* 8018EC18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018EC1C  7D 89 03 A6 */	mtctr r12
/* 8018EC20  4E 80 04 21 */	bctrl 
lbl_8018EC24:
/* 8018EC24  38 00 00 00 */	li r0, 0
/* 8018EC28  98 1F 23 74 */	stb r0, 0x2374(r31)
/* 8018EC2C  38 00 00 01 */	li r0, 1
/* 8018EC30  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 8018EC34  98 03 00 10 */	stb r0, 0x10(r3)
lbl_8018EC38:
/* 8018EC38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018EC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018EC40  7C 08 03 A6 */	mtlr r0
/* 8018EC44  38 21 00 10 */	addi r1, r1, 0x10
/* 8018EC48  4E 80 00 20 */	blr 
