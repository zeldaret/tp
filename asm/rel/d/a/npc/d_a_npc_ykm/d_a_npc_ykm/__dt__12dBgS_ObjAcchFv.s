lbl_80B5CED4:
/* 80B5CED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5CED8  7C 08 02 A6 */	mflr r0
/* 80B5CEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5CEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5CEE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5CEE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B5CEEC  7C 9F 23 78 */	mr r31, r4
/* 80B5CEF0  41 82 00 38 */	beq lbl_80B5CF28
/* 80B5CEF4  3C 80 80 B6 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80B5CEF8  38 84 EB C0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80B5CEFC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B5CF00  38 04 00 0C */	addi r0, r4, 0xc
/* 80B5CF04  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B5CF08  38 04 00 18 */	addi r0, r4, 0x18
/* 80B5CF0C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B5CF10  38 80 00 00 */	li r4, 0
/* 80B5CF14  4B 51 90 80 */	b __dt__9dBgS_AcchFv
/* 80B5CF18  7F E0 07 35 */	extsh. r0, r31
/* 80B5CF1C  40 81 00 0C */	ble lbl_80B5CF28
/* 80B5CF20  7F C3 F3 78 */	mr r3, r30
/* 80B5CF24  4B 77 1E 18 */	b __dl__FPv
lbl_80B5CF28:
/* 80B5CF28  7F C3 F3 78 */	mr r3, r30
/* 80B5CF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5CF30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5CF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5CF38  7C 08 03 A6 */	mtlr r0
/* 80B5CF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5CF40  4E 80 00 20 */	blr 
