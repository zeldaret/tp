lbl_80BD3B20:
/* 80BD3B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD3B24  7C 08 02 A6 */	mflr r0
/* 80BD3B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD3B30  7C 7F 1B 78 */	mr r31, r3
/* 80BD3B34  88 03 07 50 */	lbz r0, 0x750(r3)
/* 80BD3B38  28 00 00 00 */	cmplwi r0, 0
/* 80BD3B3C  41 82 00 10 */	beq lbl_80BD3B4C
/* 80BD3B40  38 80 00 00 */	li r4, 0
/* 80BD3B44  38 A0 00 0A */	li r5, 0xa
/* 80BD3B48  4B FF FB D9 */	bl Hahen_Hakai__15daObjCRVHAHEN_cFii
lbl_80BD3B4C:
/* 80BD3B4C  7F E3 FB 78 */	mr r3, r31
/* 80BD3B50  48 00 00 BD */	bl setBaseMtx__15daObjCRVHAHEN_cFv
/* 80BD3B54  7F E3 FB 78 */	mr r3, r31
/* 80BD3B58  4B FF FD 85 */	bl CheckCull__15daObjCRVHAHEN_cFv
/* 80BD3B5C  38 60 00 01 */	li r3, 1
/* 80BD3B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD3B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3B68  7C 08 03 A6 */	mtlr r0
/* 80BD3B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3B70  4E 80 00 20 */	blr 
