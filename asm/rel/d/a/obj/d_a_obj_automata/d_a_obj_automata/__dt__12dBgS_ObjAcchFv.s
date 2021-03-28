lbl_80BA5ED0:
/* 80BA5ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5ED4  7C 08 02 A6 */	mflr r0
/* 80BA5ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5EE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA5EE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA5EE8  7C 9F 23 78 */	mr r31, r4
/* 80BA5EEC  41 82 00 38 */	beq lbl_80BA5F24
/* 80BA5EF0  3C 80 80 BA */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BA5EF4  38 84 6D C0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BA5EF8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BA5EFC  38 04 00 0C */	addi r0, r4, 0xc
/* 80BA5F00  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BA5F04  38 04 00 18 */	addi r0, r4, 0x18
/* 80BA5F08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BA5F0C  38 80 00 00 */	li r4, 0
/* 80BA5F10  4B 4D 00 84 */	b __dt__9dBgS_AcchFv
/* 80BA5F14  7F E0 07 35 */	extsh. r0, r31
/* 80BA5F18  40 81 00 0C */	ble lbl_80BA5F24
/* 80BA5F1C  7F C3 F3 78 */	mr r3, r30
/* 80BA5F20  4B 72 8E 1C */	b __dl__FPv
lbl_80BA5F24:
/* 80BA5F24  7F C3 F3 78 */	mr r3, r30
/* 80BA5F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5F2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA5F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5F34  7C 08 03 A6 */	mtlr r0
/* 80BA5F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5F3C  4E 80 00 20 */	blr 
