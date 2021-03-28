lbl_80BD60EC:
/* 80BD60EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD60F0  7C 08 02 A6 */	mflr r0
/* 80BD60F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD60F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD60FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD6100  7C 7E 1B 78 */	mr r30, r3
/* 80BD6104  7C 9F 23 78 */	mr r31, r4
/* 80BD6108  4B FF FB C1 */	bl Action__15daObjCRVSTEEL_cFv
/* 80BD610C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BD6110  90 1F 00 00 */	stw r0, 0(r31)
/* 80BD6114  7F C3 F3 78 */	mr r3, r30
/* 80BD6118  4B FF FB F9 */	bl setBaseMtx__15daObjCRVSTEEL_cFv
/* 80BD611C  38 60 00 01 */	li r3, 1
/* 80BD6120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD6124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD6128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD612C  7C 08 03 A6 */	mtlr r0
/* 80BD6130  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6134  4E 80 00 20 */	blr 
