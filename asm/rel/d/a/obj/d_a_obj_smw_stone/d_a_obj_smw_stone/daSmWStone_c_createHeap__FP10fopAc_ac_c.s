lbl_80CDE518:
/* 80CDE518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE51C  7C 08 02 A6 */	mflr r0
/* 80CDE520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE524  48 00 06 E1 */	bl createHeap__12daSmWStone_cFv
/* 80CDE528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE52C  7C 08 03 A6 */	mtlr r0
/* 80CDE530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE534  4E 80 00 20 */	blr 
