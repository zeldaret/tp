lbl_80BD000C:
/* 80BD000C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD0010  7C 08 02 A6 */	mflr r0
/* 80BD0014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD001C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD0020  7C 7E 1B 78 */	mr r30, r3
/* 80BD0024  7C 9F 23 78 */	mr r31, r4
/* 80BD0028  4B FF F8 39 */	bl Action__15daObjCRVFENCE_cFv
/* 80BD002C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BD0030  90 1F 00 00 */	stw r0, 0(r31)
/* 80BD0034  7F C3 F3 78 */	mr r3, r30
/* 80BD0038  4B FF F8 6D */	bl setBaseMtx__15daObjCRVFENCE_cFv
/* 80BD003C  38 60 00 01 */	li r3, 1
/* 80BD0040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD0044  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD0048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD004C  7C 08 03 A6 */	mtlr r0
/* 80BD0050  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0054  4E 80 00 20 */	blr 
