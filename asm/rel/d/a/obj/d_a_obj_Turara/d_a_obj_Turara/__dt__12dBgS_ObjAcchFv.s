lbl_80B9D29C:
/* 80B9D29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D2A0  7C 08 02 A6 */	mflr r0
/* 80B9D2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D2AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9D2B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9D2B4  7C 9F 23 78 */	mr r31, r4
/* 80B9D2B8  41 82 00 38 */	beq lbl_80B9D2F0
/* 80B9D2BC  3C 80 80 BA */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B9EACC@ha */
/* 80B9D2C0  38 84 EA CC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B9EACC@l */
/* 80B9D2C4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B9D2C8  38 04 00 0C */	addi r0, r4, 0xc
/* 80B9D2CC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B9D2D0  38 04 00 18 */	addi r0, r4, 0x18
/* 80B9D2D4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B9D2D8  38 80 00 00 */	li r4, 0
/* 80B9D2DC  4B 4D 8C B9 */	bl __dt__9dBgS_AcchFv
/* 80B9D2E0  7F E0 07 35 */	extsh. r0, r31
/* 80B9D2E4  40 81 00 0C */	ble lbl_80B9D2F0
/* 80B9D2E8  7F C3 F3 78 */	mr r3, r30
/* 80B9D2EC  4B 73 1A 51 */	bl __dl__FPv
lbl_80B9D2F0:
/* 80B9D2F0  7F C3 F3 78 */	mr r3, r30
/* 80B9D2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D2F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9D2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D300  7C 08 03 A6 */	mtlr r0
/* 80B9D304  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D308  4E 80 00 20 */	blr 
