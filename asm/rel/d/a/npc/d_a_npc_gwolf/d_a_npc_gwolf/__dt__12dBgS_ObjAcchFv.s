lbl_809F828C:
/* 809F828C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8290  7C 08 02 A6 */	mflr r0
/* 809F8294  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F8298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F829C  93 C1 00 08 */	stw r30, 8(r1)
/* 809F82A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F82A4  7C 9F 23 78 */	mr r31, r4
/* 809F82A8  41 82 00 38 */	beq lbl_809F82E0
/* 809F82AC  3C 80 80 A0 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 809F82B0  38 84 8E 38 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 809F82B4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809F82B8  38 04 00 0C */	addi r0, r4, 0xc
/* 809F82BC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809F82C0  38 04 00 18 */	addi r0, r4, 0x18
/* 809F82C4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809F82C8  38 80 00 00 */	li r4, 0
/* 809F82CC  4B 67 DC C8 */	b __dt__9dBgS_AcchFv
/* 809F82D0  7F E0 07 35 */	extsh. r0, r31
/* 809F82D4  40 81 00 0C */	ble lbl_809F82E0
/* 809F82D8  7F C3 F3 78 */	mr r3, r30
/* 809F82DC  4B 8D 6A 60 */	b __dl__FPv
lbl_809F82E0:
/* 809F82E0  7F C3 F3 78 */	mr r3, r30
/* 809F82E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F82E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F82EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F82F0  7C 08 03 A6 */	mtlr r0
/* 809F82F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F82F8  4E 80 00 20 */	blr 
