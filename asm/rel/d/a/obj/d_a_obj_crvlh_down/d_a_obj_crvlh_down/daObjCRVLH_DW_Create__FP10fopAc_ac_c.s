lbl_80BD4224:
/* 80BD4224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4228  7C 08 02 A6 */	mflr r0
/* 80BD422C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4230  48 00 05 35 */	bl create__15daObjCRVLH_DW_cFv
/* 80BD4234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4238  7C 08 03 A6 */	mtlr r0
/* 80BD423C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4240  4E 80 00 20 */	blr 
