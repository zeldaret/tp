lbl_80C28B40:
/* 80C28B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C28B44  7C 08 02 A6 */	mflr r0
/* 80C28B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C28B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C28B50  93 C1 00 08 */	stw r30, 8(r1)
/* 80C28B54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C28B58  7C 9F 23 78 */	mr r31, r4
/* 80C28B5C  41 82 00 38 */	beq lbl_80C28B94
/* 80C28B60  3C 80 80 C3 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C2936C@ha */
/* 80C28B64  38 84 93 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C2936C@l */
/* 80C28B68  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C28B6C  38 04 00 0C */	addi r0, r4, 0xc
/* 80C28B70  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C28B74  38 04 00 18 */	addi r0, r4, 0x18
/* 80C28B78  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C28B7C  38 80 00 00 */	li r4, 0
/* 80C28B80  4B 44 D4 15 */	bl __dt__9dBgS_AcchFv
/* 80C28B84  7F E0 07 35 */	extsh. r0, r31
/* 80C28B88  40 81 00 0C */	ble lbl_80C28B94
/* 80C28B8C  7F C3 F3 78 */	mr r3, r30
/* 80C28B90  4B 6A 61 AD */	bl __dl__FPv
lbl_80C28B94:
/* 80C28B94  7F C3 F3 78 */	mr r3, r30
/* 80C28B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C28B9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C28BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C28BA4  7C 08 03 A6 */	mtlr r0
/* 80C28BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28BAC  4E 80 00 20 */	blr 
