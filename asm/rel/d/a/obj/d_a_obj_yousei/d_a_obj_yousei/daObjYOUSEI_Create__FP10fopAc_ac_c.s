lbl_804CE8DC:
/* 804CE8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE8E0  7C 08 02 A6 */	mflr r0
/* 804CE8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE8E8  48 00 28 35 */	bl create__13daObjYOUSEI_cFv
/* 804CE8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE8F0  7C 08 03 A6 */	mtlr r0
/* 804CE8F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE8F8  4E 80 00 20 */	blr 
