lbl_80AAE7DC:
/* 80AAE7DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAE7E0  7C 08 02 A6 */	mflr r0
/* 80AAE7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAE7E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAE7EC  4B 8B 39 F1 */	bl _savegpr_29
/* 80AAE7F0  7C 7D 1B 78 */	mr r29, r3
/* 80AAE7F4  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AAE7F8  28 1E 00 00 */	cmplwi r30, 0
/* 80AAE7FC  41 82 00 30 */	beq lbl_80AAE82C
/* 80AAE800  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AAE804  80 84 00 04 */	lwz r4, 4(r4)
/* 80AAE808  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AAE80C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AAE810  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AAE814  7D 89 03 A6 */	mtctr r12
/* 80AAE818  4E 80 04 21 */	bctrl 
/* 80AAE81C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AAE820  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AAE824  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AAE828  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AAE82C:
/* 80AAE82C  7F A3 EB 78 */	mr r3, r29
/* 80AAE830  38 80 00 00 */	li r4, 0
/* 80AAE834  38 A0 00 01 */	li r5, 1
/* 80AAE838  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AAE83C  38 C0 00 00 */	li r6, 0
/* 80AAE840  3C E0 80 AB */	lis r7, lit_4463@ha /* 0x80AB20CC@ha */
/* 80AAE844  C0 47 20 CC */	lfs f2, lit_4463@l(r7)  /* 0x80AB20CC@l */
/* 80AAE848  38 E0 00 00 */	li r7, 0
/* 80AAE84C  39 00 00 00 */	li r8, 0
/* 80AAE850  39 20 00 00 */	li r9, 0
/* 80AAE854  4B 69 A0 19 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AAE858  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAE85C  4B 8B 39 CD */	bl _restgpr_29
/* 80AAE860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAE864  7C 08 03 A6 */	mtlr r0
/* 80AAE868  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAE86C  4E 80 00 20 */	blr 
