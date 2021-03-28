lbl_80C6BA74:
/* 80C6BA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6BA78  7C 08 02 A6 */	mflr r0
/* 80C6BA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6BA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6BA84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6BA88  41 82 00 1C */	beq lbl_80C6BAA4
/* 80C6BA8C  3C A0 80 C7 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C6BA90  38 05 C7 D0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C6BA94  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C6BA98  7C 80 07 35 */	extsh. r0, r4
/* 80C6BA9C  40 81 00 08 */	ble lbl_80C6BAA4
/* 80C6BAA0  4B 66 32 9C */	b __dl__FPv
lbl_80C6BAA4:
/* 80C6BAA4  7F E3 FB 78 */	mr r3, r31
/* 80C6BAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6BAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6BAB0  7C 08 03 A6 */	mtlr r0
/* 80C6BAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6BAB8  4E 80 00 20 */	blr 
