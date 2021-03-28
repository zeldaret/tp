lbl_80261FEC:
/* 80261FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261FF0  7C 08 02 A6 */	mflr r0
/* 80261FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261FF8  38 80 FF FF */	li r4, -1
/* 80261FFC  4B FF FF 29 */	bl __dt__11dkWpillar_cFv
/* 80262000  38 60 00 01 */	li r3, 1
/* 80262004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262008  7C 08 03 A6 */	mtlr r0
/* 8026200C  38 21 00 10 */	addi r1, r1, 0x10
/* 80262010  4E 80 00 20 */	blr 
