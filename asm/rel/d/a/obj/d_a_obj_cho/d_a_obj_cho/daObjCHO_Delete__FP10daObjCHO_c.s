lbl_80BCA768:
/* 80BCA768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA76C  7C 08 02 A6 */	mflr r0
/* 80BCA770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA774  48 00 15 35 */	bl Delete__10daObjCHO_cFv
/* 80BCA778  38 60 00 01 */	li r3, 1
/* 80BCA77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA780  7C 08 03 A6 */	mtlr r0
/* 80BCA784  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA788  4E 80 00 20 */	blr 
