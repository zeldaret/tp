lbl_806B8E54:
/* 806B8E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B8E58  7C 08 02 A6 */	mflr r0
/* 806B8E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B8E64  93 C1 00 08 */	stw r30, 8(r1)
/* 806B8E68  7C 7E 1B 79 */	or. r30, r3, r3
/* 806B8E6C  7C 9F 23 78 */	mr r31, r4
/* 806B8E70  41 82 00 38 */	beq lbl_806B8EA8
/* 806B8E74  3C 80 80 6C */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806B8E78  38 84 91 68 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806B8E7C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806B8E80  38 04 00 0C */	addi r0, r4, 0xc
/* 806B8E84  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806B8E88  38 04 00 18 */	addi r0, r4, 0x18
/* 806B8E8C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806B8E90  38 80 00 00 */	li r4, 0
/* 806B8E94  4B 9B D1 00 */	b __dt__9dBgS_AcchFv
/* 806B8E98  7F E0 07 35 */	extsh. r0, r31
/* 806B8E9C  40 81 00 0C */	ble lbl_806B8EA8
/* 806B8EA0  7F C3 F3 78 */	mr r3, r30
/* 806B8EA4  4B C1 5E 98 */	b __dl__FPv
lbl_806B8EA8:
/* 806B8EA8  7F C3 F3 78 */	mr r3, r30
/* 806B8EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B8EB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B8EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8EB8  7C 08 03 A6 */	mtlr r0
/* 806B8EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8EC0  4E 80 00 20 */	blr 
