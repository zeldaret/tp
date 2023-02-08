lbl_80C62B20:
/* 80C62B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62B24  7C 08 02 A6 */	mflr r0
/* 80C62B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C62B30  93 C1 00 08 */	stw r30, 8(r1)
/* 80C62B34  7C 7E 1B 78 */	mr r30, r3
/* 80C62B38  7C 9F 23 78 */	mr r31, r4
/* 80C62B3C  48 00 00 31 */	bl action__13daObjLv4Brg_cFv
/* 80C62B40  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C62B44  90 1F 00 00 */	stw r0, 0(r31)
/* 80C62B48  7F C3 F3 78 */	mr r3, r30
/* 80C62B4C  4B FF FD 69 */	bl setBaseMtx__13daObjLv4Brg_cFv
/* 80C62B50  38 60 00 01 */	li r3, 1
/* 80C62B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62B58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C62B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62B60  7C 08 03 A6 */	mtlr r0
/* 80C62B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62B68  4E 80 00 20 */	blr 
