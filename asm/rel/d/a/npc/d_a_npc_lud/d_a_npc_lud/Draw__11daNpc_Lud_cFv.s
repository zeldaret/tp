lbl_80A6B650:
/* 80A6B650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6B654  7C 08 02 A6 */	mflr r0
/* 80A6B658  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6B65C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6B660  4B 8F 6B 7D */	bl _savegpr_29
/* 80A6B664  7C 7D 1B 78 */	mr r29, r3
/* 80A6B668  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A6B66C  28 1E 00 00 */	cmplwi r30, 0
/* 80A6B670  41 82 00 30 */	beq lbl_80A6B6A0
/* 80A6B674  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A6B678  80 84 00 04 */	lwz r4, 4(r4)
/* 80A6B67C  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A6B680  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A6B684  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A6B688  7D 89 03 A6 */	mtctr r12
/* 80A6B68C  4E 80 04 21 */	bctrl 
/* 80A6B690  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A6B694  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A6B698  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A6B69C  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A6B6A0:
/* 80A6B6A0  7F A3 EB 78 */	mr r3, r29
/* 80A6B6A4  38 80 00 00 */	li r4, 0
/* 80A6B6A8  38 A0 00 00 */	li r5, 0
/* 80A6B6AC  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A6B6B0  38 C0 00 00 */	li r6, 0
/* 80A6B6B4  3C E0 80 A7 */	lis r7, lit_4470@ha /* 0x80A6FE54@ha */
/* 80A6B6B8  C0 47 FE 54 */	lfs f2, lit_4470@l(r7)  /* 0x80A6FE54@l */
/* 80A6B6BC  38 E0 00 00 */	li r7, 0
/* 80A6B6C0  39 00 00 00 */	li r8, 0
/* 80A6B6C4  39 20 00 00 */	li r9, 0
/* 80A6B6C8  4B 6D D1 A5 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A6B6CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6B6D0  4B 8F 6B 59 */	bl _restgpr_29
/* 80A6B6D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6B6D8  7C 08 03 A6 */	mtlr r0
/* 80A6B6DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6B6E0  4E 80 00 20 */	blr 
