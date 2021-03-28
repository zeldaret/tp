lbl_8024E7A4:
/* 8024E7A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024E7A8  7C 08 02 A6 */	mflr r0
/* 8024E7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024E7B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024E7B4  7C 7F 1B 78 */	mr r31, r3
/* 8024E7B8  48 00 25 35 */	bl displayInit__7dName_cFv
/* 8024E7BC  88 1F 03 1C */	lbz r0, 0x31c(r31)
/* 8024E7C0  7C 00 07 75 */	extsb. r0, r0
/* 8024E7C4  41 82 00 14 */	beq lbl_8024E7D8
/* 8024E7C8  7F E3 FB 78 */	mr r3, r31
/* 8024E7CC  48 00 26 89 */	bl NameStrSet__7dName_cFv
/* 8024E7D0  38 00 00 00 */	li r0, 0
/* 8024E7D4  98 1F 03 1C */	stb r0, 0x31c(r31)
lbl_8024E7D8:
/* 8024E7D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024E7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024E7E0  7C 08 03 A6 */	mtlr r0
/* 8024E7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8024E7E8  4E 80 00 20 */	blr 
