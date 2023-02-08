lbl_80BD33E8:
/* 80BD33E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD33EC  7C 08 02 A6 */	mflr r0
/* 80BD33F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD33F4  48 00 09 C9 */	bl create__15daObjCRVHAHEN_cFv
/* 80BD33F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD33FC  7C 08 03 A6 */	mtlr r0
/* 80BD3400  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3404  4E 80 00 20 */	blr 
