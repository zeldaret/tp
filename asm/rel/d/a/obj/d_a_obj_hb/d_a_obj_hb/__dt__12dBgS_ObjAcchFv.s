lbl_80C1B578:
/* 80C1B578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B57C  7C 08 02 A6 */	mflr r0
/* 80C1B580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1B588  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1B58C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C1B590  7C 9F 23 78 */	mr r31, r4
/* 80C1B594  41 82 00 38 */	beq lbl_80C1B5CC
/* 80C1B598  3C 80 80 C2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C1B7B8@ha */
/* 80C1B59C  38 84 B7 B8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C1B7B8@l */
/* 80C1B5A0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C1B5A4  38 04 00 0C */	addi r0, r4, 0xc
/* 80C1B5A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C1B5AC  38 04 00 18 */	addi r0, r4, 0x18
/* 80C1B5B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C1B5B4  38 80 00 00 */	li r4, 0
/* 80C1B5B8  4B 45 A9 DD */	bl __dt__9dBgS_AcchFv
/* 80C1B5BC  7F E0 07 35 */	extsh. r0, r31
/* 80C1B5C0  40 81 00 0C */	ble lbl_80C1B5CC
/* 80C1B5C4  7F C3 F3 78 */	mr r3, r30
/* 80C1B5C8  4B 6B 37 75 */	bl __dl__FPv
lbl_80C1B5CC:
/* 80C1B5CC  7F C3 F3 78 */	mr r3, r30
/* 80C1B5D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1B5D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1B5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B5DC  7C 08 03 A6 */	mtlr r0
/* 80C1B5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B5E4  4E 80 00 20 */	blr 
