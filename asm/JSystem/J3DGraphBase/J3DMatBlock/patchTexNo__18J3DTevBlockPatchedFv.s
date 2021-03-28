lbl_8031BF4C:
/* 8031BF4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031BF50  7C 08 02 A6 */	mflr r0
/* 8031BF54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031BF58  39 61 00 20 */	addi r11, r1, 0x20
/* 8031BF5C  48 04 62 7D */	bl _savegpr_28
/* 8031BF60  7C 7C 1B 78 */	mr r28, r3
/* 8031BF64  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031BF68  80 64 00 00 */	lwz r3, 0(r4)
/* 8031BF6C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8031BF70  7C 03 02 14 */	add r0, r3, r0
/* 8031BF74  90 04 00 08 */	stw r0, 8(r4)
/* 8031BF78  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031BF7C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031BF80  3B A0 00 00 */	li r29, 0
/* 8031BF84  3B E0 00 00 */	li r31, 0
lbl_8031BF88:
/* 8031BF88  38 9F 00 08 */	addi r4, r31, 8
/* 8031BF8C  7C 9C 22 14 */	add r4, r28, r4
/* 8031BF90  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031BF94  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031BF98  41 82 00 0C */	beq lbl_8031BFA4
/* 8031BF9C  7F A3 EB 78 */	mr r3, r29
/* 8031BFA0  48 00 7F F5 */	bl loadTexNo__FUlRCUs
lbl_8031BFA4:
/* 8031BFA4  3B BD 00 01 */	addi r29, r29, 1
/* 8031BFA8  28 1D 00 08 */	cmplwi r29, 8
/* 8031BFAC  3B FF 00 02 */	addi r31, r31, 2
/* 8031BFB0  41 80 FF D8 */	blt lbl_8031BF88
/* 8031BFB4  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031BFB8  80 03 00 08 */	lwz r0, 8(r3)
/* 8031BFBC  7F C3 F3 78 */	mr r3, r30
/* 8031BFC0  7C 9E 00 50 */	subf r4, r30, r0
/* 8031BFC4  48 01 F6 19 */	bl DCStoreRange
/* 8031BFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8031BFCC  48 04 62 59 */	bl _restgpr_28
/* 8031BFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031BFD4  7C 08 03 A6 */	mtlr r0
/* 8031BFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8031BFDC  4E 80 00 20 */	blr 
