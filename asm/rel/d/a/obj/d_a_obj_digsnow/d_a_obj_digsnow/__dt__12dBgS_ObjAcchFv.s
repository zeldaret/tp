lbl_80BDD574:
/* 80BDD574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD578  7C 08 02 A6 */	mflr r0
/* 80BDD57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD584  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDD588  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BDD58C  7C 9F 23 78 */	mr r31, r4
/* 80BDD590  41 82 00 38 */	beq lbl_80BDD5C8
/* 80BDD594  3C 80 80 BE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BDD7E0@ha */
/* 80BDD598  38 84 D7 E0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BDD7E0@l */
/* 80BDD59C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BDD5A0  38 04 00 0C */	addi r0, r4, 0xc
/* 80BDD5A4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BDD5A8  38 04 00 18 */	addi r0, r4, 0x18
/* 80BDD5AC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BDD5B0  38 80 00 00 */	li r4, 0
/* 80BDD5B4  4B 49 89 E1 */	bl __dt__9dBgS_AcchFv
/* 80BDD5B8  7F E0 07 35 */	extsh. r0, r31
/* 80BDD5BC  40 81 00 0C */	ble lbl_80BDD5C8
/* 80BDD5C0  7F C3 F3 78 */	mr r3, r30
/* 80BDD5C4  4B 6F 17 79 */	bl __dl__FPv
lbl_80BDD5C8:
/* 80BDD5C8  7F C3 F3 78 */	mr r3, r30
/* 80BDD5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD5D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDD5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD5D8  7C 08 03 A6 */	mtlr r0
/* 80BDD5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD5E0  4E 80 00 20 */	blr 
