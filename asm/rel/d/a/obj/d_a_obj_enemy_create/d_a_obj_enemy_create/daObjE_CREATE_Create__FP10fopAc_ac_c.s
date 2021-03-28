lbl_80BE3178:
/* 80BE3178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE317C  7C 08 02 A6 */	mflr r0
/* 80BE3180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3184  48 00 05 ED */	bl create__15daObjE_CREATE_cFv
/* 80BE3188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE318C  7C 08 03 A6 */	mtlr r0
/* 80BE3190  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3194  4E 80 00 20 */	blr 
