lbl_80BD4ED8:
/* 80BD4ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4EDC  7C 08 02 A6 */	mflr r0
/* 80BD4EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4EE4  48 00 05 0D */	bl create__15daObjCRVLH_UP_cFv
/* 80BD4EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4EEC  7C 08 03 A6 */	mtlr r0
/* 80BD4EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4EF4  4E 80 00 20 */	blr 
