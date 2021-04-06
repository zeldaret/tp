lbl_80AB6568:
/* 80AB6568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB656C  7C 08 02 A6 */	mflr r0
/* 80AB6570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB6574  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6578  4B 8A BC 65 */	bl _savegpr_29
/* 80AB657C  7C 7D 1B 78 */	mr r29, r3
/* 80AB6580  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AB6584  28 1E 00 00 */	cmplwi r30, 0
/* 80AB6588  41 82 00 30 */	beq lbl_80AB65B8
/* 80AB658C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AB6590  80 84 00 04 */	lwz r4, 4(r4)
/* 80AB6594  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AB6598  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AB659C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AB65A0  7D 89 03 A6 */	mtctr r12
/* 80AB65A4  4E 80 04 21 */	bctrl 
/* 80AB65A8  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AB65AC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AB65B0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AB65B4  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AB65B8:
/* 80AB65B8  7F A3 EB 78 */	mr r3, r29
/* 80AB65BC  38 80 00 00 */	li r4, 0
/* 80AB65C0  38 A0 00 00 */	li r5, 0
/* 80AB65C4  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AB65C8  38 C0 00 00 */	li r6, 0
/* 80AB65CC  3C E0 80 AC */	lis r7, lit_4402@ha /* 0x80AB8F78@ha */
/* 80AB65D0  C0 47 8F 78 */	lfs f2, lit_4402@l(r7)  /* 0x80AB8F78@l */
/* 80AB65D4  38 E0 00 00 */	li r7, 0
/* 80AB65D8  39 00 00 00 */	li r8, 0
/* 80AB65DC  39 20 00 00 */	li r9, 0
/* 80AB65E0  4B 69 22 8D */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AB65E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB65E8  4B 8A BC 41 */	bl _restgpr_29
/* 80AB65EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB65F0  7C 08 03 A6 */	mtlr r0
/* 80AB65F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB65F8  4E 80 00 20 */	blr 
