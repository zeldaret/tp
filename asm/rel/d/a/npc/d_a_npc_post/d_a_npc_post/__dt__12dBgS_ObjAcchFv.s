lbl_80AACA7C:
/* 80AACA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AACA80  7C 08 02 A6 */	mflr r0
/* 80AACA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AACA88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AACA8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AACA90  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AACA94  7C 9F 23 78 */	mr r31, r4
/* 80AACA98  41 82 00 38 */	beq lbl_80AACAD0
/* 80AACA9C  3C 80 80 AB */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AADA84@ha */
/* 80AACAA0  38 84 DA 84 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AADA84@l */
/* 80AACAA4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AACAA8  38 04 00 0C */	addi r0, r4, 0xc
/* 80AACAAC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AACAB0  38 04 00 18 */	addi r0, r4, 0x18
/* 80AACAB4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AACAB8  38 80 00 00 */	li r4, 0
/* 80AACABC  4B 5C 94 D9 */	bl __dt__9dBgS_AcchFv
/* 80AACAC0  7F E0 07 35 */	extsh. r0, r31
/* 80AACAC4  40 81 00 0C */	ble lbl_80AACAD0
/* 80AACAC8  7F C3 F3 78 */	mr r3, r30
/* 80AACACC  4B 82 22 71 */	bl __dl__FPv
lbl_80AACAD0:
/* 80AACAD0  7F C3 F3 78 */	mr r3, r30
/* 80AACAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AACAD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AACADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AACAE0  7C 08 03 A6 */	mtlr r0
/* 80AACAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AACAE8  4E 80 00 20 */	blr 
