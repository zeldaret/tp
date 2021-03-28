lbl_80D37F0C:
/* 80D37F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37F10  7C 08 02 A6 */	mflr r0
/* 80D37F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37F1C  7C 7F 1B 78 */	mr r31, r3
/* 80D37F20  88 03 05 C4 */	lbz r0, 0x5c4(r3)
/* 80D37F24  2C 00 00 01 */	cmpwi r0, 1
/* 80D37F28  41 82 00 20 */	beq lbl_80D37F48
/* 80D37F2C  40 80 00 20 */	bge lbl_80D37F4C
/* 80D37F30  2C 00 00 00 */	cmpwi r0, 0
/* 80D37F34  40 80 00 0C */	bge lbl_80D37F40
/* 80D37F38  48 00 00 14 */	b lbl_80D37F4C
/* 80D37F3C  48 00 00 10 */	b lbl_80D37F4C
lbl_80D37F40:
/* 80D37F40  48 00 03 85 */	bl exeModeHowl__13daWindStone_cFv
/* 80D37F44  48 00 00 08 */	b lbl_80D37F4C
lbl_80D37F48:
/* 80D37F48  48 00 04 15 */	bl exeModeMapDisp__13daWindStone_cFv
lbl_80D37F4C:
/* 80D37F4C  7F E3 FB 78 */	mr r3, r31
/* 80D37F50  48 00 01 CD */	bl setModelMtx__13daWindStone_cFv
/* 80D37F54  38 60 00 01 */	li r3, 1
/* 80D37F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37F60  7C 08 03 A6 */	mtlr r0
/* 80D37F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37F68  4E 80 00 20 */	blr 
