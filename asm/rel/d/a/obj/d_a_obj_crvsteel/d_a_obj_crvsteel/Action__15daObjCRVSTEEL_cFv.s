lbl_80BD5CC8:
/* 80BD5CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5CCC  7C 08 02 A6 */	mflr r0
/* 80BD5CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5CD4  A8 03 05 A8 */	lha r0, 0x5a8(r3)
/* 80BD5CD8  2C 00 00 01 */	cmpwi r0, 1
/* 80BD5CDC  41 82 00 18 */	beq lbl_80BD5CF4
/* 80BD5CE0  40 80 00 08 */	bge lbl_80BD5CE8
/* 80BD5CE4  48 00 00 1C */	b lbl_80BD5D00
lbl_80BD5CE8:
/* 80BD5CE8  2C 00 00 03 */	cmpwi r0, 3
/* 80BD5CEC  40 80 00 14 */	bge lbl_80BD5D00
/* 80BD5CF0  48 00 00 0C */	b lbl_80BD5CFC
lbl_80BD5CF4:
/* 80BD5CF4  4B FF FF AD */	bl OpenExecute__15daObjCRVSTEEL_cFv
/* 80BD5CF8  48 00 00 08 */	b lbl_80BD5D00
lbl_80BD5CFC:
/* 80BD5CFC  4B FF FF 2D */	bl CloseExecute__15daObjCRVSTEEL_cFv
lbl_80BD5D00:
/* 80BD5D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5D04  7C 08 03 A6 */	mtlr r0
/* 80BD5D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5D0C  4E 80 00 20 */	blr 
