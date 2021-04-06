lbl_80CE9B30:
/* 80CE9B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9B34  7C 08 02 A6 */	mflr r0
/* 80CE9B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE9B40  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE9B44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE9B48  7C 9F 23 78 */	mr r31, r4
/* 80CE9B4C  41 82 00 38 */	beq lbl_80CE9B84
/* 80CE9B50  3C 80 80 CF */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CECDE0@ha */
/* 80CE9B54  38 84 CD E0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CECDE0@l */
/* 80CE9B58  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CE9B5C  38 04 00 0C */	addi r0, r4, 0xc
/* 80CE9B60  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CE9B64  38 04 00 18 */	addi r0, r4, 0x18
/* 80CE9B68  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CE9B6C  38 80 00 00 */	li r4, 0
/* 80CE9B70  4B 38 C4 25 */	bl __dt__9dBgS_AcchFv
/* 80CE9B74  7F E0 07 35 */	extsh. r0, r31
/* 80CE9B78  40 81 00 0C */	ble lbl_80CE9B84
/* 80CE9B7C  7F C3 F3 78 */	mr r3, r30
/* 80CE9B80  4B 5E 51 BD */	bl __dl__FPv
lbl_80CE9B84:
/* 80CE9B84  7F C3 F3 78 */	mr r3, r30
/* 80CE9B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9B8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE9B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9B94  7C 08 03 A6 */	mtlr r0
/* 80CE9B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9B9C  4E 80 00 20 */	blr 
