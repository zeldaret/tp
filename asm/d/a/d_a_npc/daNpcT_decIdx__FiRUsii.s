lbl_80145B20:
/* 80145B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80145B24  7C 08 02 A6 */	mflr r0
/* 80145B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80145B2C  7C 68 1B 78 */	mr r8, r3
/* 80145B30  7C 87 23 78 */	mr r7, r4
/* 80145B34  7C A0 2B 78 */	mr r0, r5
/* 80145B38  2C 06 00 00 */	cmpwi r6, 0
/* 80145B3C  41 82 00 1C */	beq lbl_80145B58
/* 80145B40  38 60 00 01 */	li r3, 1
/* 80145B44  7D 04 43 78 */	mr r4, r8
/* 80145B48  7C E5 3B 78 */	mr r5, r7
/* 80145B4C  7C 06 03 78 */	mr r6, r0
/* 80145B50  4B FF FE E9 */	bl daNpcT_addIdx__FiiRUsi
/* 80145B54  48 00 00 18 */	b lbl_80145B6C
lbl_80145B58:
/* 80145B58  38 60 00 01 */	li r3, 1
/* 80145B5C  7D 04 43 78 */	mr r4, r8
/* 80145B60  7C E5 3B 78 */	mr r5, r7
/* 80145B64  7C 06 03 78 */	mr r6, r0
/* 80145B68  4B FF FF 11 */	bl daNpcT_subIdx__FiiRUsi
lbl_80145B6C:
/* 80145B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80145B70  7C 08 03 A6 */	mtlr r0
/* 80145B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80145B78  4E 80 00 20 */	blr 
