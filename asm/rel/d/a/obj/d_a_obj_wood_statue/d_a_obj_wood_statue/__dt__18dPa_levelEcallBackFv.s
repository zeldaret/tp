lbl_80D3B580:
/* 80D3B580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B584  7C 08 02 A6 */	mflr r0
/* 80D3B588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3B590  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3B594  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3B598  7C 9F 23 78 */	mr r31, r4
/* 80D3B59C  41 82 00 3C */	beq lbl_80D3B5D8
/* 80D3B5A0  3C 80 80 D4 */	lis r4, __vt__18dPa_levelEcallBack@ha /* 0x80D3B840@ha */
/* 80D3B5A4  38 04 B8 40 */	addi r0, r4, __vt__18dPa_levelEcallBack@l /* 0x80D3B840@l */
/* 80D3B5A8  90 1E 00 00 */	stw r0, 0(r30)
/* 80D3B5AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80D3B5B0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80D3B5B4  7D 89 03 A6 */	mtctr r12
/* 80D3B5B8  4E 80 04 21 */	bctrl 
/* 80D3B5BC  7F C3 F3 78 */	mr r3, r30
/* 80D3B5C0  38 80 00 00 */	li r4, 0
/* 80D3B5C4  4B 54 30 E1 */	bl __dt__18JPAEmitterCallBackFv
/* 80D3B5C8  7F E0 07 35 */	extsh. r0, r31
/* 80D3B5CC  40 81 00 0C */	ble lbl_80D3B5D8
/* 80D3B5D0  7F C3 F3 78 */	mr r3, r30
/* 80D3B5D4  4B 59 37 69 */	bl __dl__FPv
lbl_80D3B5D8:
/* 80D3B5D8  7F C3 F3 78 */	mr r3, r30
/* 80D3B5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3B5E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3B5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B5E8  7C 08 03 A6 */	mtlr r0
/* 80D3B5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B5F0  4E 80 00 20 */	blr 
