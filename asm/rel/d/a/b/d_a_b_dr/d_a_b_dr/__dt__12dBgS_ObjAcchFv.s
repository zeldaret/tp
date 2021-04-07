lbl_805C6A4C:
/* 805C6A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6A50  7C 08 02 A6 */	mflr r0
/* 805C6A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 805C6A60  7C 7E 1B 79 */	or. r30, r3, r3
/* 805C6A64  7C 9F 23 78 */	mr r31, r4
/* 805C6A68  41 82 00 38 */	beq lbl_805C6AA0
/* 805C6A6C  3C 80 80 5C */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x805C787C@ha */
/* 805C6A70  38 84 78 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x805C787C@l */
/* 805C6A74  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805C6A78  38 04 00 0C */	addi r0, r4, 0xc
/* 805C6A7C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805C6A80  38 04 00 18 */	addi r0, r4, 0x18
/* 805C6A84  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805C6A88  38 80 00 00 */	li r4, 0
/* 805C6A8C  4B AA F5 09 */	bl __dt__9dBgS_AcchFv
/* 805C6A90  7F E0 07 35 */	extsh. r0, r31
/* 805C6A94  40 81 00 0C */	ble lbl_805C6AA0
/* 805C6A98  7F C3 F3 78 */	mr r3, r30
/* 805C6A9C  4B D0 82 A1 */	bl __dl__FPv
lbl_805C6AA0:
/* 805C6AA0  7F C3 F3 78 */	mr r3, r30
/* 805C6AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C6AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6AB0  7C 08 03 A6 */	mtlr r0
/* 805C6AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6AB8  4E 80 00 20 */	blr 
