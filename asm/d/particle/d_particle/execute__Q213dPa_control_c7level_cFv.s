lbl_8004B7A8:
/* 8004B7A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004B7AC  7C 08 02 A6 */	mflr r0
/* 8004B7B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004B7B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B7B8  48 31 6A 25 */	bl _savegpr_29
/* 8004B7BC  7C 7D 1B 78 */	mr r29, r3
/* 8004B7C0  3B FD 00 08 */	addi r31, r29, 8
/* 8004B7C4  3B C0 00 00 */	li r30, 0
lbl_8004B7C8:
/* 8004B7C8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8004B7CC  28 00 00 00 */	cmplwi r0, 0
/* 8004B7D0  41 82 00 10 */	beq lbl_8004B7E0
/* 8004B7D4  7F A3 EB 78 */	mr r3, r29
/* 8004B7D8  7F E4 FB 78 */	mr r4, r31
/* 8004B7DC  4B FF FF 1D */	bl execute__Q213dPa_control_c7level_cFPQ313dPa_control_c7level_c9emitter_c
lbl_8004B7E0:
/* 8004B7E0  3B DE 00 01 */	addi r30, r30, 1
/* 8004B7E4  2C 1E 00 80 */	cmpwi r30, 0x80
/* 8004B7E8  3B FF 00 18 */	addi r31, r31, 0x18
/* 8004B7EC  41 80 FF DC */	blt lbl_8004B7C8
/* 8004B7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B7F4  48 31 6A 35 */	bl _restgpr_29
/* 8004B7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004B7FC  7C 08 03 A6 */	mtlr r0
/* 8004B800  38 21 00 20 */	addi r1, r1, 0x20
/* 8004B804  4E 80 00 20 */	blr 
