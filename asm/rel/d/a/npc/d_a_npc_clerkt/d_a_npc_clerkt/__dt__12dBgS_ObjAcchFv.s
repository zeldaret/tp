lbl_8099CA7C:
/* 8099CA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099CA80  7C 08 02 A6 */	mflr r0
/* 8099CA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099CA88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099CA8C  93 C1 00 08 */	stw r30, 8(r1)
/* 8099CA90  7C 7E 1B 79 */	or. r30, r3, r3
/* 8099CA94  7C 9F 23 78 */	mr r31, r4
/* 8099CA98  41 82 00 38 */	beq lbl_8099CAD0
/* 8099CA9C  3C 80 80 9A */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8099CAA0  38 84 D4 E8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8099CAA4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8099CAA8  38 04 00 0C */	addi r0, r4, 0xc
/* 8099CAAC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8099CAB0  38 04 00 18 */	addi r0, r4, 0x18
/* 8099CAB4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8099CAB8  38 80 00 00 */	li r4, 0
/* 8099CABC  4B 6D 94 D8 */	b __dt__9dBgS_AcchFv
/* 8099CAC0  7F E0 07 35 */	extsh. r0, r31
/* 8099CAC4  40 81 00 0C */	ble lbl_8099CAD0
/* 8099CAC8  7F C3 F3 78 */	mr r3, r30
/* 8099CACC  4B 93 22 70 */	b __dl__FPv
lbl_8099CAD0:
/* 8099CAD0  7F C3 F3 78 */	mr r3, r30
/* 8099CAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099CAD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099CADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099CAE0  7C 08 03 A6 */	mtlr r0
/* 8099CAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8099CAE8  4E 80 00 20 */	blr 
