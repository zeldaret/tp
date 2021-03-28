lbl_80D5B06C:
/* 80D5B06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B070  7C 08 02 A6 */	mflr r0
/* 80D5B074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B078  4B FF FC E1 */	bl create__15daTag_Lv5Soup_cFv
/* 80D5B07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B080  7C 08 03 A6 */	mtlr r0
/* 80D5B084  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B088  4E 80 00 20 */	blr 
