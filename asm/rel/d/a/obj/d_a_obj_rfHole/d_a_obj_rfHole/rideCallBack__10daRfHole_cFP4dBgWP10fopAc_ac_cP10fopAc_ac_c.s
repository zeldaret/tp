lbl_80CB9148:
/* 80CB9148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB914C  7C 08 02 A6 */	mflr r0
/* 80CB9150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB9158  7C 9F 23 78 */	mr r31, r4
/* 80CB915C  A8 05 00 08 */	lha r0, 8(r5)
/* 80CB9160  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80CB9164  40 82 00 1C */	bne lbl_80CB9180
/* 80CB9168  7F E3 FB 78 */	mr r3, r31
/* 80CB916C  48 00 00 29 */	bl playerAreaCheck__10daRfHole_cFv
/* 80CB9170  2C 03 00 00 */	cmpwi r3, 0
/* 80CB9174  41 82 00 0C */	beq lbl_80CB9180
/* 80CB9178  38 00 00 01 */	li r0, 1
/* 80CB917C  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_80CB9180:
/* 80CB9180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB9184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9188  7C 08 03 A6 */	mtlr r0
/* 80CB918C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9190  4E 80 00 20 */	blr 
