lbl_8076AE3C:
/* 8076AE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AE40  7C 08 02 A6 */	mflr r0
/* 8076AE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076AE4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8076AE50  7C 7E 1B 79 */	or. r30, r3, r3
/* 8076AE54  7C 9F 23 78 */	mr r31, r4
/* 8076AE58  41 82 00 38 */	beq lbl_8076AE90
/* 8076AE5C  3C 80 80 77 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8076B98C@ha */
/* 8076AE60  38 84 B9 8C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8076B98C@l */
/* 8076AE64  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8076AE68  38 04 00 0C */	addi r0, r4, 0xc
/* 8076AE6C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8076AE70  38 04 00 18 */	addi r0, r4, 0x18
/* 8076AE74  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8076AE78  38 80 00 00 */	li r4, 0
/* 8076AE7C  4B 90 B1 19 */	bl __dt__9dBgS_AcchFv
/* 8076AE80  7F E0 07 35 */	extsh. r0, r31
/* 8076AE84  40 81 00 0C */	ble lbl_8076AE90
/* 8076AE88  7F C3 F3 78 */	mr r3, r30
/* 8076AE8C  4B B6 3E B1 */	bl __dl__FPv
lbl_8076AE90:
/* 8076AE90  7F C3 F3 78 */	mr r3, r30
/* 8076AE94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AE98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8076AE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AEA0  7C 08 03 A6 */	mtlr r0
/* 8076AEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AEA8  4E 80 00 20 */	blr 
