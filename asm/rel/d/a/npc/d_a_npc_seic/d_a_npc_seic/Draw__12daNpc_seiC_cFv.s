lbl_80AC79D4:
/* 80AC79D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC79D8  7C 08 02 A6 */	mflr r0
/* 80AC79DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC79E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC79E4  4B 89 A7 F9 */	bl _savegpr_29
/* 80AC79E8  7C 7D 1B 78 */	mr r29, r3
/* 80AC79EC  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AC79F0  28 1E 00 00 */	cmplwi r30, 0
/* 80AC79F4  41 82 00 30 */	beq lbl_80AC7A24
/* 80AC79F8  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC79FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80AC7A00  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AC7A04  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC7A08  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AC7A0C  7D 89 03 A6 */	mtctr r12
/* 80AC7A10  4E 80 04 21 */	bctrl 
/* 80AC7A14  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AC7A18  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AC7A1C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AC7A20  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AC7A24:
/* 80AC7A24  7F A3 EB 78 */	mr r3, r29
/* 80AC7A28  38 80 00 00 */	li r4, 0
/* 80AC7A2C  38 A0 00 01 */	li r5, 1
/* 80AC7A30  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AC7A34  38 C0 00 00 */	li r6, 0
/* 80AC7A38  3C E0 80 AD */	lis r7, lit_4247@ha /* 0x80AC92C0@ha */
/* 80AC7A3C  C0 47 92 C0 */	lfs f2, lit_4247@l(r7)  /* 0x80AC92C0@l */
/* 80AC7A40  38 E0 00 00 */	li r7, 0
/* 80AC7A44  39 00 00 00 */	li r8, 0
/* 80AC7A48  39 20 00 00 */	li r9, 0
/* 80AC7A4C  4B 68 0E 21 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AC7A50  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC7A54  4B 89 A7 D5 */	bl _restgpr_29
/* 80AC7A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC7A5C  7C 08 03 A6 */	mtlr r0
/* 80AC7A60  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC7A64  4E 80 00 20 */	blr 
